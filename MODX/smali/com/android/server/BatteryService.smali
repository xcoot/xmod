.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTION_ENTER_DESK_MODE:Ljava/lang/String;

.field public static final ACTION_EXIT_DESK_MODE:Ljava/lang/String;

.field public static final ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

.field public static final DUMPSYS_ARGS:[Ljava/lang/String;

.field public static final FEATURE_HICCUP_CONTROL:Z

.field public static final FEATURE_SUPPORTED_DAILY_BOARD:Z

.field public static final FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

.field public static final PACKAGE_DEVICE_CARE:Ljava/lang/String;

.field public static final TAG_SS:Ljava/lang/String;


# instance fields
.field public isVideoCall:Z

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityManagerReady:Z

.field public final mAdaptiveFastChargingOffset:I

.field public mAdaptiveFastChargingSettingsEnable:Z

.field public final mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mAfcDisableSysFs:Ljava/lang/String;

.field public final mAudioModeChangeReceiver:Lcom/android/server/BatteryService$2;

.field public final mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

.field public final mBattSlateModeControlReceiver:Lcom/android/server/BatteryService$5;

.field public final mBatteryChangedConditionCounts:[I

.field public final mBatteryChangedOptions:Landroid/os/Bundle;

.field public mBatteryInputSuspended:Z

.field public mBatteryLevelCritical:Z

.field public mBatteryLevelLow:Z

.field public final mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

.field public mBatteryMaxCurrent:J

.field public mBatteryMaxTemp:J

.field public final mBatteryOptions:Landroid/os/Bundle;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBinderService:Lcom/android/server/BatteryService$BinderService;

.field public mBootCompleted:Z

.field public final mBootCompletedReceiver:Lcom/android/server/BatteryService$2;

.field public final mCallHandler:Lcom/android/server/BatteryService$1;

.field public final mCallHandlerThread:Landroid/os/HandlerThread;

.field public mChargeStartLevel:I

.field public mChargeStartTime:J

.field public final mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mContext:Landroid/content/Context;

.field public final mCriticalBatteryLevel:I

.field public mCurrentCalendar:Ljava/util/Calendar;

.field public final mDexReceiver:Lcom/android/server/BatteryService$2;

.field public mDischargeStartLevel:I

.field public mDischargeStartTime:J

.field public final mEnableIqi:Z

.field public final mFastWirelessAutoModeReceiver:Lcom/android/server/BatteryService$2;

.field public mFullCapacityEnable:Z

.field public final mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

.field public mHealthInfo:Landroid/hardware/health/HealthInfo;

.field public mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

.field public final mHiccupControlReceiver:Lcom/android/server/BatteryService$2;

.field public final mIntentReceiver:Lcom/android/server/BatteryService$2;

.field public mInvalidCharger:I

.field public mIsFirstIntentSended:Z

.field public mIsHiccupPopupShowing:Z

.field public mIsSkipActionBatteryChanged:Z

.field public mIsUnlockedBootCompleted:Z

.field public mIsWirelessTxSupported:Z

.field public mLastBatteryChargeType:I

.field public mLastBatteryCurrentEvent:I

.field public mLastBatteryCurrentNow:I

.field public mLastBatteryCycleCount:I

.field public mLastBatteryEvent:I

.field public mLastBatteryEventWaterInConnector:Z

.field public mLastBatteryHealth:I

.field public mLastBatteryHighVoltageCharger:I

.field public mLastBatteryLevel:I

.field public mLastBatteryLevelChangedSentMs:J

.field public mLastBatteryLevelCritical:Z

.field public mLastBatteryOnline:I

.field public mLastBatteryPowerSharingOnline:Z

.field public mLastBatteryPresent:Z

.field public mLastBatteryStatus:I

.field public mLastBatteryTemperature:I

.field public mLastBatteryVoltage:I

.field public mLastChargingPolicy:I

.field public mLastCharingState:I

.field public mLastDeterioration:I

.field public mLastInvalidCharger:I

.field public mLastLowBatteryWarningLevel:I

.field public mLastMaxChargingCurrent:I

.field public mLastMaxChargingVoltage:I

.field public mLastPlugType:I

.field public mLastSecPlugTypeSummary:I

.field public final mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

.field public mLastTxEventRxConnected:Z

.field public mLastTxEventTxEnabled:Z

.field public mLastWcTxId:I

.field public mLastWirelessBackPackChargingStatus:Z

.field public mLastWirelessChargingStatus:Z

.field public mLastWirelessPinDetected:Z

.field public mLastWirelessPowerSharingExternelEvent:I

.field public mLastWirelessPowerSharingTxEvent:I

.field public mLastchargerPogoOnline:Z

.field public mLatestWirelessChargingMode:I

.field public final mLed:Lcom/android/server/BatteryService$Led;

.field public mLedChargingSettingsEnable:Z

.field public mLedLowBatterySettingsEnable:Z

.field public final mLedSettingsObserver:Lcom/android/server/BatteryService$15;

.field public mLifeExtender:Z

.field public final mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mLock:Ljava/lang/Object;

.field public final mLockBatteryInfoBackUp:Ljava/lang/Object;

.field public mLongBatteryRetryCnt:I

.field public mLowBatteryCloseWarningLevel:I

.field public mLowBatteryWarningLevel:I

.field public mLtcHighSocDuration:I

.field public mLtcHighThreshold:I

.field public mLtcReleaseThreshold:I

.field public mManufactureDate:Ljava/lang/String;

.field public mMaximumProtectionThreshold:I

.field public mMaximumProtectionThresholdObserver:Lcom/android/server/BatteryService$15;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mMultiSbpController:Lcom/android/server/battery/MultiSbpController;

.field public mNotifyWirelessEnabled:Z

.field public mPassThroughSettingsEnable:Z

.field public final mPassThroughSettingsObserver:Lcom/android/server/BatteryService$15;

.field public mPlugType:I

.field public mPogoCondition:I

.field public mPogoDockState:I

.field public final mPowerOptions:Landroid/os/Bundle;

.field public mProtectBatteryMode:I

.field public mProtectionThreshold:I

.field public mRefreshRateModeSetting:I

.field public final mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mRequestOtgChargeBlockReceiver:Lcom/android/server/BatteryService$2;

.field public mRfCalDate:Ljava/lang/String;

.field public final mSaveBatteryMaxCurrentRunnable:Lcom/android/server/BatteryService$16;

.field public final mSaveBatteryMaxTempRunnable:Lcom/android/server/BatteryService$16;

.field public mSavedBatteryMaxCurrent:J

.field public mSavedBatteryMaxTemp:J

.field public mSavedDiffWeek:I

.field public mScreenOn:Z

.field public mSecPlugTypeSummary:I

.field public mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

.field public mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mSentLowBatteryBroadcast:Z

.field public mSequence:I

.field public final mShutdownIfNoPower:Z

.field public final mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

.field public mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

.field public mSleepChargingHandler:Lcom/android/server/BatteryService$1;

.field public mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

.field public final mSuperFastChargingOffset:I

.field public mSuperFastChargingSettingsEnable:Z

.field public final mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

.field public mTxBatteryLimit:I

.field public final mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

.field public final mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

.field public mUpdatesStopped:Z

.field public mWasUsedWirelessFastChargerPreviously:Z

.field public final mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mWcParamOffset:I

.field public mWcTxId:I

.field public final mWirelessFastChargingOffset:I

.field public mWirelessFastChargingSettingsEnable:Z

.field public final mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mWirelessPowerSharingReceiver:Lcom/android/server/BatteryService$2;

.field public final tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public static -$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    const-string v3, "[activateSleepChargingManager]activate:"

    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    sget-object v3, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 24
    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    if-eqz v1, :cond_2

    .line 29
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 31
    if-eqz v1, :cond_0

    .line 33
    const-string v0, "[activateSleepChargingManager]activated multiple times => ignored"

    .line 35
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto/16 :goto_0

    .line 40
    :cond_0
    const-string v1, "[createSleepChargingHandler]"

    .line 42
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Lcom/android/server/BatteryService$1;

    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 50
    move-result-object v2

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-direct {v1, v0, v2, v4}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V

    .line 55
    iput-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Lcom/android/server/BatteryService$1;

    .line 57
    new-instance v6, Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 59
    iget-object v2, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 61
    iget v4, v0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 63
    invoke-direct {v6, v2, v1, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService$1;I)V

    .line 66
    iput-object v6, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 68
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 70
    if-eqz v1, :cond_1

    .line 72
    iget v7, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 74
    iget v8, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 76
    iget-wide v9, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 78
    iget-object v1, v6, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 80
    new-instance v2, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;

    .line 82
    move-object v5, v2

    .line 83
    invoke-direct/range {v5 .. v10}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;IIJ)V

    .line 86
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_1
    new-instance v13, Landroid/content/IntentFilter;

    .line 91
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED"

    .line 97
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "[createSleepChargingDismissReceiver]"

    .line 102
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v12, Lcom/android/server/BatteryService$2;

    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-direct {v12, v0, v1}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 111
    iput-object v12, v0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

    .line 113
    iget-object v11, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 115
    const-string/jumbo v14, "com.samsung.permission.WRITE_SM_DATA"

    .line 118
    const/4 v15, 0x0

    .line 119
    const/16 v16, 0x2

    .line 121
    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

    .line 127
    const/4 v2, 0x0

    .line 128
    if-eqz v1, :cond_3

    .line 130
    iget-object v3, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iput-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

    .line 137
    :cond_3
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 139
    if-eqz v1, :cond_6

    .line 141
    const-string v3, "[SS]SleepChargingManager"

    .line 143
    const-string v4, "[end]"

    .line 145
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v3, "SleepChargingManager end"

    .line 150
    const-string v5, ""

    .line 152
    const-string v6, "/data/log/battery_service/sleep_charging_history"

    .line 154
    invoke-static {v6, v3, v5}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v3, 0x2

    .line 158
    const-string v5, "[Deactivated]"

    .line 160
    invoke-static {v3, v5}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 163
    iget-object v3, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 165
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    const-string v5, "[SS]SleepChargingTimeController"

    .line 170
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v4, 0x1

    .line 174
    iput-boolean v4, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 176
    const/4 v5, 0x0

    .line 177
    invoke-virtual {v3, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateTimeReachedReceiver(Z)V

    .line 180
    invoke-virtual {v3, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->reset(Z)V

    .line 183
    iget-object v3, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 185
    if-eqz v3, :cond_4

    .line 187
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    :cond_4
    iget-object v3, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 192
    if-eqz v3, :cond_5

    .line 194
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 197
    iput-object v2, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 199
    :cond_5
    iput-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 201
    :cond_6
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Lcom/android/server/BatteryService$1;

    .line 203
    if-eqz v1, :cond_7

    .line 205
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    iput-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Lcom/android/server/BatteryService$1;

    .line 210
    :cond_7
    :goto_0
    return-void
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 64

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v10, p3

    .line 7
    const-string v11, "  mSavedBatteryBsoh: "

    .line 9
    const-string v12, "  mSavedBatteryMaxCurrent: "

    .line 11
    const-string v13, "  mSavedBatteryMaxTemp: "

    .line 13
    const-string/jumbo v2, "mBatteryChangedConditionCounts:"

    .line 16
    const-string v3, "  mSavedFullStatusDuration: "

    .line 18
    const-string v4, "  mSavedBatteryUsage: "

    .line 20
    const-string v5, "  BATTERY_HISTORY: "

    .line 22
    const-string v6, "  mSavedBatteryAsoc: "

    .line 24
    const-string v7, "  battery FirstUseDate: "

    .line 26
    const-string v8, "  battery IcAuthenticationResults: "

    .line 28
    const-string v9, "  FEATURE_FULL_BATTERY_CYCLE: "

    .line 30
    const-string v14, "  FEATURE_SAVE_BATTERY_CYCLE: "

    .line 32
    const-string v15, " mLtcReleaseThreshold: "

    .line 34
    move-object/from16 v16, v11

    .line 36
    const-string v11, " mLtcHighSocDuration: "

    .line 38
    move-object/from16 v17, v12

    .line 40
    const-string v12, " mLtcHighThreshold: "

    .line 42
    move-object/from16 v18, v13

    .line 44
    const-string v13, " mMaximumProtectionThreshold: "

    .line 46
    move-object/from16 v19, v2

    .line 48
    const-string v2, " mProtectionThreshold: "

    .line 50
    move-object/from16 v20, v3

    .line 52
    const-string v3, " mProtectBatteryMode: "

    .line 54
    move-object/from16 v21, v4

    .line 56
    const-string v4, "SEC_FEATURE_USE_WIRELESS_POWER_SHARING: "

    .line 58
    move-object/from16 v22, v5

    .line 60
    const-string v5, "SEC_FEATURE_BATTERY_LIFE_EXTENDER: "

    .line 62
    move-object/from16 v23, v6

    .line 64
    const-string v6, "FEATURE_SUPPORTED_DAILY_BOARD: "

    .line 66
    move-object/from16 v24, v7

    .line 68
    const-string v7, "FEATURE_HICCUP_CONTROL: "

    .line 70
    move-object/from16 v25, v8

    .line 72
    const-string v8, "  mFullCapacityEnable: "

    .line 74
    move-object/from16 v26, v9

    .line 76
    const-string v9, "SEC_FEATURE_BATTERY_FULL_CAPACITY: "

    .line 78
    move-object/from16 v27, v14

    .line 80
    const-string v14, "LLB DIFF: "

    .line 82
    move-object/from16 v28, v15

    .line 84
    const-string v15, "LLB CURRENT: YEAR"

    .line 86
    move-object/from16 v29, v11

    .line 88
    const-string v11, "LLB MAN: "

    .line 90
    move-object/from16 v30, v12

    .line 92
    const-string v12, "LLB CAL: "

    .line 94
    move-object/from16 v31, v13

    .line 96
    const-string v13, "  mWirelessFastChargingSettingsEnable: "

    .line 98
    move-object/from16 v32, v2

    .line 100
    const-string v2, "  mWasUsedWirelessFastChargerPreviously: "

    .line 102
    move-object/from16 v33, v3

    .line 104
    const-string v3, "FEATURE_WIRELESS_FAST_CHARGER_CONTROL: "

    .line 106
    move-object/from16 v34, v4

    .line 108
    const-string v4, "  Super Fast Charging Settings: "

    .line 110
    move-object/from16 v35, v5

    .line 112
    const-string v5, "  Adaptive Fast Charging Settings: "

    .line 114
    move-object/from16 v36, v6

    .line 116
    const-string v6, "  charge counter: "

    .line 118
    move-object/from16 v37, v7

    .line 120
    const-string v7, "  current now: "

    .line 122
    move-object/from16 v38, v8

    .line 124
    const-string v8, "  LED Low Battery: "

    .line 126
    move-object/from16 v39, v9

    .line 128
    const-string v9, "  LED Charging: "

    .line 130
    move-object/from16 v40, v14

    .line 132
    const-string v14, "  mSecPlugTypeSummary: "

    .line 134
    move-object/from16 v41, v15

    .line 136
    const-string v15, "  batteryCurrentEvent: "

    .line 138
    move-object/from16 v42, v11

    .line 140
    const-string v11, "  batteryMiscEvent: "

    .line 142
    move-object/from16 v43, v12

    .line 144
    const-string v12, "  Charging policy: "

    .line 146
    move-object/from16 v44, v13

    .line 148
    const-string v13, "  Charging state: "

    .line 150
    move-object/from16 v45, v2

    .line 152
    const-string v2, "  technology: "

    .line 154
    move-object/from16 v46, v3

    .line 156
    const-string v3, "  temperature: "

    .line 158
    move-object/from16 v47, v4

    .line 160
    const-string v4, "  voltage: "

    .line 162
    move-object/from16 v48, v5

    .line 164
    const-string v5, "  level: "

    .line 166
    move-object/from16 v49, v6

    .line 168
    const-string v6, "  present: "

    .line 170
    move-object/from16 v50, v7

    .line 172
    const-string v7, "  health: "

    .line 174
    move-object/from16 v51, v8

    .line 176
    const-string v8, "  status: "

    .line 178
    move-object/from16 v52, v9

    .line 180
    const-string v9, "  Charge counter: "

    .line 182
    move-object/from16 v53, v14

    .line 184
    const-string v14, "  Max charging voltage: "

    .line 186
    move-object/from16 v54, v15

    .line 188
    const-string v15, "  Max charging current: "

    .line 190
    move-object/from16 v55, v11

    .line 192
    const-string v11, "  Dock powered: "

    .line 194
    move-object/from16 v56, v12

    .line 196
    const-string v12, "  Wireless powered: "

    .line 198
    move-object/from16 v57, v13

    .line 200
    const-string v13, "  USB powered: "

    .line 202
    move-object/from16 v58, v2

    .line 204
    const-string v2, "  AC powered: "

    .line 206
    move-object/from16 v59, v8

    .line 208
    iget-object v8, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 210
    monitor-enter v8

    .line 211
    move-object/from16 v60, v3

    .line 213
    move-object/from16 v61, v8

    .line 215
    const/16 v62, 0x0

    .line 217
    if-eqz v10, :cond_1

    .line 219
    :try_start_0
    array-length v8, v10

    .line 220
    if-eqz v8, :cond_1

    .line 222
    const-string v8, "-a"

    .line 224
    aget-object v3, v10, v62

    .line 226
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_0

    .line 232
    const/4 v3, 0x1

    .line 233
    goto :goto_0

    .line 234
    :cond_0
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    .line 236
    invoke-direct {v2, v0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 239
    iget-object v3, v0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 241
    new-instance v9, Landroid/os/ResultReceiver;

    .line 243
    const/4 v8, 0x0

    .line 244
    invoke-direct {v9, v8}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 247
    const/4 v8, 0x0

    .line 248
    const/4 v4, 0x0

    .line 249
    const/4 v6, 0x0

    .line 250
    move-object/from16 v5, p1

    .line 252
    move-object/from16 v7, p3

    .line 254
    const/4 v11, 0x1

    .line 255
    invoke-virtual/range {v2 .. v9}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 258
    move v3, v11

    .line 259
    goto/16 :goto_5

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    goto/16 :goto_8

    .line 264
    :cond_1
    const/4 v3, 0x1

    .line 265
    const/4 v8, 0x0

    .line 266
    :goto_0
    const-string v8, "Current Battery Service state:"

    .line 268
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    iget-boolean v8, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 273
    if-eqz v8, :cond_2

    .line 275
    const-string v8, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    .line 277
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 282
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 287
    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 289
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    .line 301
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 306
    iget-boolean v8, v8, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 308
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 325
    iget-boolean v8, v8, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 327
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    .line 339
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 344
    iget-boolean v8, v8, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 346
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 363
    iget v8, v8, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 365
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object v2

    .line 372
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    .line 377
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 382
    iget v8, v8, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 384
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    move-result-object v2

    .line 391
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    .line 396
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 401
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 403
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    .line 415
    move-object/from16 v8, v59

    .line 417
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 422
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 424
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    .line 436
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    iget-object v7, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 441
    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 443
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    .line 455
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 460
    iget-boolean v6, v6, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 462
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    .line 474
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 479
    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 481
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    const-string v2, "  scale: 100"

    .line 493
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    .line 498
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 503
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 505
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    .line 517
    move-object/from16 v4, v60

    .line 519
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 524
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 526
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    .line 538
    move-object/from16 v4, v58

    .line 540
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 545
    iget-object v4, v4, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 547
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    move-result-object v2

    .line 554
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    .line 559
    move-object/from16 v4, v57

    .line 561
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 566
    iget v4, v4, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 568
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    .line 580
    move-object/from16 v4, v56

    .line 582
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 587
    iget v4, v4, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    .line 589
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    move-result-object v2

    .line 596
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    .line 601
    move-object/from16 v4, v55

    .line 603
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    iget-object v4, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 608
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 610
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    move-result-object v2

    .line 617
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    .line 622
    move-object/from16 v4, v54

    .line 624
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    iget-object v4, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 629
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 631
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    move-result-object v2

    .line 638
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    .line 643
    move-object/from16 v4, v53

    .line 645
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    iget v4, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 650
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    move-result-object v2

    .line 657
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    .line 662
    move-object/from16 v4, v52

    .line 664
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 669
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    move-result-object v2

    .line 676
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    .line 681
    move-object/from16 v4, v51

    .line 683
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 688
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    move-result-object v2

    .line 695
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    iget-object v2, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 700
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 702
    const/high16 v4, -0x80000000

    .line 704
    if-eq v2, v4, :cond_3

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    .line 708
    move-object/from16 v5, v50

    .line 710
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 713
    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 715
    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 717
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    move-result-object v2

    .line 724
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    :cond_3
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 729
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 731
    if-eq v2, v4, :cond_4

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    .line 735
    move-object/from16 v4, v49

    .line 737
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 742
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 744
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 750
    move-result-object v2

    .line 751
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 756
    move-object/from16 v4, v48

    .line 758
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 761
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 763
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    move-result-object v2

    .line 770
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    .line 775
    move-object/from16 v4, v47

    .line 777
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 780
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    .line 782
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    move-result-object v2

    .line 789
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    .line 794
    move-object/from16 v4, v46

    .line 796
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 799
    sget-boolean v4, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    .line 801
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 807
    move-result-object v2

    .line 808
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    .line 813
    move-object/from16 v4, v45

    .line 815
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 818
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 820
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    move-result-object v2

    .line 827
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    .line 832
    move-object/from16 v4, v44

    .line 834
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 837
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 839
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 845
    move-result-object v2

    .line 846
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    .line 851
    move-object/from16 v4, v43

    .line 853
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 856
    iget-object v4, v0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 858
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    move-result-object v2

    .line 865
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    .line 870
    move-object/from16 v4, v42

    .line 872
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 875
    iget-object v4, v0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 877
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 883
    move-result-object v2

    .line 884
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    iget-object v2, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 889
    if-eqz v2, :cond_5

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    .line 893
    move-object/from16 v4, v41

    .line 895
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 898
    iget-object v4, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 900
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    .line 903
    move-result v4

    .line 904
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 907
    const-string v4, "M"

    .line 909
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    iget-object v4, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 914
    const/4 v5, 0x2

    .line 915
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 918
    move-result v4

    .line 919
    add-int/2addr v4, v3

    .line 920
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 923
    const-string v4, "D"

    .line 925
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    iget-object v4, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 930
    const/4 v5, 0x5

    .line 931
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 934
    move-result v4

    .line 935
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 941
    move-result-object v2

    .line 942
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    .line 947
    move-object/from16 v4, v40

    .line 949
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 952
    iget v4, v0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 954
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 960
    move-result-object v2

    .line 961
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 966
    move-object/from16 v4, v39

    .line 968
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    .line 973
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 979
    move-result-object v2

    .line 980
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    .line 985
    move-object/from16 v4, v38

    .line 987
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 992
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    move-result-object v2

    .line 999
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1004
    move-object/from16 v4, v37

    .line 1006
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1009
    sget-boolean v4, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 1011
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1017
    move-result-object v2

    .line 1018
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1023
    move-object/from16 v4, v36

    .line 1025
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1028
    sget-boolean v4, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    .line 1030
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1036
    move-result-object v2

    .line 1037
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1042
    move-object/from16 v4, v35

    .line 1044
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1047
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    .line 1049
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1052
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1055
    move-result-object v2

    .line 1056
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1061
    move-object/from16 v4, v34

    .line 1063
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1066
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 1068
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1074
    move-result-object v2

    .line 1075
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    sget-boolean v2, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 1080
    if-eqz v2, :cond_7

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1084
    move-object/from16 v4, v33

    .line 1086
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1089
    iget v4, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 1091
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1094
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1097
    move-result-object v2

    .line 1098
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1103
    move-object/from16 v4, v32

    .line 1105
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    iget v4, v0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 1110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1116
    move-result-object v2

    .line 1117
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1122
    move-object/from16 v4, v31

    .line 1124
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1127
    iget v4, v0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 1129
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1135
    move-result-object v2

    .line 1136
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1141
    move-object/from16 v4, v30

    .line 1143
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1146
    iget v4, v0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    .line 1148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1154
    move-result-object v2

    .line 1155
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1160
    move-object/from16 v4, v29

    .line 1162
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1165
    iget v4, v0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    .line 1167
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1173
    move-result-object v2

    .line 1174
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1179
    move-object/from16 v4, v28

    .line 1181
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1184
    iget v4, v0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    .line 1186
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    move-result-object v2

    .line 1193
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    iget-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 1198
    if-eqz v2, :cond_6

    .line 1200
    const-string v2, "[Battery Adaptive Protect Mode]"

    .line 1202
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1205
    iget-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 1207
    invoke-virtual {v2, v3}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    .line 1210
    move-result-object v2

    .line 1211
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1214
    goto :goto_1

    .line 1215
    :cond_6
    const-string v2, "[Not Battery Adaptive Protect Mode]"

    .line 1217
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1220
    :cond_7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1222
    move-object/from16 v4, v27

    .line 1224
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1227
    sget-boolean v4, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 1229
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1235
    move-result-object v2

    .line 1236
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1241
    move-object/from16 v4, v26

    .line 1243
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1246
    sget-boolean v4, Lcom/android/server/battery/BattFeatures;->FEATURE_FULL_BATTERY_CYCLE:Z

    .line 1248
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1254
    move-result-object v2

    .line 1255
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1260
    move-object/from16 v4, v25

    .line 1262
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1265
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1267
    invoke-virtual {v4}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getIcAuthenticationResults()[Z

    .line 1270
    move-result-object v4

    .line 1271
    invoke-static {v4}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 1274
    move-result-object v4

    .line 1275
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1281
    move-result-object v2

    .line 1282
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1287
    move-object/from16 v4, v24

    .line 1289
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1292
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1294
    iget-boolean v5, v4, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 1296
    if-nez v5, :cond_8

    .line 1298
    const-string v4, "[SS][BattInfo]BattInfoManager"

    .line 1300
    const-string v5, "[getFirstUseDate]InitFinished False"

    .line 1302
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/16 v63, 0x0

    .line 1307
    goto :goto_2

    .line 1308
    :cond_8
    iget-object v4, v4, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 1310
    invoke-virtual {v4}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 1313
    move-result-object v4

    .line 1314
    check-cast v4, [Ljava/lang/String;

    .line 1316
    move-object/from16 v63, v4

    .line 1318
    :goto_2
    invoke-static/range {v63 .. v63}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 1321
    move-result-object v4

    .line 1322
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1328
    move-result-object v2

    .line 1329
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    iget-object v2, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1334
    iget-boolean v2, v2, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    .line 1336
    if-eqz v2, :cond_9

    .line 1338
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1340
    move-object/from16 v4, v23

    .line 1342
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1345
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1347
    invoke-virtual {v4}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getAsocValue()[J

    .line 1350
    move-result-object v4

    .line 1351
    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 1354
    move-result-object v4

    .line 1355
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1361
    move-result-object v2

    .line 1362
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    const-string v2, "/efs/FactoryApp/batt_hist"

    .line 1367
    invoke-static {v2}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 1370
    move-result v2

    .line 1371
    if-eqz v2, :cond_a

    .line 1373
    const-string v2, "/efs/FactoryApp/batt_hist"

    .line 1375
    invoke-static {v2, v3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1378
    move-result-object v2

    .line 1379
    move-object/from16 v4, v22

    .line 1381
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    move-result-object v2

    .line 1385
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    goto :goto_3

    .line 1389
    :cond_9
    const-string v2, "  mSavedBatteryAsoc: unsupported"

    .line 1391
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    :cond_a
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1396
    move-object/from16 v4, v21

    .line 1398
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1401
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1403
    invoke-virtual {v4}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getDischargeLevel()[J

    .line 1406
    move-result-object v4

    .line 1407
    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 1410
    move-result-object v4

    .line 1411
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1417
    move-result-object v2

    .line 1418
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    iget-object v2, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1423
    iget-boolean v2, v2, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 1425
    if-eqz v2, :cond_b

    .line 1427
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1429
    move-object/from16 v4, v20

    .line 1431
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1434
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1436
    invoke-virtual {v4}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getFullStatusUsage()[J

    .line 1439
    move-result-object v4

    .line 1440
    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 1443
    move-result-object v4

    .line 1444
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1450
    move-result-object v2

    .line 1451
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    goto :goto_4

    .line 1455
    :cond_b
    const-string v2, "  mSavedFullStatusDuration: unsupported"

    .line 1457
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    :goto_4
    const-string v2, ""

    .line 1462
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    invoke-static {}, Lcom/android/server/battery/BattLogBuffer;->getAllLogs()Ljava/lang/String;

    .line 1468
    move-result-object v2

    .line 1469
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1474
    move-object/from16 v4, v19

    .line 1476
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1479
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryChangedConditionCounts:[I

    .line 1481
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 1484
    move-result-object v4

    .line 1485
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1491
    move-result-object v2

    .line 1492
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    :goto_5
    monitor-exit v61
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    iget-object v2, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 1498
    monitor-enter v2

    .line 1499
    if-eqz v10, :cond_c

    .line 1501
    :try_start_1
    array-length v4, v10

    .line 1502
    if-eqz v4, :cond_c

    .line 1504
    const-string v4, "-a"

    .line 1506
    aget-object v5, v10, v62

    .line 1508
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1511
    move-result v4

    .line 1512
    if-eqz v4, :cond_d

    .line 1514
    goto :goto_6

    .line 1515
    :catchall_1
    move-exception v0

    .line 1516
    goto :goto_7

    .line 1517
    :cond_c
    :goto_6
    const-string v4, "BatteryInfoBackUp"

    .line 1519
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1524
    move-object/from16 v5, v18

    .line 1526
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1529
    iget-wide v5, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 1531
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1534
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1537
    move-result-object v4

    .line 1538
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1541
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1543
    move-object/from16 v5, v17

    .line 1545
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1548
    iget-wide v5, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 1550
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1553
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1556
    move-result-object v0

    .line 1557
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    const-string v0, "/efs/FactoryApp/bsoh"

    .line 1562
    invoke-static {v0, v3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1565
    move-result-object v0

    .line 1566
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1569
    move-result v3

    .line 1570
    if-nez v3, :cond_d

    .line 1572
    move-object/from16 v3, v16

    .line 1574
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1577
    move-result-object v0

    .line 1578
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    :cond_d
    monitor-exit v2

    .line 1582
    return-void

    .line 1583
    :goto_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1584
    throw v0

    .line 1585
    :goto_8
    :try_start_2
    monitor-exit v61
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1586
    throw v0
.end method

.method public static -$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "BatteryService"

    .line 5
    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    .line 14
    move-result p1

    .line 15
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v3, "isVideoCall: "

    .line 22
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v3, "call start, isVideoCall: "

    .line 42
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 47
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 59
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0, v1, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v3, "call end, isVideoCall: "

    .line 74
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 79
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 91
    const/4 v2, 0x0

    .line 92
    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p0, v1, v2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 101
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 103
    :goto_1
    return-void
.end method

.method public static -$$Nest$msetSleepCharging(Lcom/android/server/BatteryService;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "[setSleepCharging]on:"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 20
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v0, "/sys/class/power_supply/battery/batt_full_capacity"

    .line 25
    if-eqz p1, :cond_0

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    iget p0, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string p0, " SLEEP"

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-wide/16 p0, 0x64

    .line 52
    invoke-static {p0, p1, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 55
    :goto_0
    return-void
.end method

.method public static -$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "sendBroadcastToExplicitPackage: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " -> "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "BatteryService"

    .line 26
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/content/Intent;

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 43
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "[SS]"

    .line 3
    const-string v1, "BatteryService"

    .line 5
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 11
    const-string v0, "--checkin"

    .line 13
    const-string v1, "--unplugged"

    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    .line 21
    const-string v0, "/sys/class/sec/switch/afc_disable"

    .line 23
    const-string/jumbo v1, "sys/class/sec/afc/afc_disable"

    .line 26
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    .line 32
    const-string v0, "/sys/class/sec/switch/hiccup"

    .line 34
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 38
    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 40
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 43
    move-result-object v0

    .line 44
    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 46
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    .line 55
    sput-object v0, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    .line 60
    sput-object v0, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 65
    move-result-object v0

    .line 66
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DAILYBOARD"

    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    if-nez v0, :cond_0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    const-string v2, ","

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    array-length v2, v0

    .line 86
    move v3, v1

    .line 87
    :goto_0
    if-ge v3, v2, :cond_3

    .line 89
    aget-object v4, v0, v3

    .line 91
    const-string v5, "TA"

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_2

    .line 99
    const/4 v1, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    :goto_1
    sput-boolean v1, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    .line 106
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    .line 108
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    .line 111
    move-result v0

    .line 112
    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v9, 0x0

    .line 9
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 11
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 13
    new-instance v1, Ljava/lang/Object;

    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 20
    new-instance v1, Ljava/lang/Object;

    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 27
    new-instance v1, Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 29
    invoke-direct {v1}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    .line 32
    iput-object v1, v0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 34
    const/4 v10, 0x1

    .line 35
    iput v10, v0, Lcom/android/server/BatteryService;->mSequence:I

    .line 37
    const/4 v11, -0x1

    .line 38
    iput v11, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 40
    iput v11, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 42
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 44
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 46
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 49
    iput-object v1, v0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 51
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v10}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 58
    move-result-object v1

    .line 59
    const/4 v12, 0x2

    .line 60
    invoke-virtual {v1, v12}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryChangedOptions:Landroid/os/Bundle;

    .line 70
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v10}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 77
    move-result-object v1

    .line 78
    const-string v2, "android"

    .line 80
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1, v12}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 93
    move-result-object v1

    .line 94
    iput-object v1, v0, Lcom/android/server/BatteryService;->mPowerOptions:Landroid/os/Bundle;

    .line 96
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, v10}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 103
    move-result-object v1

    .line 104
    const-string v3, "android.intent.action.BATTERY_OKAY"

    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v12}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 117
    move-result-object v1

    .line 118
    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryOptions:Landroid/os/Bundle;

    .line 120
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 122
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    .line 124
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 126
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 128
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 130
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 132
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 134
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 136
    iput v9, v0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 138
    iput v9, v0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 140
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 142
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 144
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 146
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    .line 148
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 150
    const-wide/16 v1, -0x1

    .line 152
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 154
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 156
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 158
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 160
    iput v9, v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 162
    iput v11, v0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 164
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 166
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 168
    iput v9, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 170
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 172
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 174
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 176
    const/4 v3, 0x0

    .line 177
    iput-object v3, v0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 179
    iput v9, v0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 181
    iput v9, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 183
    iput v11, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 185
    sget v4, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    .line 187
    iput v4, v0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 189
    iput v4, v0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 191
    const/16 v4, 0x16

    .line 193
    new-array v4, v4, [I

    .line 195
    iput-object v4, v0, Lcom/android/server/BatteryService;->mBatteryChangedConditionCounts:[I

    .line 197
    new-instance v4, Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 199
    invoke-direct {v4, v0}, Lcom/android/server/BatteryService$BattCallbackImpl;-><init>(Lcom/android/server/BatteryService;)V

    .line 202
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 204
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 206
    new-instance v5, Lcom/android/server/BatteryService$2;

    .line 208
    const/4 v6, 0x3

    .line 209
    invoke-direct {v5, v0, v6}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 212
    new-instance v6, Lcom/android/server/BatteryService$2;

    .line 214
    const/4 v7, 0x4

    .line 215
    invoke-direct {v6, v0, v7}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 218
    new-instance v7, Lcom/android/server/BatteryService$5;

    .line 220
    invoke-direct {v7}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 223
    new-instance v13, Lcom/android/server/BatteryService$2;

    .line 225
    const/4 v14, 0x5

    .line 226
    invoke-direct {v13, v0, v14}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 229
    new-instance v14, Lcom/android/server/BatteryService$2;

    .line 231
    const/4 v15, 0x6

    .line 232
    invoke-direct {v14, v0, v15}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 235
    new-instance v15, Lcom/android/server/BatteryService$2;

    .line 237
    const/4 v3, 0x7

    .line 238
    invoke-direct {v15, v0, v3}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 241
    new-instance v3, Lcom/android/server/BatteryService$2;

    .line 243
    const/16 v11, 0x8

    .line 245
    invoke-direct {v3, v0, v11}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 248
    new-instance v11, Lcom/android/server/BatteryService$2;

    .line 250
    const/4 v1, 0x1

    .line 251
    invoke-direct {v11, v0, v1}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 254
    new-instance v2, Lcom/android/server/BatteryService$2;

    .line 256
    const/4 v1, 0x2

    .line 257
    invoke-direct {v2, v0, v1}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 260
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 262
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 264
    iput v9, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 266
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 268
    const/4 v9, 0x4

    .line 269
    invoke-direct {v1, v0, v9}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 272
    iput-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Lcom/android/server/BatteryService$16;

    .line 274
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 276
    const/4 v9, 0x5

    .line 277
    invoke-direct {v1, v0, v9}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 280
    iput-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Lcom/android/server/BatteryService$16;

    .line 282
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 284
    const/4 v9, 0x6

    .line 285
    invoke-direct {v1, v0, v9}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 288
    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    .line 290
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 292
    const/4 v9, 0x7

    .line 293
    invoke-direct {v1, v0, v9}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 296
    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

    .line 298
    iput-object v8, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 300
    new-instance v1, Landroid/os/Handler;

    .line 302
    invoke-direct {v1, v10}, Landroid/os/Handler;-><init>(Z)V

    .line 305
    iput-object v1, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 307
    new-instance v9, Landroid/os/Handler;

    .line 309
    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Z)V

    .line 312
    iput-object v9, v0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 314
    new-instance v9, Lcom/android/server/BatteryService$Led;

    .line 316
    const-class v10, Lcom/android/server/lights/LightsManager;

    .line 318
    invoke-virtual {v0, v10}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 321
    move-result-object v10

    .line 322
    check-cast v10, Lcom/android/server/lights/LightsManager;

    .line 324
    invoke-direct {v9, v0, v8, v10}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    .line 327
    iput-object v9, v0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 329
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    .line 332
    move-result-object v9

    .line 333
    iput-object v9, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 335
    const-class v9, Landroid/app/ActivityManagerInternal;

    .line 337
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 340
    move-result-object v9

    .line 341
    check-cast v9, Landroid/app/ActivityManagerInternal;

    .line 343
    iput-object v9, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 348
    move-result-object v9

    .line 349
    const v10, 0x10e005e

    .line 352
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    .line 355
    move-result v9

    .line 356
    iput v9, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 361
    move-result-object v9

    .line 362
    const v10, 0x10e00d5

    .line 365
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    .line 368
    move-result v9

    .line 369
    iput v9, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 374
    move-result-object v10

    .line 375
    const v12, 0x10e00d4

    .line 378
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getInteger(I)I

    .line 381
    move-result v10

    .line 382
    add-int/2addr v10, v9

    .line 383
    iput v10, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 388
    move-result-object v9

    .line 389
    const v10, 0x10e014e

    .line 392
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 398
    move-result-object v9

    .line 399
    const v10, 0x111022b

    .line 402
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 405
    move-result v9

    .line 406
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mShutdownIfNoPower:Z

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 411
    move-result-object v9

    .line 412
    const v10, 0x104003a

    .line 415
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 418
    new-instance v9, Ljava/util/ArrayDeque;

    .line 420
    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 423
    iput-object v9, v0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 425
    new-instance v9, Lcom/android/internal/logging/MetricsLogger;

    .line 427
    invoke-direct {v9}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 430
    iput-object v9, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 432
    const-string v9, "/data/log/battery_service/sleep_charging_history"

    .line 434
    invoke-static {v9}, Lcom/android/server/battery/BatteryLogger;->renameForBackupIfExeedsSize(Ljava/lang/String;)V

    .line 437
    const-string v10, "/data/log/battery_service/battery_service_main_history"

    .line 439
    invoke-static {v10}, Lcom/android/server/battery/BatteryLogger;->renameForBackupIfExeedsSize(Ljava/lang/String;)V

    .line 442
    new-instance v10, Lcom/android/server/BatteryService$15;

    .line 444
    const/4 v12, 0x3

    .line 445
    invoke-direct {v10, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 448
    iput-object v10, v0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 450
    new-instance v10, Lcom/android/server/BatteryService$15;

    .line 452
    const/4 v12, 0x1

    .line 453
    invoke-direct {v10, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 456
    iput-object v10, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 458
    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    .line 460
    if-eqz v10, :cond_0

    .line 462
    new-instance v10, Lcom/android/server/BatteryService$15;

    .line 464
    const/16 v12, 0x8

    .line 466
    invoke-direct {v10, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 469
    iput-object v10, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 471
    :cond_0
    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    .line 473
    if-eqz v10, :cond_1

    .line 475
    new-instance v10, Lcom/android/server/BatteryService$15;

    .line 477
    const/4 v12, 0x6

    .line 478
    invoke-direct {v10, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 481
    iput-object v10, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 483
    :cond_1
    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    .line 485
    if-eqz v10, :cond_2

    .line 487
    new-instance v12, Lcom/android/server/BatteryService$15;

    .line 489
    move-object/from16 v19, v2

    .line 491
    const/16 v2, 0xb

    .line 493
    invoke-direct {v12, v0, v2}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 496
    iput-object v12, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 498
    sget-boolean v2, Lcom/android/server/battery/BattFeatures;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    .line 500
    if-eqz v2, :cond_3

    .line 502
    new-instance v2, Lcom/android/server/BatteryService$15;

    .line 504
    const/4 v12, 0x7

    .line 505
    invoke-direct {v2, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 508
    iput-object v2, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 510
    goto :goto_0

    .line 511
    :cond_2
    move-object/from16 v19, v2

    .line 513
    :cond_3
    :goto_0
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    .line 515
    if-eqz v2, :cond_4

    .line 517
    new-instance v2, Lcom/android/server/BatteryService$15;

    .line 519
    const/4 v12, 0x4

    .line 520
    invoke-direct {v2, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 523
    iput-object v2, v0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 525
    :cond_4
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    .line 527
    if-nez v2, :cond_5

    .line 529
    sget-boolean v2, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 531
    if-eqz v2, :cond_6

    .line 533
    :cond_5
    new-instance v2, Lcom/android/server/BatteryService$15;

    .line 535
    const/4 v12, 0x2

    .line 536
    invoke-direct {v2, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 539
    iput-object v2, v0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 541
    :cond_6
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 543
    if-eqz v12, :cond_7

    .line 545
    new-instance v2, Lcom/android/server/BatteryService$15;

    .line 547
    move-object/from16 v20, v3

    .line 549
    const/16 v3, 0x9

    .line 551
    invoke-direct {v2, v0, v3}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 554
    iput-object v2, v0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 556
    goto :goto_1

    .line 557
    :cond_7
    move-object/from16 v20, v3

    .line 559
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    .line 561
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 563
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 566
    const/4 v3, 0x2

    .line 567
    invoke-virtual {v8, v5, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 570
    new-instance v2, Landroid/content/IntentFilter;

    .line 572
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 575
    const-string v5, "android.intent.action.SCREEN_ON"

    .line 577
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    const-string v5, "android.intent.action.SCREEN_OFF"

    .line 582
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    const-string v5, "android.intent.action.USER_SWITCHED"

    .line 587
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    .line 592
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v8, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 598
    new-instance v2, Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 600
    invoke-direct {v2, v8}, Lcom/android/server/battery/batteryInfo/BattInfoManager;-><init>(Landroid/content/Context;)V

    .line 603
    iput-object v2, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 605
    const-string v3, "/efs/FactoryApp/max_current"

    .line 607
    invoke-static {v3}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 610
    move-result-wide v5

    .line 611
    const-wide/16 v21, 0x0

    .line 613
    cmp-long v23, v5, v21

    .line 615
    if-gez v23, :cond_8

    .line 617
    const-wide/16 v5, -0x1

    .line 619
    invoke-static {v5, v6, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 622
    goto :goto_2

    .line 623
    :cond_8
    move-wide/from16 v23, v5

    .line 625
    :goto_2
    iput-wide v5, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 627
    const-string v3, "/efs/FactoryApp/max_temp"

    .line 629
    invoke-static {v3}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 632
    move-result-wide v5

    .line 633
    cmp-long v21, v5, v21

    .line 635
    if-gez v21, :cond_9

    .line 637
    const-wide/16 v5, -0x1

    .line 639
    invoke-static {v5, v6, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 642
    goto :goto_3

    .line 643
    :cond_9
    move-wide/from16 v21, v5

    .line 645
    :goto_3
    iput-wide v5, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 647
    const/4 v3, 0x4

    .line 648
    iget v2, v2, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 650
    if-ne v2, v3, :cond_a

    .line 652
    new-instance v3, Lcom/android/server/battery/MultiSbpController;

    .line 654
    invoke-direct {v3, v8, v1, v4}, Lcom/android/server/battery/MultiSbpController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/BatteryService$BattCallbackImpl;)V

    .line 657
    goto :goto_4

    .line 658
    :cond_a
    const/4 v3, 0x0

    .line 659
    :goto_4
    iput-object v3, v0, Lcom/android/server/BatteryService;->mMultiSbpController:Lcom/android/server/battery/MultiSbpController;

    .line 661
    sget-object v1, Lcom/android/server/battery/BattHqmManager;->mHqmEventReceiver:Lcom/android/server/battery/BattHqmManager$1;

    .line 663
    if-eqz v1, :cond_b

    .line 665
    const-string v1, "[SS]BattHqmManager"

    .line 667
    const-string v2, "[hqmEventReceiver_onReceive]warn - mHqmEventReceiver already registered"

    .line 669
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    goto :goto_5

    .line 673
    :cond_b
    new-instance v1, Lcom/android/server/battery/BattHqmManager$1;

    .line 675
    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 678
    sput-object v1, Lcom/android/server/battery/BattHqmManager;->mHqmEventReceiver:Lcom/android/server/battery/BattHqmManager$1;

    .line 680
    new-instance v2, Landroid/content/IntentFilter;

    .line 682
    const-string/jumbo v3, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 685
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 688
    const/4 v3, 0x2

    .line 689
    invoke-virtual {v8, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 692
    :goto_5
    sput-object v4, Lcom/android/server/battery/BattHqmManager;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 694
    const-string v1, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    .line 696
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 699
    move-result-object v3

    .line 700
    const/4 v6, 0x2

    .line 701
    const-string/jumbo v4, "com.sec.permission.OTG_CHARGE_BLOCK"

    .line 704
    const/4 v5, 0x0

    .line 705
    move-object/from16 v1, p1

    .line 707
    move-object/from16 v16, v19

    .line 709
    move-object v2, v13

    .line 710
    move-object/from16 v13, v20

    .line 712
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 715
    const-string/jumbo v1, "com.sec.intent.action.BATT_SLATE_MODE_CHANGE"

    .line 718
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 721
    move-result-object v4

    .line 722
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 724
    const/16 v18, 0x2

    .line 726
    const-string/jumbo v5, "com.sec.permission.OTG_CHARGE_BLOCK"

    .line 729
    const/4 v6, 0x0

    .line 730
    move-object/from16 v1, p1

    .line 732
    move-object v2, v7

    .line 733
    move-object/from16 v3, v17

    .line 735
    move/from16 v7, v18

    .line 737
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 740
    sget-boolean v1, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 742
    if-eqz v1, :cond_c

    .line 744
    new-instance v1, Landroid/content/IntentFilter;

    .line 746
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 749
    const-string/jumbo v2, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    .line 752
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    const-string/jumbo v2, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    .line 758
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    const/4 v2, 0x2

    .line 762
    invoke-virtual {v8, v14, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 765
    :cond_c
    if-eqz v12, :cond_d

    .line 767
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    .line 770
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 773
    move-result-object v4

    .line 774
    const/4 v7, 0x2

    .line 775
    const-string/jumbo v5, "com.samsung.android.permission.wirelesspowersharing"

    .line 778
    const/4 v6, 0x0

    .line 779
    move-object/from16 v1, p1

    .line 781
    move-object v2, v15

    .line 782
    move-object/from16 v3, v17

    .line 784
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 787
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    .line 789
    if-eqz v1, :cond_d

    .line 791
    new-instance v4, Landroid/content/IntentFilter;

    .line 793
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 796
    sget-object v1, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 798
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    sget-object v1, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 803
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const/4 v7, 0x2

    .line 807
    const/4 v5, 0x0

    .line 808
    const/4 v6, 0x0

    .line 809
    move-object/from16 v1, p1

    .line 811
    move-object v2, v13

    .line 812
    move-object/from16 v3, v17

    .line 814
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 817
    :cond_d
    if-eqz v10, :cond_e

    .line 819
    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    .line 821
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 824
    move-result-object v4

    .line 825
    const/4 v7, 0x2

    .line 826
    const/4 v5, 0x0

    .line 827
    const/4 v6, 0x0

    .line 828
    move-object/from16 v1, p1

    .line 830
    move-object v2, v11

    .line 831
    move-object/from16 v3, v17

    .line 833
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 836
    const-string/jumbo v1, "phone"

    .line 839
    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 842
    move-result-object v1

    .line 843
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 845
    iput-object v1, v0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    .line 847
    new-instance v1, Landroid/os/HandlerThread;

    .line 849
    const-string v2, "CallThread"

    .line 851
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 854
    iput-object v1, v0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    .line 856
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 859
    new-instance v1, Lcom/android/server/BatteryService$1;

    .line 861
    iget-object v2, v0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    .line 863
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 866
    move-result-object v2

    .line 867
    const/4 v3, 0x1

    .line 868
    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V

    .line 871
    iput-object v1, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 873
    :cond_e
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

    .line 875
    if-eqz v1, :cond_f

    .line 877
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL"

    .line 880
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 883
    move-result-object v4

    .line 884
    const/4 v7, 0x2

    .line 885
    const-string/jumbo v5, "com.samsung.android.permission.FAST_WIRELESS_CHARGING_CONTROL"

    .line 888
    const/4 v6, 0x0

    .line 889
    move-object/from16 v1, p1

    .line 891
    move-object/from16 v2, v16

    .line 893
    move-object/from16 v3, v17

    .line 895
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 898
    :cond_f
    const-string v1, "/sys/devices/virtual/switch/invalid_charger/state"

    .line 900
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 903
    move-result v1

    .line 904
    if-eqz v1, :cond_10

    .line 906
    new-instance v1, Lcom/android/server/BatteryService$13;

    .line 908
    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;)V

    .line 911
    const-string v2, "DEVPATH=/devices/virtual/switch/invalid_charger"

    .line 913
    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 916
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 919
    move-result-object v1

    .line 920
    if-eqz v1, :cond_11

    .line 922
    const-string v2, "att.devicehealth.support"

    .line 924
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 927
    move-result v1

    .line 928
    if-eqz v1, :cond_11

    .line 930
    const/4 v1, 0x1

    .line 931
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 933
    :cond_11
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    .line 935
    if-eqz v1, :cond_13

    .line 937
    sget-object v1, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    .line 939
    const/4 v2, 0x0

    .line 940
    aget-object v3, v1, v2

    .line 942
    invoke-static {v3}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    .line 945
    move-result v3

    .line 946
    if-eqz v3, :cond_12

    .line 948
    aget-object v1, v1, v2

    .line 950
    goto :goto_6

    .line 951
    :cond_12
    const/4 v2, 0x1

    .line 952
    aget-object v1, v1, v2

    .line 954
    :goto_6
    iput-object v1, v0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    .line 958
    const-string v3, "!@ mAfcDisableSysFs : "

    .line 960
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 969
    move-result-object v1

    .line 970
    const-string v2, "BatteryService"

    .line 972
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_13
    const-string/jumbo v1, "ro.boot.cm.param.offset"

    .line 978
    const/4 v2, -0x1

    .line 979
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 982
    move-result v1

    .line 983
    iput v1, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    .line 985
    if-eq v1, v2, :cond_14

    .line 987
    const/4 v3, 0x1

    .line 988
    add-int/2addr v1, v3

    .line 989
    goto :goto_7

    .line 990
    :cond_14
    move v1, v2

    .line 991
    :goto_7
    iput v1, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    .line 993
    const-string/jumbo v1, "ro.boot.pd.param.offset"

    .line 996
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 999
    move-result v1

    .line 1000
    iput v1, v0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    .line 1002
    const-string/jumbo v1, "ro.boot.wc.param.offset"

    .line 1005
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1008
    move-result v1

    .line 1009
    iput v1, v0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    .line 1011
    const-string v3, "/sys/class/power_supply/battery/wc_param_info"

    .line 1013
    const/4 v4, 0x1

    .line 1014
    invoke-static {v3, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1017
    move-result-object v3

    .line 1018
    if-eq v1, v2, :cond_15

    .line 1020
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1023
    move-result v1

    .line 1024
    if-nez v1, :cond_15

    .line 1026
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 1028
    const/16 v2, 0xa

    .line 1030
    invoke-direct {v1, v0, v2}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 1033
    iput-object v1, v0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 1035
    :cond_15
    invoke-static {}, Landroid/sysprop/PowerProperties;->battery_input_suspended()Ljava/util/Optional;

    .line 1038
    move-result-object v1

    .line 1039
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1041
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    move-result-object v1

    .line 1045
    check-cast v1, Ljava/lang/Boolean;

    .line 1047
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1050
    move-result v1

    .line 1051
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 1053
    const-string v1, "BatteryService Created"

    .line 1055
    const-string v2, ""

    .line 1057
    invoke-static {v9, v1, v2}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    new-instance v1, Lcom/android/server/BatteryService$1;

    .line 1062
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 1065
    move-result-object v2

    .line 1066
    const/4 v3, 0x2

    .line 1067
    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V

    .line 1070
    iput-object v1, v0, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

    .line 1072
    return-void
.end method

.method public static isFileSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p0, " is not found"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    const-string v0, "BatteryService"

    .line 26
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 p0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    :goto_0
    return p0
.end method

.method public static parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 8
    const-string v2, "-f"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return v0
.end method

.method public static plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 3
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 8
    return v2

    .line 9
    :cond_0
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 11
    if-eqz v1, :cond_1

    .line 13
    const/4 p0, 0x4

    .line 14
    return p0

    .line 15
    :cond_1
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 17
    if-eqz v1, :cond_2

    .line 19
    const/4 p0, 0x2

    .line 20
    return p0

    .line 21
    :cond_2
    iget-boolean p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 23
    if-eqz p0, :cond_3

    .line 25
    return v2

    .line 26
    :cond_3
    iget-boolean p0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 28
    if-eqz p0, :cond_4

    .line 30
    const/16 p0, 0x8

    .line 32
    return p0

    .line 33
    :cond_4
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public static setPassThrough(Z)V
    .locals 3

    .line 1
    const-string v0, "/sys/class/power_supply/battery/pass_through"

    .line 3
    invoke-static {v0, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "BatteryService"

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v2, "success to set PassThrough sysfs as "

    .line 16
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo p0, "fail to set PassThrough sysfs"

    .line 33
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method public final isPoweredLocked(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 3
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 8
    return v2

    .line 9
    :cond_0
    and-int/lit8 v1, p1, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 15
    if-eqz v3, :cond_1

    .line 17
    return v2

    .line 18
    :cond_1
    and-int/lit8 v3, p1, 0x2

    .line 20
    if-eqz v3, :cond_2

    .line 22
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 24
    if-eqz v3, :cond_2

    .line 26
    return v2

    .line 27
    :cond_2
    and-int/lit8 v3, p1, 0x4

    .line 29
    if-eqz v3, :cond_3

    .line 31
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 33
    if-eqz v3, :cond_3

    .line 35
    return v2

    .line 36
    :cond_3
    and-int/lit8 p1, p1, 0x8

    .line 38
    if-eqz p1, :cond_4

    .line 40
    iget-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 42
    if-eqz p1, :cond_4

    .line 44
    return v2

    .line 45
    :cond_4
    if-eqz v1, :cond_5

    .line 47
    iget-object p0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 49
    iget-boolean p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 51
    if-eqz p0, :cond_5

    .line 53
    return v2

    .line 54
    :cond_5
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public final logBatteryStatsLocked()V
    .locals 9

    .line 1
    const-string/jumbo v0, "failed to delete temporary dumpsys file: "

    .line 4
    const-string/jumbo v1, "failed to close dumpsys output stream"

    .line 7
    const-string v2, "BatteryService"

    .line 9
    const-string v3, "batterystats"

    .line 11
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    move-result-object v3

    .line 15
    if-nez v3, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 20
    const-string/jumbo v4, "dropbox"

    .line 23
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/os/DropBoxManager;

    .line 29
    if-eqz p0, :cond_7

    .line 31
    const-string v4, "BATTERY_DISCHARGE_INFO"

    .line 33
    invoke-virtual {p0, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_1

    .line 39
    goto/16 :goto_9

    .line 41
    :cond_1
    const/4 v5, 0x0

    .line 42
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 44
    const-string v7, "/data/system/batterystats.dump"

    .line 46
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 49
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    .line 51
    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 57
    move-result-object v5

    .line 58
    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    .line 60
    invoke-interface {v3, v5, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 63
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 66
    const/4 v3, 0x2

    .line 67
    invoke-virtual {p0, v4, v6, v3}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_4

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    goto :goto_6

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    move-object v5, v7

    .line 105
    goto :goto_7

    .line 106
    :catch_1
    move-exception p0

    .line 107
    move-object v5, v7

    .line 108
    goto :goto_2

    .line 109
    :catch_2
    move-exception p0

    .line 110
    move-object v5, v7

    .line 111
    goto :goto_4

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_7

    .line 114
    :catch_3
    move-exception p0

    .line 115
    goto :goto_2

    .line 116
    :catch_4
    move-exception p0

    .line 117
    goto :goto_4

    .line 118
    :catchall_2
    move-exception p0

    .line 119
    move-object v6, v5

    .line 120
    goto :goto_7

    .line 121
    :catch_5
    move-exception p0

    .line 122
    move-object v6, v5

    .line 123
    goto :goto_2

    .line 124
    :catch_6
    move-exception p0

    .line 125
    move-object v6, v5

    .line 126
    goto :goto_4

    .line 127
    :goto_2
    :try_start_4
    const-string/jumbo v3, "failed to write dumpsys file"

    .line 130
    invoke-static {v2, v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    if-eqz v5, :cond_2

    .line 135
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 138
    goto :goto_3

    .line 139
    :catch_7
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    :goto_3
    if-eqz v6, :cond_4

    .line 144
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 147
    move-result p0

    .line 148
    if-nez p0, :cond_4

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    goto :goto_1

    .line 156
    :goto_4
    :try_start_6
    const-string/jumbo v3, "failed to dump battery service"

    .line 159
    invoke-static {v2, v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 162
    if-eqz v5, :cond_3

    .line 164
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 167
    goto :goto_5

    .line 168
    :catch_8
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_3
    :goto_5
    if-eqz v6, :cond_4

    .line 173
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 176
    move-result p0

    .line 177
    if-nez p0, :cond_4

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    goto :goto_1

    .line 185
    :cond_4
    :goto_6
    return-void

    .line 186
    :goto_7
    if-eqz v5, :cond_5

    .line 188
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 191
    goto :goto_8

    .line 192
    :catch_9
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_5
    :goto_8
    if-eqz v6, :cond_6

    .line 197
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_6

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_6
    throw p0

    .line 223
    :cond_7
    :goto_9
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 7

    .line 1
    const-string/jumbo v0, "setWirelessChargingMode(All): "

    .line 4
    const-string v1, "BatteryService"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "[onBootPhase]phase:"

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/16 v1, 0x226

    .line 25
    const/4 v2, -0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    if-ne p1, v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 35
    new-instance p1, Lcom/android/server/BatteryService$15;

    .line 37
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 39
    invoke-direct {p1, p0, v5}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 42
    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    move-result-object v5

    .line 48
    const-string/jumbo v6, "low_power_trigger_level"

    .line 51
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v5, v6, v3, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 61
    invoke-virtual {p0, v5}, Lcom/android/server/BatteryService;->registerContentObserver(Landroid/content/ContentResolver;)V

    .line 64
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 66
    const-string v2, "SemInputDeviceManagerService"

    .line 68
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 74
    iput-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 76
    if-eqz p1, :cond_0

    .line 78
    iget v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 80
    if-eqz v2, :cond_0

    .line 82
    const/16 v3, 0xb

    .line 84
    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 87
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 89
    iget v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 91
    invoke-virtual {p1, v4, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 94
    const-string p1, "BatteryService"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    iget p0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 103
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto :goto_1

    .line 116
    :cond_0
    :goto_0
    monitor-exit v1

    .line 117
    goto/16 :goto_4

    .line 119
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0

    .line 121
    :cond_1
    const/16 v0, 0x3e8

    .line 123
    if-ne p1, v0, :cond_8

    .line 125
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 130
    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 135
    const/4 v5, 0x0

    .line 136
    invoke-direct {v1, p0, v5}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 144
    monitor-enter v0

    .line 145
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    .line 148
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 151
    if-eqz v0, :cond_2

    .line 153
    const-string/jumbo v0, "persist.sys.shutdown_received"

    .line 156
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 159
    move-result v0

    .line 160
    const-string/jumbo v1, "persist.sys.shutdown_received"

    .line 163
    const-string/jumbo v5, "false"

    .line 166
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 173
    new-instance v1, Lcom/android/server/BatteryService$17;

    .line 175
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 178
    const-wide/32 v5, 0xc350

    .line 181
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    :cond_2
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 186
    if-eqz v0, :cond_4

    .line 188
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 190
    if-eqz v0, :cond_4

    .line 192
    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 194
    and-int/lit8 v1, v0, 0x20

    .line 196
    if-nez v1, :cond_3

    .line 198
    and-int/lit16 v0, v0, 0x2000

    .line 200
    if-eqz v0, :cond_4

    .line 202
    :cond_3
    const-string v0, "BatteryService"

    .line 204
    const-string/jumbo v1, "bootCompleted and HiccupPopup"

    .line 207
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v0, "/sys/class/power_supply/battery/batt_misc_event"

    .line 212
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 214
    int-to-long v5, v1

    .line 215
    invoke-static {v5, v6, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 218
    :cond_4
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 220
    if-eqz v0, :cond_6

    .line 222
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 225
    move-result-object v0

    .line 226
    if-eqz v0, :cond_5

    .line 228
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    .line 231
    move-result v0

    .line 232
    and-int/lit8 v0, v0, 0x10

    .line 234
    if-eqz v0, :cond_5

    .line 236
    move v0, v4

    .line 237
    goto :goto_2

    .line 238
    :cond_5
    move v0, v3

    .line 239
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    .line 241
    :cond_6
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    .line 243
    if-eqz v0, :cond_8

    .line 245
    const-string/jumbo v0, "protect_battery"

    .line 248
    const/4 v1, -0x2

    .line 249
    invoke-static {p1, v0, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 252
    move-result v0

    .line 253
    if-ne v0, v4, :cond_7

    .line 255
    goto :goto_3

    .line 256
    :cond_7
    move v4, v3

    .line 257
    :goto_3
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 259
    const-string v0, "BatteryService"

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    const-string v4, "!@mLifeExtender Settings = "

    .line 265
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 270
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 273
    const-string v4, " mLifeExtenderSettingsObserver register"

    .line 275
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string/jumbo v0, "protect_battery"

    .line 288
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 291
    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 294
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 297
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 299
    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    .line 301
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    goto :goto_4

    .line 305
    :catchall_1
    move-exception p0

    .line 306
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    throw p0

    .line 308
    :cond_8
    :goto_4
    return-void
.end method

.method public final onStart()V
    .locals 10

    .line 1
    const-string v0, "HealthInitWrapper"

    .line 3
    const-wide/32 v1, 0x80000

    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    :try_start_0
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;

    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/BatteryService;)V

    .line 14
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;)Lcom/android/server/health/HealthServiceWrapper;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    const-string v0, "HealthInitWaitUpdate"

    .line 25
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    move-result-wide v3

    .line 32
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter v0

    .line 35
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 37
    if-nez v5, :cond_0

    .line 39
    const-string v5, "BatteryService"

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string/jumbo v7, "health: Waited "

    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 55
    move-result-wide v7

    .line 56
    sub-long/2addr v7, v3

    .line 57
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v7, "ms for callbacks. Waiting another "

    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-wide/16 v7, 0x3e8

    .line 68
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    const-string v9, " ms..."

    .line 73
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v6

    .line 80
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    iget-object v5, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 85
    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto/16 :goto_4

    .line 92
    :catch_0
    :try_start_3
    const-string v5, "BatteryService"

    .line 94
    const-string/jumbo v6, "health: InterruptedException when waiting for update.  Continuing..."

    .line 97
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    const-string v0, "BatteryService"

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v6, "health: Waited "

    .line 109
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 115
    move-result-wide v6

    .line 116
    sub-long/2addr v6, v3

    .line 117
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v3, "ms and received the update."

    .line 123
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v3

    .line 130
    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 136
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    .line 138
    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;)V

    .line 141
    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 143
    const-string v1, "battery"

    .line 145
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 148
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 150
    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;)V

    .line 153
    const-string v1, "batteryproperties"

    .line 155
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 158
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 160
    new-instance v1, Lcom/android/server/BatteryService$LocalService;

    .line 162
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;)V

    .line 165
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 168
    const-string v0, "BatteryService"

    .line 170
    const-string v1, "!@[LLB] Write weeklyDiff EFS ->  Sys : "

    .line 172
    const-string v2, "/efs/FactoryApp/batt_after_manufactured"

    .line 174
    invoke-static {v2}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    .line 177
    move-result v3

    .line 178
    const-string v4, "/sys/class/power_supply/battery/batt_after_manufactured"

    .line 180
    if-nez v3, :cond_1

    .line 182
    const-wide/16 v0, 0x0

    .line 184
    invoke-static {v0, v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 187
    invoke-static {v0, v1, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 193
    goto :goto_1

    .line 194
    :cond_1
    const/4 v3, 0x1

    .line 195
    invoke-static {v2, v3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 198
    move-result-object v2

    .line 199
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 202
    move-result v3

    .line 203
    if-nez v3, :cond_2

    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 208
    move-result v3

    .line 209
    if-ltz v3, :cond_2

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 221
    move-result v1

    .line 222
    int-to-long v5, v1

    .line 223
    invoke-static {v5, v6, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 229
    move-result v1

    .line 230
    iput v1, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 232
    goto :goto_1

    .line 233
    :catch_1
    move-exception p0

    .line 234
    goto :goto_2

    .line 235
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 239
    const/4 v2, 0x1

    .line 240
    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    goto :goto_3

    .line 247
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    const-string v3, "!@[LLB] can not change. value: "

    .line 251
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v2, ", e: "

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object p0

    .line 269
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_3
    return-void

    .line 273
    :goto_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 274
    throw p0

    .line 275
    :catchall_1
    move-exception p0

    .line 276
    goto :goto_7

    .line 277
    :catch_2
    move-exception p0

    .line 278
    goto :goto_5

    .line 279
    :catch_3
    move-exception p0

    .line 280
    goto :goto_6

    .line 281
    :goto_5
    :try_start_6
    const-string v0, "BatteryService"

    .line 283
    const-string/jumbo v3, "health: cannot register callback. (no supported health HAL service)"

    .line 286
    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    throw p0

    .line 290
    :goto_6
    const-string v0, "BatteryService"

    .line 292
    const-string/jumbo v3, "health: cannot register callback. (RemoteException)"

    .line 295
    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 301
    move-result-object p0

    .line 302
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 303
    :goto_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 306
    throw p0
.end method

.method public final processValuesLocked(Z)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string/jumbo v1, "seq"

    .line 6
    const/4 v8, 0x4

    .line 7
    iget-object v12, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 9
    const/4 v14, 0x2

    .line 10
    iget-object v15, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 12
    iget v2, v15, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x1

    .line 16
    if-eq v2, v10, :cond_0

    .line 18
    iget v2, v15, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 20
    iget v15, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 22
    if-gt v2, v15, :cond_0

    .line 24
    move v2, v10

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v9

    .line 27
    :goto_0
    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 29
    iget-object v2, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 31
    invoke-static {v2}, Lcom/android/server/BatteryService;->plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I

    .line 34
    move-result v2

    .line 35
    iput v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 37
    if-nez v2, :cond_2

    .line 39
    iget-object v15, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 41
    iget-boolean v15, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 43
    if-eqz v15, :cond_1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iput v9, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    iput v9, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 51
    iget-object v15, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 53
    iget-boolean v3, v15, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 55
    if-eqz v3, :cond_3

    .line 57
    iput v10, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 59
    :cond_3
    iget-boolean v3, v15, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 61
    if-eqz v3, :cond_4

    .line 63
    iget v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 65
    or-int/2addr v3, v14

    .line 66
    iput v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 68
    :cond_4
    iget-boolean v3, v15, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 70
    if-eqz v3, :cond_5

    .line 72
    iget v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 74
    or-int/2addr v3, v8

    .line 75
    iput v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 77
    :cond_5
    iget-object v3, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 79
    iget-boolean v15, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 81
    if-eqz v15, :cond_6

    .line 83
    iget v15, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 85
    const/high16 v17, 0x10000

    .line 87
    or-int v15, v15, v17

    .line 89
    iput v15, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 91
    :cond_6
    iget-boolean v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 93
    if-eqz v3, :cond_7

    .line 95
    iget v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 97
    or-int/2addr v3, v10

    .line 98
    iput v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 100
    :cond_7
    :goto_2
    :try_start_0
    iget-object v3, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 102
    iget-object v15, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 104
    iget v11, v15, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 106
    iget v8, v15, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 108
    iget v13, v15, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 110
    iget v4, v15, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 112
    iget v5, v15, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 114
    iget v6, v15, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 116
    iget v9, v15, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 118
    iget-wide v14, v15, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 120
    iget-object v7, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 122
    iget v10, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    move-object/from16 v33, v1

    .line 126
    :try_start_1
    iget v1, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    move-object/from16 v34, v12

    .line 130
    :try_start_2
    iget v12, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 132
    iget v0, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 134
    iget-boolean v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 136
    move-object/from16 v17, v3

    .line 138
    move/from16 v18, v11

    .line 140
    move/from16 v19, v8

    .line 142
    move/from16 v20, v2

    .line 144
    move/from16 v21, v13

    .line 146
    move/from16 v22, v4

    .line 148
    move/from16 v23, v5

    .line 150
    move/from16 v24, v6

    .line 152
    move/from16 v25, v9

    .line 154
    move-wide/from16 v26, v14

    .line 156
    move/from16 v28, v10

    .line 158
    move/from16 v29, v1

    .line 160
    move/from16 v30, v12

    .line 162
    move/from16 v31, v0

    .line 164
    move/from16 v32, v7

    .line 166
    invoke-interface/range {v17 .. v32}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIJIIIIZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :catch_0
    :goto_3
    move-object/from16 v0, p0

    .line 171
    goto :goto_5

    .line 172
    :catch_1
    :goto_4
    move-object/from16 v34, v12

    .line 174
    goto :goto_3

    .line 175
    :catch_2
    move-object/from16 v33, v1

    .line 177
    goto :goto_4

    .line 178
    :goto_5
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 180
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 182
    const/4 v3, -0x1

    .line 183
    const-string v4, "BatteryService"

    .line 185
    const-string v5, ", so doesn\'t shutdown"

    .line 187
    if-eq v2, v3, :cond_8

    .line 189
    const/4 v6, 0x1

    .line 190
    if-ne v2, v6, :cond_d

    .line 192
    goto :goto_6

    .line 193
    :cond_8
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mShutdownIfNoPower:Z

    .line 195
    if-nez v2, :cond_9

    .line 197
    goto :goto_7

    .line 198
    :cond_9
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 200
    if-lez v2, :cond_a

    .line 202
    goto :goto_7

    .line 203
    :cond_a
    iget-boolean v6, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 205
    if-nez v6, :cond_b

    .line 207
    goto :goto_7

    .line 208
    :cond_b
    if-nez v2, :cond_d

    .line 210
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 212
    if-eqz v2, :cond_d

    .line 214
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 216
    if-ltz v1, :cond_c

    .line 218
    const/16 v1, 0xf

    .line 220
    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_c

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    const-string v2, "!@ BatteryService plug type: 0x"

    .line 230
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    iget v2, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 235
    const-string v6, " battery current avg: "

    .line 237
    invoke-static {v2, v1, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 240
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 242
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v1

    .line 254
    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    goto :goto_7

    .line 258
    :cond_c
    :goto_6
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 260
    const/4 v2, 0x2

    .line 261
    invoke-direct {v1, v0, v2}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 264
    move-object/from16 v2, v34

    .line 266
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    goto :goto_8

    .line 270
    :cond_d
    :goto_7
    move-object/from16 v2, v34

    .line 272
    :goto_8
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 274
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 276
    if-nez v1, :cond_f

    .line 278
    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 280
    if-eqz v1, :cond_e

    .line 282
    iget-object v1, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 284
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_f

    .line 290
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 292
    const-string v6, "!@ BatteryService mBootCompleted: "

    .line 294
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    iget-boolean v6, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 299
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 302
    const-string v6, " am.isSystemReady: "

    .line 304
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v6, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 309
    invoke-virtual {v6}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 312
    move-result v6

    .line 313
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v1

    .line 323
    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_f
    if-nez p1, :cond_10

    .line 328
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 330
    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    .line 332
    iget v5, v0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    .line 334
    if-eq v1, v5, :cond_11

    .line 336
    :cond_10
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 338
    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    .line 340
    iput v1, v0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    .line 342
    new-instance v1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;

    .line 344
    const/4 v5, 0x0

    .line 345
    invoke-direct {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 348
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    :cond_11
    sget-boolean v1, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 353
    if-eqz v1, :cond_12

    .line 355
    iget-object v6, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 357
    if-eqz v6, :cond_12

    .line 359
    iget v7, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 361
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 363
    iget v8, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 365
    iget-wide v9, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 367
    iget-object v1, v6, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 369
    new-instance v11, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;

    .line 371
    move-object v5, v11

    .line 372
    invoke-direct/range {v5 .. v10}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;IIJ)V

    .line 375
    invoke-virtual {v1, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    :cond_12
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 380
    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 382
    if-eqz v1, :cond_13

    .line 384
    const-string v1, "/sys/class/power_supply/battery/wc_tx_id"

    .line 386
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->readNodeAsInt(Ljava/lang/String;)I

    .line 389
    move-result v1

    .line 390
    iput v1, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 392
    goto :goto_9

    .line 393
    :cond_13
    const/4 v1, 0x0

    .line 394
    iput v1, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 396
    :goto_9
    iget-object v1, v0, Lcom/android/server/BatteryService;->mMultiSbpController:Lcom/android/server/battery/MultiSbpController;

    .line 398
    if-eqz v1, :cond_15

    .line 400
    iget-object v5, v1, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionProcessor:Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

    .line 402
    if-nez v5, :cond_14

    .line 404
    const-string v1, "[SS]MultiSbpController"

    .line 406
    const-string/jumbo v5, "processBatteryConnectionChanged not yet initialized!"

    .line 409
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    goto :goto_a

    .line 413
    :cond_14
    iget-object v1, v1, Lcom/android/server/battery/MultiSbpController;->mHandler:Landroid/os/Handler;

    .line 415
    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    :cond_15
    :goto_a
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 420
    iget-wide v5, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 422
    sget-wide v7, Lcom/android/server/battery/BattFunctions;->mLastRemainingChargingTime:J

    .line 424
    cmp-long v1, v5, v7

    .line 426
    if-nez v1, :cond_16

    .line 428
    goto :goto_b

    .line 429
    :cond_16
    const-string v1, "[sendRemainingChargingTimeChangedIntent]remainingChargingTime:"

    .line 431
    const-string v7, " ,mLastRemainingChargingTime:"

    .line 433
    invoke-static {v1, v5, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    move-result-object v1

    .line 437
    sget-wide v7, Lcom/android/server/battery/BattFunctions;->mLastRemainingChargingTime:J

    .line 439
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    move-result-object v1

    .line 446
    const-string v7, "[SS]BattFunctions"

    .line 448
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v1, Landroid/content/Intent;

    .line 453
    const-string/jumbo v7, "com.samsung.server.BatteryService.action.SEC_BATTERY_REMAINING_CHARGING_TIME_CHANGED"

    .line 456
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    const/high16 v7, 0x60000000

    .line 461
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 464
    const-string/jumbo v7, "remaining_charging_time"

    .line 467
    invoke-virtual {v1, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 470
    new-instance v7, Lcom/android/server/battery/BattFunctions$$ExternalSyntheticLambda0;

    .line 472
    invoke-direct {v7, v1}, Lcom/android/server/battery/BattFunctions$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    .line 475
    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    sput-wide v5, Lcom/android/server/battery/BattFunctions;->mLastRemainingChargingTime:J

    .line 480
    :goto_b
    iget-object v1, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 482
    const/16 v5, 0x32

    .line 484
    if-nez p1, :cond_1a

    .line 486
    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 488
    iget v7, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 490
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 492
    if-ne v7, v8, :cond_1a

    .line 494
    iget v7, v6, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 496
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 498
    if-ne v7, v8, :cond_1a

    .line 500
    iget-boolean v7, v6, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 502
    iget-boolean v8, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 504
    if-ne v7, v8, :cond_1a

    .line 506
    iget v7, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 508
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 510
    if-ne v7, v8, :cond_1a

    .line 512
    iget v7, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 514
    iget v8, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 516
    if-ne v7, v8, :cond_1a

    .line 518
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 520
    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 522
    if-eq v6, v7, :cond_17

    .line 524
    sub-int/2addr v6, v7

    .line 525
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 528
    move-result v6

    .line 529
    if-gt v6, v5, :cond_1a

    .line 531
    :cond_17
    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 533
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 535
    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 537
    if-eq v6, v7, :cond_18

    .line 539
    sub-int/2addr v6, v7

    .line 540
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 543
    move-result v6

    .line 544
    const/16 v7, 0xa

    .line 546
    if-gt v6, v7, :cond_1a

    .line 548
    :cond_18
    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 550
    iget v7, v6, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 552
    iget v8, v0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 554
    if-ne v7, v8, :cond_1a

    .line 556
    iget v7, v6, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 558
    iget v8, v0, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 560
    if-ne v7, v8, :cond_1a

    .line 562
    iget-object v7, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 564
    iget v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 566
    iget v9, v0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 568
    if-ne v8, v9, :cond_1a

    .line 570
    iget v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 572
    iget v9, v0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 574
    if-ne v8, v9, :cond_1a

    .line 576
    iget-boolean v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 578
    iget-boolean v9, v0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 580
    if-ne v8, v9, :cond_1a

    .line 582
    iget v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 584
    iget v9, v0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 586
    if-ne v8, v9, :cond_1a

    .line 588
    iget-boolean v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 590
    iget-boolean v9, v0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 592
    if-ne v8, v9, :cond_1a

    .line 594
    iget v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 596
    iget v9, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 598
    if-ne v8, v9, :cond_1a

    .line 600
    iget v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 602
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 604
    if-ne v7, v8, :cond_1a

    .line 606
    iget v7, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 608
    iget v8, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 610
    if-ne v7, v8, :cond_1a

    .line 612
    iget v7, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 614
    iget v8, v0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 616
    if-ne v7, v8, :cond_1a

    .line 618
    iget v7, v6, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 620
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryCycleCount:I

    .line 622
    if-ne v7, v8, :cond_1a

    .line 624
    iget v6, v6, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 626
    iget v7, v0, Lcom/android/server/BatteryService;->mLastCharingState:I

    .line 628
    if-ne v6, v7, :cond_1a

    .line 630
    iget v6, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 632
    iget v7, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 634
    if-eq v6, v7, :cond_19

    .line 636
    goto :goto_c

    .line 637
    :cond_19
    move-object v6, v2

    .line 638
    move-object v2, v4

    .line 639
    move-object/from16 v35, v1

    .line 641
    move-object v1, v0

    .line 642
    move-object/from16 v0, v35

    .line 644
    goto/16 :goto_3b

    .line 646
    :cond_1a
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    .line 648
    const-string v7, "[processValuesLocked]batteryLevel:"

    .line 650
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    iget-object v7, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 655
    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 657
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    const-string v7, " ,LastbatteryLevel:"

    .line 662
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 667
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 670
    const-string v7, " ,mPlugType:"

    .line 672
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget v7, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 677
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    const-string v7, " ,batteryStatus:"

    .line 682
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget-object v7, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 687
    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 689
    invoke-static {v6, v7, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 692
    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 694
    iget v7, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 696
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 698
    if-eq v7, v8, :cond_1b

    .line 700
    const/4 v7, 0x1

    .line 701
    goto :goto_d

    .line 702
    :cond_1b
    const/4 v7, 0x0

    .line 703
    :goto_d
    iget v8, v6, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 705
    iget v9, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 707
    if-eq v8, v9, :cond_1c

    .line 709
    const/4 v8, 0x1

    .line 710
    goto :goto_e

    .line 711
    :cond_1c
    const/4 v8, 0x0

    .line 712
    :goto_e
    iget-boolean v9, v6, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 714
    iget-boolean v10, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 716
    if-eq v9, v10, :cond_1d

    .line 718
    const/4 v9, 0x1

    .line 719
    goto :goto_f

    .line 720
    :cond_1d
    const/4 v9, 0x0

    .line 721
    :goto_f
    iget v10, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 723
    iget v11, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 725
    if-eq v10, v11, :cond_1e

    .line 727
    const/4 v10, 0x1

    .line 728
    goto :goto_10

    .line 729
    :cond_1e
    const/4 v10, 0x0

    .line 730
    :goto_10
    iget v11, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 732
    iget v12, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 734
    if-eq v11, v12, :cond_1f

    .line 736
    const/4 v11, 0x1

    .line 737
    goto :goto_11

    .line 738
    :cond_1f
    const/4 v11, 0x0

    .line 739
    :goto_11
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 741
    iget v12, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 743
    if-eq v6, v12, :cond_20

    .line 745
    sub-int/2addr v6, v12

    .line 746
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 749
    move-result v6

    .line 750
    if-le v6, v5, :cond_20

    .line 752
    const/4 v5, 0x1

    .line 753
    goto :goto_12

    .line 754
    :cond_20
    const/4 v5, 0x0

    .line 755
    :goto_12
    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 757
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 759
    iget v12, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 761
    if-eq v6, v12, :cond_21

    .line 763
    sub-int/2addr v6, v12

    .line 764
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 767
    move-result v6

    .line 768
    const/16 v12, 0xa

    .line 770
    if-le v6, v12, :cond_21

    .line 772
    const/4 v6, 0x1

    .line 773
    goto :goto_13

    .line 774
    :cond_21
    const/4 v6, 0x0

    .line 775
    :goto_13
    iget-object v12, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 777
    iget v13, v12, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 779
    iget v14, v0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 781
    if-eq v13, v14, :cond_22

    .line 783
    const/4 v13, 0x1

    .line 784
    goto :goto_14

    .line 785
    :cond_22
    const/4 v13, 0x0

    .line 786
    :goto_14
    iget v14, v12, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 788
    iget v15, v0, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 790
    if-eq v14, v15, :cond_23

    .line 792
    const/4 v14, 0x1

    .line 793
    goto :goto_15

    .line 794
    :cond_23
    const/4 v14, 0x0

    .line 795
    :goto_15
    iget-object v15, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 797
    iget v3, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 799
    move-object/from16 v18, v1

    .line 801
    iget v1, v0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 803
    if-eq v3, v1, :cond_24

    .line 805
    const/4 v1, 0x1

    .line 806
    goto :goto_16

    .line 807
    :cond_24
    const/4 v1, 0x0

    .line 808
    :goto_16
    iget v3, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 810
    move-object/from16 v34, v2

    .line 812
    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 814
    if-eq v3, v2, :cond_25

    .line 816
    const/4 v2, 0x1

    .line 817
    goto :goto_17

    .line 818
    :cond_25
    const/4 v2, 0x0

    .line 819
    :goto_17
    iget-boolean v3, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 821
    move-object/from16 v19, v4

    .line 823
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 825
    if-eq v3, v4, :cond_26

    .line 827
    const/4 v3, 0x1

    .line 828
    goto :goto_18

    .line 829
    :cond_26
    const/4 v3, 0x0

    .line 830
    :goto_18
    iget v4, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 832
    move/from16 v20, v3

    .line 834
    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 836
    if-eq v4, v3, :cond_27

    .line 838
    const/4 v3, 0x1

    .line 839
    goto :goto_19

    .line 840
    :cond_27
    const/4 v3, 0x0

    .line 841
    :goto_19
    iget-boolean v4, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 843
    move/from16 v21, v3

    .line 845
    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 847
    if-eq v4, v3, :cond_28

    .line 849
    const/4 v3, 0x1

    .line 850
    goto :goto_1a

    .line 851
    :cond_28
    const/4 v3, 0x0

    .line 852
    :goto_1a
    iget v4, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 854
    move/from16 v22, v3

    .line 856
    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 858
    if-eq v4, v3, :cond_29

    .line 860
    const/4 v3, 0x1

    .line 861
    goto :goto_1b

    .line 862
    :cond_29
    const/4 v3, 0x0

    .line 863
    :goto_1b
    iget v4, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 865
    iget v15, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 867
    if-eq v4, v15, :cond_2a

    .line 869
    const/4 v4, 0x1

    .line 870
    goto :goto_1c

    .line 871
    :cond_2a
    const/4 v4, 0x0

    .line 872
    :goto_1c
    iget v15, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 874
    move/from16 v23, v4

    .line 876
    iget v4, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 878
    if-eq v15, v4, :cond_2b

    .line 880
    const/4 v4, 0x1

    .line 881
    goto :goto_1d

    .line 882
    :cond_2b
    const/4 v4, 0x0

    .line 883
    :goto_1d
    iget v15, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 885
    move/from16 v24, v4

    .line 887
    iget v4, v0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 889
    if-eq v15, v4, :cond_2c

    .line 891
    const/4 v4, 0x1

    .line 892
    goto :goto_1e

    .line 893
    :cond_2c
    const/4 v4, 0x0

    .line 894
    :goto_1e
    iget v15, v12, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 896
    move/from16 v25, v4

    .line 898
    iget v4, v0, Lcom/android/server/BatteryService;->mLastBatteryCycleCount:I

    .line 900
    if-eq v15, v4, :cond_2d

    .line 902
    const/4 v4, 0x1

    .line 903
    goto :goto_1f

    .line 904
    :cond_2d
    const/4 v4, 0x0

    .line 905
    :goto_1f
    iget v12, v12, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 907
    iget v15, v0, Lcom/android/server/BatteryService;->mLastCharingState:I

    .line 909
    if-eq v12, v15, :cond_2e

    .line 911
    const/4 v12, 0x1

    .line 912
    goto :goto_20

    .line 913
    :cond_2e
    const/4 v12, 0x0

    .line 914
    :goto_20
    iget v15, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 916
    move/from16 v26, v12

    .line 918
    iget v12, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 920
    if-eq v15, v12, :cond_2f

    .line 922
    const/4 v12, 0x1

    .line 923
    :goto_21
    const/16 v15, 0x16

    .line 925
    goto :goto_22

    .line 926
    :cond_2f
    const/4 v12, 0x0

    .line 927
    goto :goto_21

    .line 928
    :goto_22
    new-array v0, v15, [Z

    .line 930
    const/4 v15, 0x0

    .line 931
    aput-boolean v7, v0, v15

    .line 933
    const/4 v7, 0x1

    .line 934
    aput-boolean v8, v0, v7

    .line 936
    const/4 v7, 0x2

    .line 937
    aput-boolean v9, v0, v7

    .line 939
    const/4 v7, 0x3

    .line 940
    aput-boolean v10, v0, v7

    .line 942
    const/4 v7, 0x4

    .line 943
    aput-boolean v11, v0, v7

    .line 945
    const/4 v7, 0x5

    .line 946
    aput-boolean v5, v0, v7

    .line 948
    const/4 v5, 0x6

    .line 949
    aput-boolean v6, v0, v5

    .line 951
    const/4 v5, 0x7

    .line 952
    aput-boolean v13, v0, v5

    .line 954
    const/16 v5, 0x8

    .line 956
    aput-boolean v14, v0, v5

    .line 958
    const/16 v5, 0x9

    .line 960
    aput-boolean v1, v0, v5

    .line 962
    const/16 v1, 0xa

    .line 964
    aput-boolean v2, v0, v1

    .line 966
    const/16 v1, 0xb

    .line 968
    aput-boolean v20, v0, v1

    .line 970
    const/16 v1, 0xc

    .line 972
    aput-boolean v21, v0, v1

    .line 974
    const/16 v1, 0xd

    .line 976
    const/4 v2, 0x0

    .line 977
    aput-boolean v2, v0, v1

    .line 979
    const/16 v1, 0xe

    .line 981
    aput-boolean v22, v0, v1

    .line 983
    const/16 v1, 0xf

    .line 985
    aput-boolean v3, v0, v1

    .line 987
    const/16 v1, 0x10

    .line 989
    aput-boolean v23, v0, v1

    .line 991
    const/16 v1, 0x11

    .line 993
    aput-boolean v24, v0, v1

    .line 995
    const/16 v1, 0x12

    .line 997
    aput-boolean v25, v0, v1

    .line 999
    const/16 v1, 0x13

    .line 1001
    aput-boolean v4, v0, v1

    .line 1003
    const/16 v1, 0x14

    .line 1005
    aput-boolean v26, v0, v1

    .line 1007
    const/16 v1, 0x15

    .line 1009
    aput-boolean v12, v0, v1

    .line 1011
    move-object/from16 v1, p0

    .line 1013
    move-object v2, v0

    .line 1014
    const/4 v0, 0x0

    .line 1015
    :goto_23
    iget-object v3, v1, Lcom/android/server/BatteryService;->mBatteryChangedConditionCounts:[I

    .line 1017
    const/16 v4, 0x16

    .line 1019
    if-ge v0, v4, :cond_31

    .line 1021
    aget-boolean v5, v2, v0

    .line 1023
    if-eqz v5, :cond_30

    .line 1025
    aget v5, v3, v0

    .line 1027
    const/4 v6, 0x1

    .line 1028
    add-int/2addr v5, v6

    .line 1029
    aput v5, v3, v0

    .line 1031
    goto :goto_24

    .line 1032
    :cond_30
    const/4 v6, 0x1

    .line 1033
    :goto_24
    add-int/2addr v0, v6

    .line 1034
    goto :goto_23

    .line 1035
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1037
    const-string v2, "[countBatteryChangedConditions]mBatteryChangedConditionCounts:"

    .line 1039
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1042
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 1045
    move-result-object v2

    .line 1046
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1052
    move-result-object v0

    .line 1053
    move-object/from16 v2, v19

    .line 1055
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1060
    iget v3, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1062
    if-eq v0, v3, :cond_35

    .line 1064
    const/16 v4, 0x58a

    .line 1066
    const/16 v5, 0x58d

    .line 1068
    const/16 v6, 0x589

    .line 1070
    if-nez v3, :cond_32

    .line 1072
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1074
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1076
    iput v0, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 1078
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1081
    move-result-wide v7

    .line 1082
    iput-wide v7, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 1084
    new-instance v0, Landroid/metrics/LogMaker;

    .line 1086
    invoke-direct {v0, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1089
    const/4 v3, 0x4

    .line 1090
    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1093
    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1095
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1098
    move-result-object v3

    .line 1099
    invoke-virtual {v0, v5, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1102
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1104
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1109
    move-result-object v3

    .line 1110
    invoke-virtual {v0, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1113
    iget-object v3, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1115
    invoke-virtual {v3, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1118
    iget-wide v3, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1120
    const-wide/16 v5, 0x0

    .line 1122
    cmp-long v0, v3, v5

    .line 1124
    if-eqz v0, :cond_35

    .line 1126
    iget v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1128
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1130
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1132
    if-eq v0, v3, :cond_35

    .line 1134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1137
    move-result-wide v3

    .line 1138
    iget-wide v5, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1140
    sub-long/2addr v3, v5

    .line 1141
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1144
    move-result-object v0

    .line 1145
    iget v5, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1150
    move-result-object v5

    .line 1151
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1153
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1155
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1158
    move-result-object v6

    .line 1159
    filled-new-array {v0, v5, v6}, [Ljava/lang/Object;

    .line 1162
    move-result-object v0

    .line 1163
    const/16 v5, 0xaaa

    .line 1165
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1168
    const-wide/16 v5, 0x0

    .line 1170
    iput-wide v5, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1172
    const/4 v0, 0x1

    .line 1173
    goto :goto_26

    .line 1174
    :cond_32
    if-nez v0, :cond_35

    .line 1176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1179
    move-result-wide v7

    .line 1180
    iput-wide v7, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1182
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1184
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1186
    iput v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1191
    move-result-wide v7

    .line 1192
    iget-wide v9, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 1194
    sub-long/2addr v7, v9

    .line 1195
    const-wide/16 v11, 0x0

    .line 1197
    cmp-long v0, v9, v11

    .line 1199
    if-eqz v0, :cond_34

    .line 1201
    cmp-long v0, v7, v11

    .line 1203
    if-eqz v0, :cond_33

    .line 1205
    new-instance v0, Landroid/metrics/LogMaker;

    .line 1207
    invoke-direct {v0, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1210
    const/4 v3, 0x5

    .line 1211
    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1214
    iget v3, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1219
    move-result-object v3

    .line 1220
    invoke-virtual {v0, v5, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1223
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1226
    move-result-object v3

    .line 1227
    const/16 v5, 0x58c

    .line 1229
    invoke-virtual {v0, v5, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1232
    iget v3, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 1234
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1237
    move-result-object v3

    .line 1238
    invoke-virtual {v0, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1241
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1243
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1248
    move-result-object v3

    .line 1249
    const/16 v4, 0x58b

    .line 1251
    invoke-virtual {v0, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1254
    iget-object v3, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1256
    invoke-virtual {v3, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1259
    :cond_33
    const-wide/16 v3, 0x0

    .line 1261
    goto :goto_25

    .line 1262
    :cond_34
    move-wide v3, v11

    .line 1263
    :goto_25
    iput-wide v3, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 1265
    :cond_35
    const/4 v0, 0x0

    .line 1266
    const-wide/16 v3, 0x0

    .line 1268
    :goto_26
    iget v5, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1270
    if-gtz v5, :cond_36

    .line 1272
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1274
    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1276
    if-lez v5, :cond_36

    .line 1278
    iput v5, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1280
    :cond_36
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1282
    iget v6, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1284
    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 1286
    if-ne v6, v7, :cond_37

    .line 1288
    iget v7, v5, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 1290
    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 1292
    if-ne v7, v8, :cond_37

    .line 1294
    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 1296
    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 1298
    if-ne v5, v7, :cond_37

    .line 1300
    iget v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1302
    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1304
    if-eq v5, v7, :cond_38

    .line 1306
    :cond_37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1309
    move-result-object v5

    .line 1310
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1312
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 1314
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1317
    move-result-object v6

    .line 1318
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1320
    iget-boolean v7, v7, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 1322
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1325
    move-result-object v7

    .line 1326
    iget v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1328
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1331
    move-result-object v8

    .line 1332
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1334
    iget-object v9, v9, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 1336
    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/Object;

    .line 1339
    move-result-object v5

    .line 1340
    const/16 v6, 0xaa3

    .line 1342
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1345
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1347
    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1349
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1352
    move-result-object v5

    .line 1353
    const-string/jumbo v6, "debug.tracing.battery_status"

    .line 1356
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1361
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1364
    move-result-object v5

    .line 1365
    const-string/jumbo v6, "debug.tracing.plug_type"

    .line 1368
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_38
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1373
    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1375
    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 1377
    if-eq v5, v6, :cond_39

    .line 1379
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1382
    move-result-object v5

    .line 1383
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1385
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 1387
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1390
    move-result-object v6

    .line 1391
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1393
    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 1395
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1398
    move-result-object v7

    .line 1399
    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    .line 1402
    move-result-object v5

    .line 1403
    const/16 v6, 0xaa2

    .line 1405
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1408
    :cond_39
    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 1410
    if-eqz v5, :cond_3a

    .line 1412
    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 1414
    if-nez v5, :cond_3a

    .line 1416
    iget v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1418
    if-nez v5, :cond_3a

    .line 1420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1423
    move-result-wide v3

    .line 1424
    iget-wide v5, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1426
    sub-long/2addr v3, v5

    .line 1427
    const/4 v0, 0x1

    .line 1428
    :cond_3a
    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1430
    if-nez v5, :cond_3b

    .line 1432
    iget v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1434
    if-nez v5, :cond_3e

    .line 1436
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1438
    iget v6, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1440
    const/4 v7, 0x1

    .line 1441
    if-eq v6, v7, :cond_3e

    .line 1443
    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1445
    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1447
    if-gt v5, v6, :cond_3e

    .line 1449
    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1451
    goto :goto_27

    .line 1452
    :cond_3b
    iget v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1454
    if-eqz v5, :cond_3c

    .line 1456
    const/4 v5, 0x0

    .line 1457
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1459
    goto :goto_27

    .line 1460
    :cond_3c
    const/4 v5, 0x0

    .line 1461
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1463
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1465
    iget v7, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 1467
    if-lt v6, v7, :cond_3d

    .line 1469
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1471
    goto :goto_27

    .line 1472
    :cond_3d
    if-eqz p1, :cond_3e

    .line 1474
    iget v7, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1476
    if-lt v6, v7, :cond_3e

    .line 1478
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1480
    :cond_3e
    :goto_27
    iget v5, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1482
    const/4 v6, 0x1

    .line 1483
    add-int/2addr v5, v6

    .line 1484
    iput v5, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1486
    sget-boolean v5, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    .line 1488
    if-eqz v5, :cond_3f

    .line 1490
    iget-object v5, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1492
    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 1494
    const/16 v7, 0x64

    .line 1496
    if-ne v5, v7, :cond_3f

    .line 1498
    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 1500
    if-nez v5, :cond_3f

    .line 1502
    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 1504
    const-string/jumbo v5, "enable wireless charger menu in setting"

    .line 1507
    invoke-static {v2, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    iget-object v5, v1, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 1512
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1515
    move-result-object v5

    .line 1516
    const-string/jumbo v7, "show_wireless_charger_menu"

    .line 1519
    const/4 v8, -0x2

    .line 1520
    invoke-static {v5, v7, v6, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1523
    new-instance v5, Lcom/android/server/BatteryService$16;

    .line 1525
    const/4 v6, 0x3

    .line 1526
    invoke-direct {v5, v1, v6}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 1529
    move-object/from16 v6, v34

    .line 1531
    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1534
    goto :goto_28

    .line 1535
    :cond_3f
    move-object/from16 v6, v34

    .line 1537
    :goto_28
    iget v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1539
    const/high16 v7, 0x4000000

    .line 1541
    if-eqz v5, :cond_40

    .line 1543
    iget v8, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1545
    if-eqz v8, :cond_41

    .line 1547
    const/4 v9, -0x1

    .line 1548
    if-ne v8, v9, :cond_40

    .line 1550
    goto :goto_29

    .line 1551
    :cond_40
    move-object/from16 v9, v33

    .line 1553
    goto :goto_2a

    .line 1554
    :cond_41
    :goto_29
    new-instance v5, Landroid/content/Intent;

    .line 1556
    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 1558
    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1564
    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1566
    move-object/from16 v9, v33

    .line 1568
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1571
    new-instance v8, Lcom/android/server/BatteryService$22;

    .line 1573
    const/4 v10, 0x0

    .line 1574
    invoke-direct {v8, v1, v5, v10}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 1577
    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1580
    goto :goto_2b

    .line 1581
    :goto_2a
    if-nez v5, :cond_43

    .line 1583
    iget v5, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1585
    if-nez v5, :cond_42

    .line 1587
    const/4 v8, -0x1

    .line 1588
    if-ne v5, v8, :cond_43

    .line 1590
    :cond_42
    new-instance v5, Landroid/content/Intent;

    .line 1592
    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 1594
    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1600
    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1602
    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1605
    new-instance v8, Lcom/android/server/BatteryService$22;

    .line 1607
    const/4 v10, 0x1

    .line 1608
    invoke-direct {v8, v1, v5, v10}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 1611
    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1614
    :cond_43
    :goto_2b
    iget v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1616
    if-eqz v5, :cond_44

    .line 1618
    const/4 v5, 0x1

    .line 1619
    goto :goto_2c

    .line 1620
    :cond_44
    const/4 v5, 0x0

    .line 1621
    :goto_2c
    iget v8, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1623
    if-eqz v8, :cond_45

    .line 1625
    const/4 v8, 0x1

    .line 1626
    goto :goto_2d

    .line 1627
    :cond_45
    const/4 v8, 0x0

    .line 1628
    :goto_2d
    if-nez v5, :cond_47

    .line 1630
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1632
    iget v10, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1634
    const/4 v11, 0x1

    .line 1635
    if-eq v10, v11, :cond_47

    .line 1637
    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1639
    iget v10, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1641
    if-gt v5, v10, :cond_47

    .line 1643
    if-nez v8, :cond_46

    .line 1645
    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 1647
    if-gt v8, v10, :cond_46

    .line 1649
    iget v8, v1, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    .line 1651
    if-le v5, v8, :cond_47

    .line 1653
    :cond_46
    const/4 v5, 0x1

    .line 1654
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 1656
    new-instance v5, Landroid/content/Intent;

    .line 1658
    const-string v8, "android.intent.action.BATTERY_LOW"

    .line 1660
    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1666
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1668
    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1671
    new-instance v7, Lcom/android/server/BatteryService$22;

    .line 1673
    const/4 v8, 0x2

    .line 1674
    invoke-direct {v7, v1, v5, v8}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 1677
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1680
    goto :goto_2e

    .line 1681
    :cond_47
    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 1683
    if-eqz v5, :cond_48

    .line 1685
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1687
    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1689
    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 1691
    if-lt v5, v8, :cond_48

    .line 1693
    const/4 v5, 0x0

    .line 1694
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 1696
    new-instance v5, Landroid/content/Intent;

    .line 1698
    const-string v8, "android.intent.action.BATTERY_OKAY"

    .line 1700
    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1706
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1708
    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1711
    new-instance v7, Lcom/android/server/BatteryService$22;

    .line 1713
    const/4 v8, 0x3

    .line 1714
    invoke-direct {v7, v1, v5, v8}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 1717
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1720
    :cond_48
    :goto_2e
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1722
    iget v7, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1724
    iget-object v8, v1, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

    .line 1726
    const/4 v10, 0x0

    .line 1727
    const/4 v11, 0x2

    .line 1728
    if-ne v7, v11, :cond_49

    .line 1730
    iget-object v11, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1732
    iget v11, v11, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 1734
    const/4 v12, 0x3

    .line 1735
    if-ge v11, v12, :cond_49

    .line 1737
    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 1739
    if-nez v5, :cond_49

    .line 1741
    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 1743
    if-eq v7, v5, :cond_4a

    .line 1745
    const-string/jumbo v5, "skip send broadcast ACTION_BATTERY_CHANGED for 250ms"

    .line 1748
    invoke-static {v2, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    const/4 v5, 0x1

    .line 1752
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 1754
    const-wide/16 v11, 0xfa

    .line 1756
    invoke-virtual {v8, v5, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1759
    goto :goto_2f

    .line 1760
    :cond_49
    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 1762
    if-eqz v5, :cond_4a

    .line 1764
    const/4 v5, 0x0

    .line 1765
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 1767
    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1770
    :cond_4a
    :goto_2f
    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 1772
    if-nez v5, :cond_4b

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 1777
    :cond_4b
    iget-object v5, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1779
    iget v7, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 1781
    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 1783
    const/high16 v11, 0x24000000

    .line 1785
    if-ne v7, v8, :cond_4c

    .line 1787
    iget v7, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 1789
    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 1791
    if-ne v7, v8, :cond_4c

    .line 1793
    iget-boolean v7, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 1795
    iget-boolean v8, v1, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 1797
    if-ne v7, v8, :cond_4c

    .line 1799
    iget v7, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 1801
    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 1803
    if-ne v7, v8, :cond_4c

    .line 1805
    iget-boolean v7, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 1807
    iget-boolean v8, v1, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 1809
    if-ne v7, v8, :cond_4c

    .line 1811
    iget v7, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 1813
    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 1815
    if-ne v7, v8, :cond_4c

    .line 1817
    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 1819
    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 1821
    if-ne v5, v7, :cond_4c

    .line 1823
    iget v5, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 1825
    iget v7, v1, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 1827
    if-ne v5, v7, :cond_4c

    .line 1829
    iget v5, v1, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 1831
    iget v7, v1, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 1833
    if-eq v5, v7, :cond_4e

    .line 1835
    :cond_4c
    const-string/jumbo v5, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 1838
    invoke-static {v11, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 1841
    move-result-object v5

    .line 1842
    iget-object v7, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1844
    iget v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 1846
    const-string/jumbo v8, "misc_event"

    .line 1849
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1852
    const-string/jumbo v7, "sec_plug_type"

    .line 1855
    iget v8, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 1857
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1860
    iget-object v7, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1862
    iget v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 1864
    const-string/jumbo v8, "online"

    .line 1867
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1870
    iget-object v7, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1872
    iget v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 1874
    const-string/jumbo v8, "charge_type"

    .line 1877
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1880
    iget-object v7, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1882
    iget-boolean v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 1884
    const-string/jumbo v8, "power_sharing"

    .line 1887
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1890
    iget-object v7, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1892
    iget v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 1894
    if-eqz v7, :cond_4d

    .line 1896
    const/4 v7, 0x1

    .line 1897
    goto :goto_30

    .line 1898
    :cond_4d
    const/4 v7, 0x0

    .line 1899
    :goto_30
    const-string/jumbo v8, "hv_charger"

    .line 1902
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1905
    iget-object v7, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1907
    iget v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 1909
    const-string/jumbo v8, "charger_type"

    .line 1912
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1915
    const-string/jumbo v7, "pogo_plugged"

    .line 1918
    iget v8, v1, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 1920
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1923
    iget-object v7, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1925
    iget v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 1927
    const-string/jumbo v8, "current_event"

    .line 1930
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1933
    const-string/jumbo v7, "wc_tx_id"

    .line 1936
    iget v8, v1, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 1938
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1941
    new-instance v7, Lcom/android/server/BatteryService$22;

    .line 1943
    const/4 v8, 0x5

    .line 1944
    invoke-direct {v7, v1, v5, v8}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 1947
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1950
    :cond_4e
    iget-object v5, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1952
    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 1954
    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 1956
    if-eq v5, v7, :cond_50

    .line 1958
    const/4 v7, 0x1

    .line 1959
    and-int/2addr v5, v7

    .line 1960
    if-eqz v5, :cond_4f

    .line 1962
    const/4 v5, 0x1

    .line 1963
    goto :goto_31

    .line 1964
    :cond_4f
    const/4 v5, 0x0

    .line 1965
    :goto_31
    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 1967
    if-eq v7, v5, :cond_50

    .line 1969
    new-instance v7, Landroid/content/Intent;

    .line 1971
    const-string/jumbo v8, "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

    .line 1974
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1977
    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1980
    const-string/jumbo v8, "water"

    .line 1983
    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1986
    new-instance v8, Lcom/android/server/BatteryService$27;

    .line 1988
    const/4 v11, 0x0

    .line 1989
    invoke-direct {v8, v11, v7, v5}, Lcom/android/server/BatteryService$27;-><init>(ILandroid/content/Intent;Z)V

    .line 1992
    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1995
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 1997
    :cond_50
    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 1999
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2001
    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2003
    if-ne v5, v7, :cond_52

    .line 2005
    iget v5, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 2007
    iget v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 2009
    if-eq v5, v7, :cond_51

    .line 2011
    goto :goto_33

    .line 2012
    :cond_51
    :goto_32
    const/4 v5, 0x0

    .line 2013
    goto/16 :goto_35

    .line 2015
    :cond_52
    :goto_33
    new-instance v5, Landroid/os/Bundle;

    .line 2017
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2020
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2023
    move-result-wide v7

    .line 2024
    iget v11, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 2026
    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2029
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2031
    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 2033
    const-string/jumbo v11, "status"

    .line 2036
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2039
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2041
    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 2043
    const-string/jumbo v11, "health"

    .line 2046
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2049
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2051
    iget-boolean v9, v9, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 2053
    const-string/jumbo v11, "present"

    .line 2056
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2059
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2061
    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2063
    const-string/jumbo v11, "level"

    .line 2066
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2069
    const-string v9, "battery_low"

    .line 2071
    iget-boolean v11, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 2073
    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2076
    const-string/jumbo v9, "scale"

    .line 2079
    const/16 v11, 0x64

    .line 2081
    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2084
    const-string/jumbo v9, "plugged"

    .line 2087
    iget v11, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 2089
    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2092
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2094
    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 2096
    const-string/jumbo v11, "voltage"

    .line 2099
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2102
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2104
    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 2106
    const-string/jumbo v11, "temperature"

    .line 2109
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2112
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2114
    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 2116
    const-string/jumbo v11, "charge_counter"

    .line 2119
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2122
    const-string v9, "android.os.extra.EVENT_TIMESTAMP"

    .line 2124
    invoke-virtual {v5, v9, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2127
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2129
    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 2131
    const-string v11, "android.os.extra.CYCLE_COUNT"

    .line 2133
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2136
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2138
    iget v9, v9, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 2140
    const-string v11, "android.os.extra.CHARGING_STATUS"

    .line 2142
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2145
    iget-object v9, v1, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 2147
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 2150
    move-result v9

    .line 2151
    iget-object v11, v1, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 2153
    invoke-virtual {v11, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 2156
    iget-object v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 2158
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    .line 2161
    move-result v5

    .line 2162
    const/16 v11, 0x64

    .line 2164
    if-le v5, v11, :cond_53

    .line 2166
    iget-object v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 2168
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 2171
    :cond_53
    if-eqz v9, :cond_51

    .line 2173
    iget-wide v11, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    .line 2175
    sub-long v13, v7, v11

    .line 2177
    const-wide/32 v15, 0xea60

    .line 2180
    cmp-long v5, v13, v15

    .line 2182
    if-lez v5, :cond_54

    .line 2184
    const-wide/16 v7, 0x0

    .line 2186
    goto :goto_34

    .line 2187
    :cond_54
    add-long/2addr v11, v15

    .line 2188
    sub-long v7, v11, v7

    .line 2190
    :goto_34
    new-instance v5, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;

    .line 2192
    const/4 v9, 0x1

    .line 2193
    invoke-direct {v5, v9, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 2196
    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2199
    goto/16 :goto_32

    .line 2201
    :goto_35
    invoke-virtual {v1, v5}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    .line 2204
    iget-object v5, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 2206
    invoke-virtual {v5}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 2209
    if-eqz v0, :cond_56

    .line 2211
    const-wide/16 v7, 0x0

    .line 2213
    cmp-long v0, v3, v7

    .line 2215
    if-eqz v0, :cond_56

    .line 2217
    iget-object v0, v1, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 2219
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2222
    move-result-object v0

    .line 2223
    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 2225
    if-eqz v5, :cond_55

    .line 2227
    const-string v5, "battery_discharge_threshold"

    .line 2229
    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 2232
    move-result-object v10

    .line 2233
    const-string v5, "battery_discharge_duration_threshold"

    .line 2235
    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 2238
    move-result-object v0

    .line 2239
    goto :goto_36

    .line 2240
    :cond_55
    move-object v0, v10

    .line 2241
    :goto_36
    if-eqz v10, :cond_56

    .line 2243
    if-eqz v0, :cond_56

    .line 2245
    :try_start_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2248
    move-result-wide v7

    .line 2249
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2252
    move-result v5

    .line 2253
    cmp-long v3, v3, v7

    .line 2255
    if-gtz v3, :cond_56

    .line 2257
    iget v3, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2259
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2261
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2263
    sub-int/2addr v3, v4

    .line 2264
    if-lt v3, v5, :cond_56

    .line 2266
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2269
    goto :goto_37

    .line 2270
    :catch_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2272
    const-string v4, "Invalid DischargeThresholds GService string: "

    .line 2274
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2280
    const-string v0, " or "

    .line 2282
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2291
    move-result-object v0

    .line 2292
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    :cond_56
    :goto_37
    move-object/from16 v0, v18

    .line 2297
    iget-boolean v3, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    .line 2299
    if-eqz v3, :cond_5b

    .line 2301
    iget v3, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 2303
    int-to-long v3, v3

    .line 2304
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2306
    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2308
    int-to-long v7, v5

    .line 2309
    iget-boolean v5, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 2311
    const-string v9, "[SS][BattInfo]BattInfoManager"

    .line 2313
    if-nez v5, :cond_57

    .line 2315
    const-string v3, "[processAsoc]InitFinished False"

    .line 2317
    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    goto :goto_3a

    .line 2321
    :cond_57
    cmp-long v5, v7, v3

    .line 2323
    if-eqz v5, :cond_5b

    .line 2325
    const-wide/16 v10, 0x0

    .line 2327
    cmp-long v12, v3, v10

    .line 2329
    if-nez v12, :cond_58

    .line 2331
    goto :goto_3a

    .line 2332
    :cond_58
    if-gez v5, :cond_59

    .line 2334
    iget-wide v10, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 2336
    sub-long/2addr v3, v7

    .line 2337
    add-long/2addr v3, v10

    .line 2338
    iput-wide v3, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 2340
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2342
    const-string v4, "[processAsoc]mBatteryUsageSinceLastAsocUpdate:"

    .line 2344
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2347
    iget-wide v4, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 2349
    invoke-static {v3, v4, v5, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 2352
    :cond_59
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    .line 2354
    iget-object v4, v3, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 2356
    check-cast v4, [Ljava/lang/Long;

    .line 2358
    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 2361
    move-result-object v4

    .line 2362
    new-instance v5, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda0;

    .line 2364
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 2367
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 2370
    move-result v4

    .line 2371
    if-eqz v4, :cond_5a

    .line 2373
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2375
    const-string v5, "[isValueInvalid]Invalid - mCurrentValues:"

    .line 2377
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2380
    iget-object v5, v3, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 2382
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 2385
    move-result-object v5

    .line 2386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2392
    move-result-object v4

    .line 2393
    iget-object v3, v3, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 2395
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :goto_38
    const-wide/16 v3, 0x0

    .line 2400
    goto :goto_39

    .line 2401
    :cond_5a
    iget-wide v3, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 2403
    const-wide/16 v7, 0x64

    .line 2405
    cmp-long v3, v3, v7

    .line 2407
    if-ltz v3, :cond_5b

    .line 2409
    goto :goto_38

    .line 2410
    :goto_39
    iput-wide v3, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 2412
    iget-object v3, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 2414
    new-instance v4, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;

    .line 2416
    const/4 v5, 0x1

    .line 2417
    invoke-direct {v4, v0, v5}, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;I)V

    .line 2420
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2423
    :cond_5b
    :goto_3a
    iget v3, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 2425
    int-to-long v8, v3

    .line 2426
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2428
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2430
    int-to-long v10, v3

    .line 2431
    iget-object v7, v1, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 2433
    const/4 v12, 0x0

    .line 2434
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processDischargingLevel(JJZ)V

    .line 2437
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2439
    iget v4, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 2441
    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 2443
    iget v4, v3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 2445
    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 2447
    iget-boolean v4, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 2449
    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 2451
    iget v4, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2453
    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 2455
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 2457
    iput v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 2459
    iget v4, v3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 2461
    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 2463
    iget v4, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 2465
    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 2467
    iget v4, v3, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 2469
    iput v4, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 2471
    iget v4, v3, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 2473
    iput v4, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 2475
    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 2477
    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 2479
    iget v4, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 2481
    iput v4, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 2483
    iget v4, v3, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 2485
    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryCycleCount:I

    .line 2487
    iget v3, v3, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 2489
    iput v3, v1, Lcom/android/server/BatteryService;->mLastCharingState:I

    .line 2491
    iget-object v3, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2493
    iget v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 2495
    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 2497
    iget v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 2499
    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 2501
    iget-boolean v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 2503
    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 2505
    iget v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 2507
    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 2509
    iget-boolean v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 2511
    iput-boolean v4, v1, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 2513
    iget v4, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2515
    iput v4, v1, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 2517
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 2519
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 2521
    iget v3, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2523
    iput v3, v1, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 2525
    iget v3, v1, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 2527
    iput v3, v1, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 2529
    :goto_3b
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2531
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 2533
    const/4 v4, 0x2

    .line 2534
    if-ne v3, v4, :cond_5c

    .line 2536
    iget-object v3, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2538
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 2540
    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    .line 2542
    if-eq v3, v4, :cond_5c

    .line 2544
    const-string/jumbo v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_CURRENT_CHANGED"

    .line 2547
    const/high16 v4, 0x60000000

    .line 2549
    invoke-static {v4, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 2552
    move-result-object v3

    .line 2553
    iget-object v4, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2555
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 2557
    const-string/jumbo v5, "current_now"

    .line 2560
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2563
    new-instance v4, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;

    .line 2565
    const/4 v5, 0x0

    .line 2566
    invoke-direct {v4, v1, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 2569
    invoke-virtual {v6, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2572
    iget-object v3, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2574
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 2576
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    .line 2578
    :cond_5c
    iget-boolean v3, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 2580
    if-eqz v3, :cond_5d

    .line 2582
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2584
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2586
    int-to-long v3, v3

    .line 2587
    const/4 v6, 0x0

    .line 2588
    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processFullStatusUsage(JZ)V

    .line 2591
    goto :goto_3c

    .line 2592
    :cond_5d
    const/4 v6, 0x0

    .line 2593
    :goto_3c
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 2595
    if-eqz v0, :cond_5e

    .line 2597
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked()V

    .line 2600
    :cond_5e
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 2602
    if-eqz v0, :cond_5f

    .line 2604
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 2606
    if-eqz v0, :cond_5f

    .line 2608
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 2610
    if-eqz v0, :cond_5f

    .line 2612
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2614
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2616
    and-int/lit8 v3, v0, 0x20

    .line 2618
    if-eqz v3, :cond_5f

    .line 2620
    const-string v3, "/sys/class/power_supply/battery/batt_misc_event"

    .line 2622
    int-to-long v4, v0

    .line 2623
    invoke-static {v4, v5, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 2626
    :cond_5f
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2628
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 2630
    int-to-long v3, v0

    .line 2631
    iget-wide v7, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 2633
    cmp-long v0, v3, v7

    .line 2635
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 2637
    if-lez v0, :cond_60

    .line 2639
    iput-wide v3, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 2641
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Lcom/android/server/BatteryService$16;

    .line 2643
    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2646
    :cond_60
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2648
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 2650
    int-to-long v3, v0

    .line 2651
    iget-wide v7, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 2653
    cmp-long v0, v3, v7

    .line 2655
    if-lez v0, :cond_61

    .line 2657
    iput-wide v3, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 2659
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Lcom/android/server/BatteryService$16;

    .line 2661
    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2664
    :cond_61
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2666
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 2668
    iget-boolean v3, v1, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    .line 2670
    if-eq v0, v3, :cond_62

    .line 2672
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    .line 2674
    invoke-virtual {v1, v0}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    .line 2677
    :cond_62
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2679
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2681
    and-int/lit8 v0, v0, 0x40

    .line 2683
    if-eqz v0, :cond_63

    .line 2685
    const/4 v0, 0x1

    .line 2686
    goto :goto_3d

    .line 2687
    :cond_63
    move v0, v6

    .line 2688
    :goto_3d
    iget-boolean v3, v1, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 2690
    if-eq v3, v0, :cond_64

    .line 2692
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 2694
    invoke-virtual {v1, v0}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    .line 2697
    :cond_64
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2699
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2701
    const/4 v3, 0x2

    .line 2702
    and-int/2addr v0, v3

    .line 2703
    if-eqz v0, :cond_65

    .line 2705
    const/4 v9, 0x1

    .line 2706
    goto :goto_3e

    .line 2707
    :cond_65
    move v9, v6

    .line 2708
    :goto_3e
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    .line 2710
    if-eq v0, v9, :cond_67

    .line 2712
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2714
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 2716
    if-eqz v0, :cond_66

    .line 2718
    if-eqz v9, :cond_66

    .line 2720
    const-string/jumbo v0, "notify wireless backpack on"

    .line 2723
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    const/4 v0, 0x3

    .line 2727
    iput v0, v1, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 2729
    iget-object v3, v1, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 2731
    if-eqz v3, :cond_66

    .line 2733
    const/16 v4, 0xb

    .line 2735
    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 2738
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 2740
    iget v3, v1, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 2742
    const/4 v4, 0x1

    .line 2743
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 2746
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2748
    const-string/jumbo v3, "setWirelessChargingMode(All): "

    .line 2751
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2754
    iget v3, v1, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 2756
    invoke-static {v0, v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 2759
    :cond_66
    iput-boolean v9, v1, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    .line 2761
    :cond_67
    return-void
.end method

.method public final registerContentObserver(Landroid/content/ContentResolver;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "led_indicator_charing"

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, -0x2

    .line 6
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x0

    .line 11
    if-ne v3, v1, :cond_0

    .line 13
    move v3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v4

    .line 16
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 18
    const-string/jumbo v3, "led_indicator_low_battery"

    .line 21
    invoke-static {p1, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 24
    move-result v5

    .line 25
    if-ne v5, v1, :cond_1

    .line 27
    move v5, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v5, v4

    .line 30
    :goto_1
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    const-string v6, "!@Led Charging Settings = "

    .line 36
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    const-string v6, "BatteryService"

    .line 50
    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    const-string v7, "!@Led Low Battery Settings = "

    .line 57
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 62
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 75
    move-result-object v0

    .line 76
    iget-object v5, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 78
    const/4 v7, -0x1

    .line 79
    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 89
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    .line 91
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V

    .line 96
    const-string v0, "adaptive_fast_charging"

    .line 98
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    move-result-object v0

    .line 102
    iget-object v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 104
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 107
    :cond_2
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    .line 109
    if-eqz v0, :cond_4

    .line 111
    const-string/jumbo v0, "super_fast_charging"

    .line 114
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 117
    move-result v3

    .line 118
    if-ne v3, v1, :cond_3

    .line 120
    move v3, v1

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    move v3, v4

    .line 123
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    const-string v5, "!@SuperFastCharging Settings = "

    .line 129
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 134
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v3

    .line 141
    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setSuperFastCharging(Z)V

    .line 149
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 152
    move-result-object v0

    .line 153
    iget-object v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 155
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 158
    :cond_4
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    .line 160
    if-eqz v0, :cond_8

    .line 162
    const-string/jumbo v0, "show_wireless_charger_menu"

    .line 165
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 168
    move-result v0

    .line 169
    if-ne v0, v1, :cond_5

    .line 171
    move v0, v1

    .line 172
    goto :goto_3

    .line 173
    :cond_5
    move v0, v4

    .line 174
    :goto_3
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 176
    const-string/jumbo v0, "wireless_fast_charging"

    .line 179
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 182
    move-result v3

    .line 183
    if-ne v3, v1, :cond_6

    .line 185
    move v3, v1

    .line 186
    goto :goto_4

    .line 187
    :cond_6
    move v3, v4

    .line 188
    :goto_4
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    const-string v5, "!@WirelessFastCharging Settings = "

    .line 194
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 199
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v3

    .line 206
    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 211
    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    .line 214
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 217
    move-result-object v0

    .line 218
    iget-object v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 220
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 223
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    .line 225
    if-eqz v0, :cond_8

    .line 227
    const-string/jumbo v0, "refresh_rate_mode"

    .line 230
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 233
    move-result v3

    .line 234
    iput v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    .line 238
    const-string v5, "!@RefreshRateMode Setting = "

    .line 240
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    iget v5, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 245
    invoke-static {v3, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 248
    iget v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 250
    const-string v5, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    .line 252
    if-nez v3, :cond_7

    .line 254
    const-wide/16 v8, 0x5

    .line 256
    invoke-static {v8, v9, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 259
    goto :goto_5

    .line 260
    :cond_7
    const-wide/16 v8, 0x6

    .line 262
    invoke-static {v8, v9, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 265
    :goto_5
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 268
    move-result-object v0

    .line 269
    iget-object v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 271
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 274
    :cond_8
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    .line 276
    if-eqz v0, :cond_a

    .line 278
    const-string/jumbo v0, "pass_through"

    .line 281
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 284
    move-result v3

    .line 285
    if-ne v3, v1, :cond_9

    .line 287
    move v3, v1

    .line 288
    goto :goto_6

    .line 289
    :cond_9
    move v3, v4

    .line 290
    :goto_6
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    .line 294
    const-string v5, "!@mPassThroughSettingsEnable Settings = "

    .line 296
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 301
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v3

    .line 308
    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 313
    invoke-static {v3}, Lcom/android/server/BatteryService;->setPassThrough(Z)V

    .line 316
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 319
    move-result-object v0

    .line 320
    iget-object v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 322
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 325
    :cond_a
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 327
    iget-object v3, p0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 329
    const-string/jumbo v5, "protect_battery"

    .line 332
    if-eqz v0, :cond_b

    .line 334
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 341
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 346
    move-result-object v0

    .line 347
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 350
    move-result v3

    .line 351
    iput v3, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    .line 355
    const-string/jumbo v5, "mProtectBatteryMode:"

    .line 358
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    iget v5, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 363
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    move-result-object v3

    .line 370
    sget-object v5, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 372
    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget v3, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    .line 377
    iput v3, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    .line 381
    const-string/jumbo v8, "mProtectionThreshold:"

    .line 384
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    iget v8, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 389
    invoke-static {v5, v8, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 392
    const-string v5, "battery_protection_threshold"

    .line 394
    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 397
    move-result v0

    .line 398
    iput v0, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    .line 402
    const-string/jumbo v3, "mMaximumProtectionThreshold:"

    .line 405
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    iget v3, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 410
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-result-object v0

    .line 417
    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v0, Lcom/android/server/BatteryService$15;

    .line 422
    const/4 v3, 0x5

    .line 423
    invoke-direct {v0, p0, v3}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 426
    iput-object v0, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThresholdObserver:Lcom/android/server/BatteryService$15;

    .line 428
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 431
    move-result-object v0

    .line 432
    iget-object v3, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThresholdObserver:Lcom/android/server/BatteryService$15;

    .line 434
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 437
    const/16 v0, 0x5f

    .line 439
    iput v0, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    .line 443
    const-string/jumbo v3, "mLtcHighThreshold:"

    .line 446
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    .line 451
    invoke-static {v0, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 454
    iget v0, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    .line 456
    int-to-long v8, v0

    .line 457
    const-string v0, "/efs/Battery/batt_ltc_highsoc_threshold"

    .line 459
    invoke-static {v8, v9, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 462
    const/16 v0, 0x2760

    .line 464
    iput v0, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    .line 468
    const-string/jumbo v3, "mLtcHighSocDuration:"

    .line 471
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    .line 476
    invoke-static {v0, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 479
    iget v0, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    .line 481
    int-to-long v8, v0

    .line 482
    const-string v0, "/efs/Battery/batt_ltc_highsoc_duration"

    .line 484
    invoke-static {v8, v9, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 487
    const/16 v0, 0x4b

    .line 489
    iput v0, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v3, "mLtcReleaseThreshold:"

    .line 496
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    iget v3, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    .line 501
    invoke-static {v0, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 504
    iget v0, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    .line 506
    int-to-long v8, v0

    .line 507
    const-string v0, "/efs/Battery/batt_ltc_release_threshold"

    .line 509
    invoke-static {v8, v9, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    .line 515
    goto :goto_9

    .line 516
    :cond_b
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    .line 518
    if-eqz v0, :cond_e

    .line 520
    invoke-static {p1, v5, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 523
    move-result v0

    .line 524
    if-ne v0, v1, :cond_c

    .line 526
    move v0, v1

    .line 527
    goto :goto_7

    .line 528
    :cond_c
    move v0, v4

    .line 529
    :goto_7
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 531
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 533
    iget-object v8, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    .line 535
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    invoke-static {p1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 541
    move-result v8

    .line 542
    if-ne v8, v1, :cond_d

    .line 544
    move v8, v1

    .line 545
    goto :goto_8

    .line 546
    :cond_d
    move v8, v4

    .line 547
    :goto_8
    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 549
    new-instance v8, Ljava/lang/StringBuilder;

    .line 551
    const-string v9, "!@mFullCapacityEnable Settings = "

    .line 553
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 558
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    move-result-object v8

    .line 565
    invoke-static {v6, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v8, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

    .line 570
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 573
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 580
    :cond_e
    :goto_9
    iget-object v0, p0, Lcom/android/server/BatteryService;->mMultiSbpController:Lcom/android/server/battery/MultiSbpController;

    .line 582
    if-eqz v0, :cond_f

    .line 584
    new-instance v3, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;

    .line 586
    invoke-direct {v3, v0}, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/MultiSbpController;)V

    .line 589
    iget-object v0, v0, Lcom/android/server/battery/MultiSbpController;->mHandler:Landroid/os/Handler;

    .line 591
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 594
    :cond_f
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 596
    if-eqz v0, :cond_10

    .line 598
    const-string/jumbo v0, "tx_battery_limit"

    .line 601
    const/16 v3, 0x1e

    .line 603
    invoke-static {p1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 606
    move-result v3

    .line 607
    iput v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    .line 611
    const-string v5, "!@Tx Battery Limit Settings = "

    .line 613
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    iget v5, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 618
    invoke-static {v3, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 621
    iget v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 623
    const-string v5, "/sys/class/power_supply/battery/wc_tx_stop_capacity"

    .line 625
    int-to-long v8, v3

    .line 626
    invoke-static {v8, v9, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 629
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 632
    move-result-object v0

    .line 633
    iget-object v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 635
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 638
    :cond_10
    const-string v0, "/sys/class/power_supply/battery/wc_param_info"

    .line 640
    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 643
    move-result-object v0

    .line 644
    iget v3, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    .line 646
    if-eq v3, v7, :cond_11

    .line 648
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 651
    move-result v0

    .line 652
    if-nez v0, :cond_11

    .line 654
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 656
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 659
    move-result-object v0

    .line 660
    const-string/jumbo v3, "wireless_wc_write"

    .line 663
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 666
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 669
    move-result-object v0

    .line 670
    iget-object v5, p0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 672
    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 675
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 677
    const-string/jumbo v0, "wc param"

    .line 680
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    .line 683
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 685
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 688
    move-result-object p0

    .line 689
    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 692
    :cond_11
    return-void
.end method

.method public final resetBattery(Ljava/io/PrintWriter;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 8
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 10
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 12
    invoke-static {v0, v2}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 15
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v0, p0, p2, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;I)V

    .line 21
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 24
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 26
    if-eqz p1, :cond_1

    .line 28
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    invoke-static {p1}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 33
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 35
    :cond_1
    return-void
.end method

.method public final sendBatteryChangedIntentLocked()V
    .locals 13

    .line 1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 3
    const/high16 v1, 0x60000000

    .line 5
    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 11
    const/high16 v2, 0x20000000

    .line 13
    invoke-static {v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 16
    move-result-object v1

    .line 17
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 19
    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 21
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v4

    .line 27
    iget-object v5, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 29
    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 31
    const/4 v6, 0x2

    .line 32
    const/4 v7, 0x1

    .line 33
    const/4 v8, 0x0

    .line 34
    if-eqz v5, :cond_2

    .line 36
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 38
    iget-boolean v9, v5, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 40
    if-nez v9, :cond_1

    .line 42
    iget-boolean v9, v5, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 44
    if-nez v9, :cond_1

    .line 46
    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 48
    if-eqz v5, :cond_0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput v7, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    iput v6, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 56
    :goto_1
    iput v7, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    iput v8, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 61
    iput v8, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 63
    :goto_2
    iget v5, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 65
    const-string v9, "BatteryService"

    .line 67
    iget-object v10, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 69
    const-string/jumbo v11, "pogo_plugged"

    .line 72
    if-ne v3, v5, :cond_3

    .line 74
    iget v3, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 76
    if-eq v2, v3, :cond_6

    .line 78
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 80
    if-eqz v2, :cond_4

    .line 82
    const-string/jumbo v2, "device_provisioned"

    .line 85
    invoke-static {v4, v2, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 88
    move-result v2

    .line 89
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    move-result-object v3

    .line 95
    const-string/jumbo v4, "kids_home_mode"

    .line 98
    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 101
    move-result v3

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    move v2, v8

    .line 104
    move v3, v2

    .line 105
    :goto_3
    if-eqz v2, :cond_5

    .line 107
    if-nez v3, :cond_5

    .line 109
    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 111
    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 113
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 118
    invoke-virtual {v1, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    new-instance v2, Lcom/android/server/BatteryService$22;

    .line 123
    const/4 v3, 0x4

    .line 124
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 127
    invoke-virtual {v10, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    goto :goto_4

    .line 131
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v4, "device_provisioned: "

    .line 136
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v2, "kids_home_mode: "

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    invoke-static {v9, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 160
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 162
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 164
    const/4 v2, 0x5

    .line 165
    const/4 v3, 0x4

    .line 166
    const/16 v4, 0x64

    .line 168
    const v5, 0x1080b8d

    .line 171
    if-ne v1, v6, :cond_7

    .line 173
    goto :goto_6

    .line 174
    :cond_7
    const/4 v6, 0x3

    .line 175
    const v12, 0x1080b7f

    .line 178
    if-ne v1, v6, :cond_9

    .line 180
    :cond_8
    move v5, v12

    .line 181
    goto :goto_6

    .line 182
    :cond_9
    if-eq v1, v3, :cond_b

    .line 184
    if-ne v1, v2, :cond_a

    .line 186
    goto :goto_5

    .line 187
    :cond_a
    const v5, 0x1080b9b

    .line 190
    goto :goto_6

    .line 191
    :cond_b
    :goto_5
    const/16 v1, 0xf

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_8

    .line 199
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 201
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 203
    if-lt v1, v4, :cond_8

    .line 205
    :goto_6
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 207
    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 209
    if-eqz v1, :cond_c

    .line 211
    move v1, v7

    .line 212
    goto :goto_7

    .line 213
    :cond_c
    move v1, v8

    .line 214
    :goto_7
    iget-object v6, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 216
    iget v12, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 218
    if-ge v12, v4, :cond_d

    .line 220
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 222
    if-ne v6, v2, :cond_d

    .line 224
    goto :goto_8

    .line 225
    :cond_d
    move v7, v8

    .line 226
    :goto_8
    const-string/jumbo v2, "seq"

    .line 229
    iget v6, p0, Lcom/android/server/BatteryService;->mSequence:I

    .line 231
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 236
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 238
    const-string/jumbo v6, "status"

    .line 241
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 246
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 248
    const-string/jumbo v6, "health"

    .line 251
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 256
    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 258
    const-string/jumbo v6, "present"

    .line 261
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 266
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 268
    const-string/jumbo v6, "level"

    .line 271
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v2, "battery_low"

    .line 276
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 278
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const-string/jumbo v2, "scale"

    .line 284
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    const-string/jumbo v2, "icon-small"

    .line 290
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string/jumbo v2, "plugged"

    .line 296
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 298
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 303
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 305
    const-string/jumbo v4, "voltage"

    .line 308
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 313
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 315
    const-string/jumbo v4, "temperature"

    .line 318
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 323
    iget-object v2, v2, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 325
    const-string/jumbo v4, "technology"

    .line 328
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string/jumbo v2, "invalid_charger"

    .line 334
    iget v4, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 336
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 341
    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 343
    const-string/jumbo v4, "max_charging_current"

    .line 346
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 351
    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 353
    const-string/jumbo v4, "max_charging_voltage"

    .line 356
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 361
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 363
    const-string/jumbo v4, "charge_counter"

    .line 366
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 371
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 373
    const-string v4, "android.os.extra.CYCLE_COUNT"

    .line 375
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 380
    iget v2, v2, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 382
    const-string v4, "android.os.extra.CHARGING_STATUS"

    .line 384
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 389
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 391
    const-string/jumbo v4, "online"

    .line 394
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 399
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 401
    const-string/jumbo v4, "charge_type"

    .line 404
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 409
    iget-boolean v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 411
    const-string/jumbo v4, "power_sharing"

    .line 414
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    const-string/jumbo v2, "hv_charger"

    .line 420
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 423
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 425
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 427
    const-string/jumbo v4, "charger_type"

    .line 430
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 435
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 440
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 442
    const-string/jumbo v4, "misc_event"

    .line 445
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 450
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 452
    const-string/jumbo v4, "current_event"

    .line 455
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const-string/jumbo v2, "protection"

    .line 461
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    .line 466
    const-string v4, "Sending ACTION_BATTERY_CHANGED: level:"

    .line 468
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 473
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 475
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    const-string v4, ", status:"

    .line 480
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 485
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 487
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    const-string v4, ", health:"

    .line 492
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 497
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 499
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    const-string v4, ", remain:"

    .line 504
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 509
    iget-wide v4, v4, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 511
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 514
    const-string v4, ", ac:"

    .line 516
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 521
    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 523
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 526
    const-string v4, ", usb:"

    .line 528
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 533
    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 535
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 538
    const-string v4, ", wireless:"

    .line 540
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 545
    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 547
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 550
    const-string v4, ", pogo:"

    .line 552
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 557
    iget-boolean v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 559
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 562
    const-string v4, ", misc:0x"

    .line 564
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 569
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 571
    const-string v5, ", charge_type:"

    .line 573
    invoke-static {v4, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 576
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 578
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 580
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    const-string v4, ", charger_type:"

    .line 585
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 590
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 592
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    const-string v4, ", voltage:"

    .line 597
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 602
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 604
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 607
    const-string v4, ", temperature:"

    .line 609
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 614
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 616
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    const-string v4, ", online:"

    .line 621
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 626
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 628
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    const-string v4, ", charging_status:"

    .line 633
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 638
    iget v4, v4, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 640
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    const-string v4, ", cycle_count:"

    .line 645
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 650
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 652
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    const-string v4, ", current_avg:"

    .line 657
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 662
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 664
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 667
    const-string v4, ", ps:"

    .line 669
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 674
    iget-boolean v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 676
    const-string v5, ", hvc:"

    .line 678
    const-string v6, ", current_event:0x"

    .line 680
    invoke-static {v2, v4, v5, v1, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 683
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 685
    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 687
    const-string v4, ", mcc:"

    .line 689
    invoke-static {v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 694
    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 696
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 699
    const-string v1, ", mcv:"

    .line 701
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 706
    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 708
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 711
    const-string v1, ", cc:"

    .line 713
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 718
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 720
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 723
    const-string v1, ", present:"

    .line 725
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 730
    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 732
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 735
    const-string v1, ", scale:100, technology:"

    .line 737
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 742
    iget-object v1, v1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 744
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    const-string v1, ", protection:"

    .line 749
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    move-result-object v1

    .line 759
    invoke-static {v9, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {v3, v1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 765
    new-instance v1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;

    .line 767
    const/4 v2, 0x1

    .line 768
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 771
    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 774
    return-void
.end method

.method public final sendDeteriorationIntentLocked(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string/jumbo v1, "r0q,r0s,g0q,g0s,b0q,b0s"

    .line 6
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 14
    sget-object v3, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 16
    const/high16 v4, 0x10000000

    .line 18
    const-string/jumbo v5, "deterioration"

    .line 21
    const-string/jumbo v6, "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"

    .line 24
    const/16 v7, 0xf

    .line 26
    const-wide/16 v8, 0xa

    .line 28
    const/4 v10, 0x0

    .line 29
    const-wide/16 v11, 0x2710

    .line 31
    const/4 v13, 0x1

    .line 32
    if-nez v1, :cond_5

    .line 34
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 37
    move-result-object v1

    .line 38
    const-string v14, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_BSOH_GALAXYDIAGNOSTICS"

    .line 40
    invoke-virtual {v1, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 49
    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 51
    const/high16 v14, 0xf0000

    .line 53
    and-int/2addr v1, v14

    .line 54
    shr-int/lit8 v1, v1, 0x10

    .line 56
    if-eqz p1, :cond_1

    .line 58
    if-eqz v1, :cond_4

    .line 60
    move-wide v8, v11

    .line 61
    move v10, v13

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget v14, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 65
    if-eq v14, v1, :cond_4

    .line 67
    iget-boolean v14, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 69
    if-eqz v14, :cond_3

    .line 71
    if-ne v1, v7, :cond_3

    .line 73
    iget-boolean v7, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 75
    if-nez v7, :cond_2

    .line 77
    move-wide v8, v11

    .line 78
    :cond_2
    move v10, v13

    .line 79
    :cond_3
    iput v1, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 81
    :cond_4
    :goto_0
    if-eqz v10, :cond_a

    .line 83
    new-instance v7, Landroid/content/Intent;

    .line 85
    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v7, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    new-instance v3, Lcom/android/server/BatteryService$29;

    .line 99
    const/4 v4, 0x1

    .line 100
    invoke-direct {v3, v0, v1, v7, v4}, Lcom/android/server/BatteryService$29;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;I)V

    .line 103
    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    goto :goto_5

    .line 107
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/server/battery/BattUtils;->readNodeAsDouble()D

    .line 110
    move-result-wide v14

    .line 111
    double-to-int v1, v14

    .line 112
    const/16 v14, 0x37

    .line 114
    if-ge v1, v14, :cond_6

    .line 116
    if-ltz v1, :cond_6

    .line 118
    new-instance v14, Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v15, "sendBroadcastDeterioration bsoh : "

    .line 123
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    const-string v14, "BatteryService"

    .line 135
    invoke-static {v14, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move v1, v7

    .line 139
    goto :goto_2

    .line 140
    :cond_6
    move v1, v13

    .line 141
    :goto_2
    if-eqz p1, :cond_7

    .line 143
    move-wide v8, v11

    .line 144
    :goto_3
    move v10, v13

    .line 145
    goto :goto_4

    .line 146
    :cond_7
    iget v14, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 148
    if-eq v14, v1, :cond_9

    .line 150
    iget-boolean v14, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 152
    if-eqz v14, :cond_9

    .line 154
    if-ne v1, v7, :cond_9

    .line 156
    iget-boolean v7, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 158
    if-nez v7, :cond_8

    .line 160
    move-wide v8, v11

    .line 161
    :cond_8
    iput v1, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 163
    goto :goto_3

    .line 164
    :cond_9
    :goto_4
    if-eqz v10, :cond_a

    .line 166
    new-instance v7, Landroid/content/Intent;

    .line 168
    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v7, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    new-instance v3, Lcom/android/server/BatteryService$29;

    .line 182
    const/4 v4, 0x0

    .line 183
    invoke-direct {v3, v0, v1, v7, v4}, Lcom/android/server/BatteryService$29;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;I)V

    .line 186
    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :cond_a
    :goto_5
    return-void
.end method

.method public final sendWirelessPowerSharingIntentLocked()V
    .locals 12

    .line 1
    const-string/jumbo v0, "setWirelessChargingMode(TSP): "

    .line 4
    const-string/jumbo v1, "setWirelessChargingMode(DEVID_SPEN): "

    .line 7
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 12
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 14
    and-int/lit8 v4, v3, 0x1

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v4, :cond_0

    .line 20
    move v4, v5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v4, v6

    .line 23
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 25
    const/high16 v8, 0x10000000

    .line 27
    if-eq v7, v4, :cond_2

    .line 29
    new-instance v7, Landroid/content/Intent;

    .line 31
    const-string/jumbo v9, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

    .line 34
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v9, "enabled"

    .line 40
    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    sget-object v9, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 48
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v10, Lcom/android/server/BatteryService$27;

    .line 55
    const/4 v11, 0x1

    .line 56
    invoke-direct {v10, v11, v7, v4}, Lcom/android/server/BatteryService$27;-><init>(ILandroid/content/Intent;Z)V

    .line 59
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 64
    iput v4, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 66
    iget-object v7, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 68
    if-eqz v7, :cond_1

    .line 70
    const/16 v9, 0xb

    .line 72
    invoke-virtual {v7, v9, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 75
    const-string v4, "BatteryService"

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    iget v1, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 84
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_3

    .line 97
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    .line 99
    if-eqz v1, :cond_2

    .line 101
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 103
    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 107
    if-eqz v1, :cond_2

    .line 109
    iget v4, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 111
    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 114
    const-string v1, "BatteryService"

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 123
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    and-int/lit8 v0, v3, 0x2

    .line 135
    if-eqz v0, :cond_3

    .line 137
    goto :goto_2

    .line 138
    :cond_3
    move v5, v6

    .line 139
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 141
    if-eq v0, v5, :cond_4

    .line 143
    new-instance v0, Landroid/content/Intent;

    .line 145
    const-string/jumbo v1, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED"

    .line 148
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "connected"

    .line 154
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    sget-object v1, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 167
    new-instance v4, Lcom/android/server/BatteryService$33;

    .line 169
    invoke-direct {v4, p0, v5, v0}, Lcom/android/server/BatteryService$33;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    .line 172
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 177
    :cond_4
    iget v0, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    .line 179
    if-eq v3, v0, :cond_5

    .line 181
    new-instance v0, Landroid/content/Intent;

    .line 183
    const-string/jumbo v1, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT"

    .line 186
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v1, "tx_event"

    .line 192
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 200
    new-instance v4, Lcom/android/server/BatteryService$34;

    .line 202
    invoke-direct {v4, v3, v0}, Lcom/android/server/BatteryService$34;-><init>(ILandroid/content/Intent;)V

    .line 205
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    iput v3, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    .line 210
    :cond_5
    monitor-exit v2

    .line 211
    return-void

    .line 212
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    throw p0
.end method

.method public final setAdaptiveFastCharging(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 3
    xor-int/lit8 v1, p1, 0x1

    .line 5
    const-string v2, "afc"

    .line 7
    iget v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    .line 9
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    .line 12
    xor-int/lit8 v0, p1, 0x1

    .line 14
    iget-object p0, p0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    .line 16
    invoke-static {p0, v0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    .line 19
    move-result p0

    .line 20
    const-string v0, "BatteryService"

    .line 22
    if-eqz p0, :cond_0

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v1, "success to set AFC sysfs as "

    .line 29
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string/jumbo p0, "fail to set AFC sysfs"

    .line 46
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void
.end method

.method public final setSuperFastCharging(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 3
    xor-int/lit8 v1, p1, 0x1

    .line 5
    const-string/jumbo v2, "sfc"

    .line 8
    iget p0, p0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    .line 10
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    .line 13
    xor-int/lit8 p0, p1, 0x1

    .line 15
    const-string v0, "/sys/class/power_supply/battery/pd_disable"

    .line 17
    invoke-static {v0, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    .line 20
    move-result p0

    .line 21
    const-string v0, "BatteryService"

    .line 23
    if-eqz p0, :cond_0

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v1, "success to set SFC sysfs as "

    .line 30
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string/jumbo p0, "fail to set SFC sysfs"

    .line 47
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return-void
.end method

.method public final setWirelessChargingState(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "wirelessChargingState: "

    .line 4
    const-string v1, ", notifyWirelessEnabled: "

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "BatteryService"

    .line 21
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v0, "/sys/class/sec/switch/wireless"

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz p1, :cond_0

    .line 29
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 31
    if-nez v3, :cond_0

    .line 33
    const-string/jumbo p1, "notify wireless on"

    .line 36
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 41
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 43
    invoke-static {v0, v2}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-nez p1, :cond_1

    .line 49
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 51
    if-eqz p1, :cond_1

    .line 53
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    .line 55
    if-nez p1, :cond_1

    .line 57
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 59
    if-nez p1, :cond_1

    .line 61
    const-string/jumbo p1, "notify wireless off"

    .line 64
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 70
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 72
    const-string p1, "0"

    .line 74
    invoke-static {v0, p1}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 79
    if-eqz p1, :cond_2

    .line 81
    const/16 v0, 0xb

    .line 83
    iget v3, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 85
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 88
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 90
    iget v0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 92
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v0, "setWirelessChargingMode(All): "

    .line 100
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget p0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 105
    invoke-static {p1, p0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 108
    :cond_2
    return-void
.end method

.method public final setWirelessFastCharging(Z)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    .line 4
    if-eq v1, v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 8
    xor-int/lit8 v0, p1, 0x1

    .line 10
    const-string/jumbo v2, "wfc"

    .line 13
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    .line 16
    :cond_0
    const-string p0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    .line 18
    if-eqz p1, :cond_1

    .line 20
    const-wide/16 v0, 0x2

    .line 22
    invoke-static {v0, v1, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-wide/16 v0, 0x1

    .line 28
    invoke-static {v0, v1, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 31
    :goto_0
    return-void
.end method

.method public final setWirelessPowerSharingExternelEventInternal(II)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setWirelessPowerSharingExternelEventInternal packageNum: "

    .line 4
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "BatteryService"

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, " value: "

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget v0, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    .line 34
    not-int p1, p1

    .line 35
    and-int/2addr p1, v0

    .line 36
    or-int/2addr p1, p2

    .line 37
    if-eq p1, v0, :cond_0

    .line 39
    const-string p2, "/sys/class/power_supply/battery/ext_event"

    .line 41
    int-to-long v2, p1

    .line 42
    invoke-static {v2, v3, p2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 45
    iput p1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final unplugBattery(Ljava/io/PrintWriter;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 7
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 9
    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 17
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 19
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 21
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 26
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;

    .line 28
    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;I)V

    .line 31
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 34
    return-void
.end method

.method public final updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    const-string v1, "adaptive_fast_charging"

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 8
    move-result p1

    .line 9
    if-ne p1, v2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "!@AdaptiveFastCharging Settings = "

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const-string v0, "BatteryService"

    .line 33
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    .line 41
    return-void
.end method

.method public final updateBatteryWarningLevelLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    const v1, 0x10e00d5

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 18
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 20
    iput v0, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    .line 22
    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 24
    if-ge v0, v1, :cond_0

    .line 26
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 28
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 30
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 36
    const v2, 0x10e00d4

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 42
    move-result v1

    .line 43
    add-int/2addr v1, v0

    .line 44
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 50
    return-void
.end method

.method public final writeProtectBatteryValues()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "writeProtectBatteryValues:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 20
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget v0, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 25
    const-string v1, "/efs/Battery/batt_full_capacity"

    .line 27
    const-string v2, "/efs/Battery/batt_soc_rechg"

    .line 29
    const-string v3, "/sys/class/power_supply/battery/batt_soc_rechg"

    .line 31
    const-wide/16 v4, 0x64

    .line 33
    const-string v6, "/sys/class/power_supply/battery/batt_full_capacity"

    .line 35
    const-wide/16 v7, 0x0

    .line 37
    if-eqz v0, :cond_3

    .line 39
    const/4 v9, 0x1

    .line 40
    if-eq v0, v9, :cond_2

    .line 42
    const/4 v9, 0x2

    .line 43
    if-eq v0, v9, :cond_1

    .line 45
    const/4 p0, 0x3

    .line 46
    if-eq v0, p0, :cond_0

    .line 48
    const/4 p0, 0x4

    .line 49
    if-eq v0, p0, :cond_0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v4, v5, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 55
    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 58
    const-wide/16 v0, 0x1

    .line 60
    invoke-static {v0, v1, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 63
    invoke-static {v0, v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget p0, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string p0, " HIGHSOC"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {v6, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    invoke-static {v7, v8, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 92
    invoke-static {v7, v8, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget v4, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v4, " OPTION"

    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-static {v6, v0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    iget p0, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 120
    int-to-long v4, p0

    .line 121
    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 124
    invoke-static {v7, v8, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 127
    invoke-static {v7, v8, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    invoke-static {v4, v5, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 134
    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 137
    invoke-static {v7, v8, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 140
    invoke-static {v7, v8, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 143
    :goto_0
    return-void
.end method
