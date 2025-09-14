.class public final Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# static fields
.field public static final DEBUG:Z

.field static final LIGHT_STATE_ACTIVE:I = 0x0

.field static final LIGHT_STATE_IDLE:I = 0x4

.field static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6

.field static final LIGHT_STATE_INACTIVE:I = 0x1

.field static final LIGHT_STATE_OVERRIDE:I = 0x7

.field static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5

.field static final MSG_REPORT_STATIONARY_STATUS:I = 0x7

.field static final STATE_ACTIVE:I = 0x0

.field static final STATE_IDLE:I = 0x5

.field static final STATE_IDLE_MAINTENANCE:I = 0x6

.field static final STATE_IDLE_PENDING:I = 0x2

.field static final STATE_INACTIVE:I = 0x1

.field static final STATE_LOCATING:I = 0x4

.field static final STATE_QUICK_DOZE_DELAY:I = 0x7

.field static final STATE_SENSING:I = 0x3


# instance fields
.field public mActiveIdleOpCount:I

.field public mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmsActive:Z

.field public final mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

.field public mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field public final mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public mBatterySaverEnabled:Z

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field public mCharging:Z

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field public mConstraintController:Lcom/android/server/deviceidle/TvConstraintController;

.field public final mConstraints:Landroid/util/ArrayMap;

.field public mCurLightIdleBudget:J

.field final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mDeepBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

.field public mDeepEnabled:Z

.field public final mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

.field public final mEventCmds:[I

.field public final mEventReasons:[Ljava/lang/String;

.field public final mEventTimes:[J

.field public mForceIdle:Z

.field public mForceModeManagerOffBodyState:Z

.field public mForceModeManagerQuickDozeRequest:Z

.field public mForceType:Ljava/lang/String;

.field public final mGenericLocationListener:Lcom/android/server/DeviceIdleController$6;

.field public mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mGpsLocationListener:Lcom/android/server/DeviceIdleController$6;

.field public final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field public mHasFusedLocation:Z

.field public mHasGps:Z

.field public mIdleIntent:Landroid/content/Intent;

.field public mIdleIntentOptions:Landroid/os/Bundle;

.field public final mIdleStartedDoneReceiver:Lcom/android/server/DeviceIdleController$4;

.field public mInactiveTimeout:J

.field public final mInjector:Lcom/android/server/DeviceIdleController$Injector;

.field public final mInteractivityReceiver:Lcom/android/server/DeviceIdleController$1;

.field public final mIsLocationPrefetchEnabled:Z

.field public mIsOffBody:Z

.field public mJobsActive:Z

.field public mLastGenericLocation:Landroid/location/Location;

.field public mLastGpsLocation:Landroid/location/Location;

.field public mLastMotionEventElapsed:J

.field public final mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

.field public final mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

.field public mLightEnabled:Z

.field public mLightIdleIntent:Landroid/content/Intent;

.field public mLightIdleIntentOptions:Landroid/os/Bundle;

.field public mLightState:I

.field public mLocalActivityManager:Landroid/app/ActivityManagerInternal;

.field public mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mLocalAlarmManager:Lcom/android/server/alarm/AlarmManagerService$LocalService;

.field public mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mLocalService:Lcom/android/server/DeviceIdleController$LocalService;

.field public mLocated:Z

.field public mLocating:Z

.field public mLocationRequest:Landroid/location/LocationRequest;

.field public mMaintenanceStartTime:J

.field final mModeManagerOffBodyStateConsumer:Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;

.field final mModeManagerQuickDozeRequestConsumer:Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;

.field public mModeManagerRequestedQuickDoze:Z

.field final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

.field public final mMotionRegistrationAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

.field public mMotionSensor:Landroid/hardware/Sensor;

.field public final mMotionTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

.field public mNetworkConnected:Z

.field public mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field public mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

.field public mNextAlarmTime:J

.field public mNextIdleDelay:J

.field public mNextIdlePendingDelay:J

.field public mNextLightAlarmTime:J

.field public mNextLightIdleDelay:J

.field public mNextLightIdleDelayFlex:J

.field public mNextSensingTimeoutAlarmTime:J

.field public mNotMoving:Z

.field public mNumBlockingConstraints:I

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerSaveTempWhilelistChangedOptions:Landroid/os/Bundle;

.field public mPowerSaveTempWhitelistChangedIntent:Landroid/content/Intent;

.field public mPowerSaveWhitelistAllAppIdArray:[I

.field public final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field public final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

.field public final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

.field public mPowerSaveWhitelistChangedIntent:Landroid/content/Intent;

.field public mPowerSaveWhitelistChangedOptions:Landroid/os/Bundle;

.field public mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field public final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field public final mPowerSaveWhitelistPrintErrorApps:Landroid/util/ArraySet;

.field public final mPowerSaveWhitelistReviewedApps:Landroid/util/ArraySet;

.field public final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field public final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field public mPowerSaveWhitelistUserAppIdArray:[I

.field public final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field public final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

.field public final mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

.field public mQuickDozeActivated:Z

.field public mQuickDozeActivatedWhileIdling:Z

.field public final mReceiver:Lcom/android/server/DeviceIdleController$1;

.field public final mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

.field public mScreenLocked:Z

.field public final mScreenObserver:Lcom/android/server/DeviceIdleController$8;

.field public mScreenOn:Z

.field public final mSensingTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$2;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mState:I

.field public final mStationaryListeners:Landroid/util/ArraySet;

.field public final mTempAllowlistChangeListeners:Landroid/util/ArraySet;

.field public mTempWhitelistAppIdArray:[I

.field public final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

.field public final mUseMotionSensor:Z


# direct methods
.method public static -$$Nest$mmaybeBecomeActiveOnModeManagerEventsLocked(Lcom/android/server/DeviceIdleController;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mIsOffBody:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string/jumbo v0, "on_body"

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    monitor-exit p0

    .line 29
    :goto_0
    return-void

    .line 30
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DeviceIdleController"

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
    sput-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/android/server/DeviceIdleController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/DeviceIdleController$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;-><init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/DeviceIdleController$Injector;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 4
    new-instance v1, Lcom/android/server/DeviceIdleController$BatteryLevel;

    invoke-direct {v1}, Lcom/android/server/DeviceIdleController$BatteryLevel;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 5
    new-instance v1, Lcom/android/server/DeviceIdleController$BatteryLevel;

    invoke-direct {v1}, Lcom/android/server/DeviceIdleController$BatteryLevel;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 6
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 7
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 8
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 10
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 11
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 12
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 13
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 14
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 15
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 16
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 17
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 18
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 19
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 21
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistReviewedApps:Landroid/util/ArraySet;

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistPrintErrorApps:Landroid/util/ArraySet;

    .line 24
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 25
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    const/16 v0, 0x64

    .line 26
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 27
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 28
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 29
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v2, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 30
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;I)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Lcom/android/server/DeviceIdleController$1;

    .line 31
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/DeviceIdleController;I)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 32
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/DeviceIdleController;I)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 33
    new-instance v0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/DeviceIdleController;I)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 34
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;I)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$2;

    .line 35
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;I)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 36
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Lcom/android/server/DeviceIdleController$4;

    .line 37
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;I)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Lcom/android/server/DeviceIdleController$1;

    .line 38
    new-instance v0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$EmergencyCallListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 39
    new-instance v0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mModeManagerQuickDozeRequestConsumer:Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;

    .line 40
    new-instance v0, Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mModeManagerOffBodyStateConsumer:Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;

    .line 41
    new-instance v0, Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 42
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;I)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Lcom/android/server/DeviceIdleController$6;

    .line 43
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;I)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Lcom/android/server/DeviceIdleController$6;

    .line 44
    new-instance v0, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/DeviceIdleController$8;

    .line 45
    iput-object p2, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 46
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 47
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    .line 51
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 52
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {v1, p1, v0}, Lcom/android/server/AppStateTrackerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 54
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 55
    const-class p1, Lcom/android/server/AppStateTracker;

    invoke-static {p1, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lcom/android/server/deviceidle/Flags;->removeIdleLocation()Z

    iget-object p1, p2, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 57
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mIsLocationPrefetchEnabled:Z

    .line 58
    iget-object p1, p2, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111003f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 60
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    return-void
.end method

.method public static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    move v2, v0

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    move p0, v0

    .line 34
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge p0, v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p2, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 p0, p0, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    new-array p1, p0, [I

    .line 61
    .line 62
    :goto_2
    if-ge v0, p0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    aput v1, p1, v0

    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    return-object p1
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Device idle controller (deviceidle) commands:"

    .line 2
    .line 3
    const-string v1, "  help"

    .line 4
    .line 5
    const-string v2, "    Print this help text."

    .line 6
    .line 7
    const-string v3, "  step [light|deep]"

    .line 8
    .line 9
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "    Immediately step to next state, without waiting for alarm."

    .line 13
    .line 14
    const-string v1, "  force-idle [light|deep]"

    .line 15
    .line 16
    const-string v2, "    Force directly into idle mode, regardless of other device state."

    .line 17
    .line 18
    const-string v3, "  force-inactive"

    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "    Force to be inactive, ready to freely step idle states."

    .line 24
    .line 25
    const-string v1, "  unforce"

    .line 26
    .line 27
    const-string v2, "    Resume normal functioning after force-idle or force-inactive or force-modemanager-quickdoze."

    .line 28
    .line 29
    const-string v3, "  get [light|deep|force|screen|charging|network|offbody|forceoffbody]"

    .line 30
    .line 31
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "    Retrieve the current given state."

    .line 35
    .line 36
    const-string v1, "  disable [light|deep|all]"

    .line 37
    .line 38
    const-string v2, "    Completely disable device idle mode."

    .line 39
    .line 40
    const-string v3, "  enable [light|deep|all]"

    .line 41
    .line 42
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    .line 46
    .line 47
    const-string v1, "  enabled [light|deep|all]"

    .line 48
    .line 49
    const-string v2, "    Print 1 if device idle mode is currently enabled, else 0."

    .line 50
    .line 51
    const-string v3, "  whitelist"

    .line 52
    .line 53
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "    Print currently whitelisted apps."

    .line 57
    .line 58
    const-string v1, "  whitelist [package ...]"

    .line 59
    .line 60
    const-string v2, "    Add (prefix with +) or remove (prefix with -) packages."

    .line 61
    .line 62
    const-string v3, "  sys-whitelist [package ...|reset]"

    .line 63
    .line 64
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "    Prefix the package with \'-\' to remove it from the system whitelist or \'+\' to put it back in the system whitelist."

    .line 68
    .line 69
    const-string v1, "    Note that only packages that were earlier removed from the system whitelist can be added back."

    .line 70
    .line 71
    const-string v2, "    reset will reset the whitelist to the original state"

    .line 72
    .line 73
    const-string v3, "    Prints the system whitelist if no arguments are specified"

    .line 74
    .line 75
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "  except-idle-whitelist [package ...|reset]"

    .line 79
    .line 80
    const-string v1, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    .line 81
    .line 82
    const-string v2, "    [reset] will reset the whitelist to it\'s original state"

    .line 83
    .line 84
    const-string v3, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    .line 85
    .line 86
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "  tempwhitelist"

    .line 90
    .line 91
    const-string v1, "    Print packages that are temporarily whitelisted."

    .line 92
    .line 93
    const-string v2, "  tempwhitelist [-u USER] [-d DURATION] [-r] [package]"

    .line 94
    .line 95
    const-string v3, "    Temporarily place package in whitelist for DURATION milliseconds."

    .line 96
    .line 97
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "    If no DURATION is specified, 10 seconds is used"

    .line 101
    .line 102
    const-string v1, "    If [-r] option is used, then the package is removed from temp whitelist and any [-d] is ignored"

    .line 103
    .line 104
    const-string v2, "  motion"

    .line 105
    .line 106
    const-string v3, "    Simulate a motion event to bring the device out of deep doze"

    .line 107
    .line 108
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "  force-modemanager-quickdoze [true|false]"

    .line 112
    .line 113
    const-string v1, "    Simulate mode manager request to enable (true) or disable (false) quick doze. Mode manager changes will be ignored until unforce is called."

    .line 114
    .line 115
    const-string v2, "  force-modemanager-offbody [true|false]"

    .line 116
    .line 117
    const-string v3, "    Force mode manager offbody state, this can be used to simulate device being off-body (true) or on-body (false). Mode manager changes will be ignored until unforce is called."

    .line 118
    .line 119
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public static floatToString(F)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p0, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "%.2f"

    .line 15
    .line 16
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string/jumbo p0, "invalid"

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public static getBatteryLevelDiff(FF)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p0, v0

    .line 3
    .line 4
    const-string/jumbo v2, "getBatteryLevelDiff() : curr("

    .line 5
    .line 6
    .line 7
    const-string v3, "DeviceIdleController"

    .line 8
    .line 9
    const/high16 v4, -0x40800000    # -1.0f

    .line 10
    .line 11
    if-ltz v1, :cond_2

    .line 12
    .line 13
    cmpg-float v0, p1, v0

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    cmpl-float v0, p0, p1

    .line 19
    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    sub-float v4, p0, p1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ") is bigger than prev("

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, ")"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    return v4

    .line 54
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ") or prev("

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p0, ") is invalid"

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return v4
.end method

.method public static getDuration(JJ)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    cmp-long v2, p2, v0

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    cmp-long v2, p2, p0

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    sub-long/2addr p2, p0

    .line 16
    return-wide p2

    .line 17
    :cond_0
    return-wide v0
.end method

.method public static lightStateToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x7

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p0, "OVERRIDE"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    const-string p0, "IDLE_MAINTENANCE"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_2
    const-string p0, "WAITING_FOR_NETWORK"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_3
    const-string p0, "IDLE"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_4
    const-string p0, "INACTIVE"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_5
    const-string p0, "ACTIVE"

    .line 39
    .line 40
    return-object p0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "QUICK_DOZE_DELAY"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "IDLE_MAINTENANCE"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "IDLE"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "LOCATING"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "SENSING"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "IDLE_PENDING"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "INACTIVE"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    const-string p0, "ACTIVE"

    .line 31
    .line 32
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addEvent(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    if-eq v2, p1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/16 v3, 0x63

    .line 10
    .line 11
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 15
    .line 16
    invoke-static {v4, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p0, v1, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    aput p1, v0, v1

    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    aput-wide v2, v4, v1

    .line 31
    .line 32
    aput-object p2, p0, v1

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final addPowerSaveTempAllowlistAppChecked(IILjava/lang/String;Ljava/lang/String;J)V
    .locals 13

    .line 1
    move v0, p2

    .line 2
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    .line 7
    .line 8
    const-string v3, "No permission to change device idle whitelist"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const-string v10, "addPowerSaveTempWhitelistApp"

    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    move v6, v2

    .line 31
    move v7, p1

    .line 32
    invoke-interface/range {v4 .. v11}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v11

    .line 40
    const/4 v1, -0x1

    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    const/16 v3, 0x66

    .line 44
    .line 45
    if-eq v0, v3, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    move v6, v3

    .line 49
    move-object v3, p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object v3, p0

    .line 52
    :try_start_0
    iget-object v4, v3, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getPushMessagingOverQuotaBehavior()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    move v6, v4

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v3, p0

    .line 61
    move v6, v1

    .line 62
    :goto_0
    if-eq v6, v1, :cond_2

    .line 63
    .line 64
    const/4 v8, 0x1

    .line 65
    move-object v1, p0

    .line 66
    move-object/from16 v3, p3

    .line 67
    .line 68
    move-wide/from16 v4, p5

    .line 69
    .line 70
    move v9, p2

    .line 71
    move-object/from16 v10, p4

    .line 72
    .line 73
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_2
    :goto_1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, p2

    .line 10
    move/from16 v2, p6

    .line 11
    .line 12
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    move-object v1, p0

    .line 17
    move v2, p1

    .line 18
    move-wide v3, p3

    .line 19
    move/from16 v6, p7

    .line 20
    .line 21
    move v7, p5

    .line 22
    move-object/from16 v8, p9

    .line 23
    .line 24
    move/from16 v9, p8

    .line 25
    .line 26
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IJIZILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    return-void
.end method

.method public final addPowerSaveTempWhitelistAppDirectInternal(IJIZILjava/lang/String;I)V
    .locals 22

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v0, p4

    .line 4
    .line 5
    move-object/from16 v15, p7

    .line 6
    .line 7
    move/from16 v14, p8

    .line 8
    .line 9
    const-string v1, "Adding AppId "

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 16
    .line 17
    .line 18
    move-result v13

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v4, v10, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 21
    .line 22
    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 23
    .line 24
    move-wide/from16 v6, p2

    .line 25
    .line 26
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    iget-object v6, v10, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Landroid/util/Pair;

    .line 37
    .line 38
    const/16 v21, 0x0

    .line 39
    .line 40
    if-nez v6, :cond_0

    .line 41
    .line 42
    const/4 v7, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move/from16 v7, v21

    .line 45
    .line 46
    :goto_0
    if-eqz v7, :cond_1

    .line 47
    .line 48
    new-instance v6, Landroid/util/Pair;

    .line 49
    .line 50
    new-instance v8, Landroid/util/MutableLong;

    .line 51
    .line 52
    move/from16 v16, v13

    .line 53
    .line 54
    const-wide/16 v12, 0x0

    .line 55
    .line 56
    invoke-direct {v8, v12, v13}, Landroid/util/MutableLong;-><init>(J)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v6, v8, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v8, v10, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 63
    .line 64
    move/from16 v13, v16

    .line 65
    .line 66
    invoke-virtual {v8, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_1
    :goto_1
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v6, Landroid/util/MutableLong;

    .line 76
    .line 77
    add-long/2addr v2, v4

    .line 78
    iput-wide v2, v6, Landroid/util/MutableLong;->value:J

    .line 79
    .line 80
    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    const-string v2, "DeviceIdleController"

    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " to temp whitelist. New entry: "

    .line 95
    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    :cond_2
    if-eqz v7, :cond_5

    .line 110
    .line 111
    :try_start_1
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 112
    .line 113
    const v2, 0x8011

    .line 114
    .line 115
    .line 116
    invoke-interface {v1, v2, v15, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    :catch_0
    :try_start_2
    invoke-virtual {v10, v0, v4, v5}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 120
    .line 121
    .line 122
    const/4 v6, 0x1

    .line 123
    move-object/from16 v1, p0

    .line 124
    .line 125
    move/from16 v2, p4

    .line 126
    .line 127
    move-wide v3, v4

    .line 128
    move/from16 v5, p6

    .line 129
    .line 130
    move/from16 v7, p8

    .line 131
    .line 132
    move-object/from16 v8, p7

    .line 133
    .line 134
    move/from16 v9, p1

    .line 135
    .line 136
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IJIZILjava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    if-eqz p5, :cond_3

    .line 140
    .line 141
    const/16 v21, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 145
    .line 146
    const/16 v2, 0xe

    .line 147
    .line 148
    invoke-virtual {v1, v2, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 153
    .line 154
    .line 155
    :goto_2
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 156
    .line 157
    const/16 v2, 0xd

    .line 158
    .line 159
    const/4 v3, 0x1

    .line 160
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhitelistChangedIntent:Landroid/content/Intent;

    .line 172
    .line 173
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 174
    .line 175
    iget-object v4, v10, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhilelistChangedOptions:Landroid/os/Bundle;

    .line 176
    .line 177
    const/4 v5, 0x0

    .line 178
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    move v2, v3

    .line 182
    move v3, v13

    .line 183
    move v0, v14

    .line 184
    move-object v1, v15

    .line 185
    goto :goto_3

    .line 186
    :cond_5
    const/4 v3, 0x1

    .line 187
    iget-object v11, v10, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 188
    .line 189
    if-eqz v11, :cond_4

    .line 190
    .line 191
    const/4 v12, 0x0

    .line 192
    const/4 v1, 0x1

    .line 193
    move v2, v3

    .line 194
    move v3, v13

    .line 195
    move/from16 v13, p4

    .line 196
    .line 197
    move v0, v14

    .line 198
    move v14, v1

    .line 199
    move-object v1, v15

    .line 200
    move-wide v15, v4

    .line 201
    move/from16 v17, p6

    .line 202
    .line 203
    move/from16 v18, p8

    .line 204
    .line 205
    move-object/from16 v19, p7

    .line 206
    .line 207
    move/from16 v20, p1

    .line 208
    .line 209
    invoke-virtual/range {v11 .. v20}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    if-eqz v21, :cond_6

    .line 214
    .line 215
    iget-object v4, v10, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 216
    .line 217
    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->onTempPowerSaveWhitelistChange(IILjava/lang/String;Z)V

    .line 218
    .line 219
    .line 220
    :cond_6
    return-void

    .line 221
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    throw v0
.end method

.method public final addPowerSaveWhitelistAppsInternal(Ljava/util/List;ILcom/android/server/DeviceIdleController$TargetPkg;)I
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/high16 v5, 0x400000

    .line 32
    .line 33
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 38
    .line 39
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-nez v5, :cond_1

    .line 54
    .line 55
    new-instance v5, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 56
    .line 57
    new-instance v6, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 58
    .line 59
    invoke-direct {v6, v4, v3}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, p2, p3, v6}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;-><init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V

    .line 63
    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    const-string v4, "battery.value_app_added_to_power_allowlist"

    .line 73
    .line 74
    invoke-static {v4}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_3

    .line 80
    :catch_0
    :try_start_2
    const-string v4, "DeviceIdleController"

    .line 81
    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v6, "Tried to add unknown package to power save whitelist: "

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    if-lez v1, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 115
    .line 116
    .line 117
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    sub-int/2addr p0, v2

    .line 123
    return p0

    .line 124
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    throw p1
.end method

.method public final addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/high16 v1, 0x400000

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 17
    .line 18
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 19
    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 47
    .line 48
    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 61
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :catch_0
    monitor-exit p0

    .line 64
    const/4 p0, 0x0

    .line 65
    return p0

    .line 66
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p1
.end method

.method public final becomeActiveLocked(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    return-void
.end method

.method public final becomeActiveLocked(Ljava/lang/String;IJZ)V
    .locals 4

    .line 2
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    const-string v1, "DeviceIdleController"

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "becomeActiveLocked, reason="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", changeLightIdle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 6
    iput-wide p3, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 7
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 8
    iget p3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 p4, 0x6

    const-wide/16 v2, 0x0

    if-eq p3, p4, :cond_2

    .line 9
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    :cond_2
    if-eqz p5, :cond_4

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 11
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide p4, p3, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide p4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 12
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 13
    iget-wide p4, p3, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    iput-wide p4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 14
    iget-wide p3, p3, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide p3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 15
    iget-wide p3, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long p3, p3, v2

    if-eqz p3, :cond_3

    .line 16
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 17
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p4, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    invoke-virtual {p3, p4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 18
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    const/4 p2, 0x1

    .line 19
    invoke-virtual {p0, p2, p1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 20
    :cond_4
    const-string/jumbo p1, "resetBatteryLevel"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getBatteryLevelRaw()F

    move-result p1

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 23
    iget-object p4, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    iput p1, p4, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 24
    iput p1, p4, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 25
    iput-wide p2, p4, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 26
    iput-wide p2, p4, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 27
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mDeepBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    iput p1, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 28
    iput p1, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 29
    iput-wide p2, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 30
    iput-wide p2, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    :cond_5
    return-void
.end method

.method public final becomeInactiveIfAppropriateLocked()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2
    .line 3
    const-string v1, "DeviceIdleController"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 10
    .line 11
    cmp-long v0, v4, v2

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v4, "mState=ACTIVE but mNextAlarmTime="

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 24
    .line 25
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x1

    .line 39
    const/4 v6, 0x5

    .line 40
    if-eq v0, v6, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 45
    .line 46
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v7

    .line 49
    :try_start_0
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    move v0, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v0, v4

    .line 56
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v7, "mState="

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v7, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 68
    .line 69
    invoke-static {v7}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v7, " but AlarmManager is idling"

    .line 77
    .line 78
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p0

    .line 92
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 93
    .line 94
    if-ne v0, v6, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 99
    .line 100
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter v7

    .line 103
    :try_start_2
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    move v0, v5

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    move v0, v4

    .line 110
    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    const-string/jumbo v0, "mState=IDLE but AlarmManager is not idling"

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    throw p0

    .line 123
    :cond_4
    :goto_3
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 124
    .line 125
    if-nez v0, :cond_5

    .line 126
    .line 127
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 128
    .line 129
    cmp-long v0, v7, v2

    .line 130
    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string/jumbo v7, "mLightState=ACTIVE but mNextLightAlarmTime is "

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 142
    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 144
    .line 145
    .line 146
    move-result-wide v9

    .line 147
    sub-long/2addr v7, v9

    .line 148
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v7, " from now"

    .line 156
    .line 157
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 168
    .line 169
    if-eqz v0, :cond_7

    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 172
    .line 173
    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 174
    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 178
    .line 179
    if-nez v0, :cond_7

    .line 180
    .line 181
    :cond_6
    move v4, v5

    .line 182
    :cond_7
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 183
    .line 184
    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 185
    .line 186
    sget-boolean v7, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 187
    .line 188
    if-eqz v7, :cond_9

    .line 189
    .line 190
    const-string v7, "becomeInactiveIfAppropriateLocked(): isScreenBlockingInactive="

    .line 191
    .line 192
    const-string v8, " (mScreenOn="

    .line 193
    .line 194
    invoke-static {v7, v8, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 199
    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v8, ", WAIT_FOR_UNLOCK="

    .line 204
    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 209
    .line 210
    iget-boolean v8, v8, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 211
    .line 212
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v8, ", mScreenLocked="

    .line 216
    .line 217
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 221
    .line 222
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v8, ") mCharging="

    .line 226
    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 231
    .line 232
    const-string v9, " emergencyCall="

    .line 233
    .line 234
    const-string v10, " mForceIdle="

    .line 235
    .line 236
    invoke-static {v7, v8, v9, v0, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 240
    .line 241
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 245
    .line 246
    if-eqz v8, :cond_8

    .line 247
    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v9, " mForceType="

    .line 251
    .line 252
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    goto :goto_4

    .line 265
    :cond_8
    const-string v8, ""

    .line 266
    .line 267
    :goto_4
    invoke-static {v7, v8, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_9
    iget-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 271
    .line 272
    if-nez v7, :cond_b

    .line 273
    .line 274
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 275
    .line 276
    if-nez v8, :cond_a

    .line 277
    .line 278
    if-nez v4, :cond_a

    .line 279
    .line 280
    if-eqz v0, :cond_b

    .line 281
    .line 282
    :cond_a
    return-void

    .line 283
    :cond_b
    if-eqz v7, :cond_c

    .line 284
    .line 285
    const-string v0, "active"

    .line 286
    .line 287
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_c

    .line 294
    .line 295
    const-string p0, "Don\'t become Inactive in force-active mode"

    .line 296
    .line 297
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 302
    .line 303
    const-string/jumbo v1, "no activity"

    .line 304
    .line 305
    .line 306
    if-eqz v0, :cond_12

    .line 307
    .line 308
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 309
    .line 310
    if-eqz v0, :cond_10

    .line 311
    .line 312
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 313
    .line 314
    const/4 v4, 0x7

    .line 315
    if-eq v0, v4, :cond_f

    .line 316
    .line 317
    if-eq v0, v6, :cond_f

    .line 318
    .line 319
    const/4 v6, 0x6

    .line 320
    if-ne v0, v6, :cond_d

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_d
    invoke-virtual {p0, v4, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_e

    .line 334
    .line 335
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    .line 338
    .line 339
    .line 340
    move-result-wide v6

    .line 341
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 347
    .line 348
    .line 349
    move-result-wide v8

    .line 350
    sub-long/2addr v6, v8

    .line 351
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 352
    .line 353
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 354
    .line 355
    add-long/2addr v6, v8

    .line 356
    invoke-virtual {p0, v6, v7}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 361
    .line 362
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 363
    .line 364
    invoke-virtual {p0, v6, v7}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 365
    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_f
    :goto_5
    return-void

    .line 369
    :cond_10
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 370
    .line 371
    if-nez v0, :cond_12

    .line 372
    .line 373
    invoke-virtual {p0, v5, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 377
    .line 378
    .line 379
    iget-wide v6, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 380
    .line 381
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_11

    .line 386
    .line 387
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 388
    .line 389
    invoke-virtual {v0}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    .line 390
    .line 391
    .line 392
    move-result-wide v8

    .line 393
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 399
    .line 400
    .line 401
    move-result-wide v10

    .line 402
    sub-long/2addr v8, v10

    .line 403
    add-long/2addr v8, v6

    .line 404
    invoke-virtual {p0, v8, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 405
    .line 406
    .line 407
    goto :goto_6

    .line 408
    :cond_11
    invoke-virtual {p0, v6, v7}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 409
    .line 410
    .line 411
    :cond_12
    :goto_6
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 412
    .line 413
    if-nez v0, :cond_14

    .line 414
    .line 415
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 416
    .line 417
    if-eqz v0, :cond_14

    .line 418
    .line 419
    invoke-virtual {p0, v5, v1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 423
    .line 424
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 425
    .line 426
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 427
    .line 428
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 429
    .line 430
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 431
    .line 432
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 433
    .line 434
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 435
    .line 436
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 437
    .line 438
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 439
    .line 440
    cmp-long v0, v0, v2

    .line 441
    .line 442
    if-eqz v0, :cond_13

    .line 443
    .line 444
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 445
    .line 446
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 447
    .line 448
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 449
    .line 450
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 451
    .line 452
    .line 453
    :cond_13
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 454
    .line 455
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 456
    .line 457
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 458
    .line 459
    const/4 v6, 0x1

    .line 460
    move-object v1, p0

    .line 461
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJZ)V

    .line 462
    .line 463
    .line 464
    :cond_14
    return-void
.end method

.method public final cancelAlarmLocked()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final cancelLocatingLocked()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v2, Landroid/location/LocationManager;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/location/LocationManager;

    .line 20
    .line 21
    iput-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 22
    .line 23
    :cond_0
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Lcom/android/server/DeviceIdleController$6;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Lcom/android/server/DeviceIdleController$6;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final cancelSensingTimeoutAlarmLocked()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$2;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final decActiveIdleOps()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 7
    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method

.method public final dumpTempWhitelistScheduleLocked(Ljava/io/PrintWriter;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-string p2, "  Temp whitelist schedule:"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "    "

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p2, ""

    .line 20
    .line 21
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_1
    if-ge v3, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v4, "UID="

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 43
    .line 44
    .line 45
    const-string v4, ": "

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/util/Pair;

    .line 57
    .line 58
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v5, Landroid/util/MutableLong;

    .line 61
    .line 62
    iget-wide v5, v5, Landroid/util/MutableLong;->value:J

    .line 63
    .line 64
    invoke-static {v5, v6, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 65
    .line 66
    .line 67
    const-string v5, " - "

    .line 68
    .line 69
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    return-void
.end method

.method public final exitForceIdleLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :cond_0
    const-string/jumbo v0, "exit-force"

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final exitMaintenanceEarlyIfNeededLocked()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 11
    .line 12
    if-gtz v0, :cond_3

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 19
    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v0, "Exit: start="

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 37
    .line 38
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 39
    .line 40
    .line 41
    const-string v4, " now="

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 47
    .line 48
    .line 49
    const-string v2, "DeviceIdleController"

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 59
    .line 60
    const-string/jumbo v2, "s:early"

    .line 61
    .line 62
    .line 63
    if-ne v0, v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method public final getBatteryLevelRaw()F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

    .line 2
    .line 3
    const-string v0, "DeviceIdleController"

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelRaw()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-ltz p0, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x2710

    .line 14
    .line 15
    if-gt p0, v1, :cond_0

    .line 16
    .line 17
    int-to-float p0, p0

    .line 18
    const/high16 v0, 0x42c80000    # 100.0f

    .line 19
    .line 20
    div-float/2addr p0, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const-string/jumbo v1, "getBatteryLevelRaw() : batteryLevelInt is invalid : "

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string/jumbo p0, "getBatteryLevelRaw() : mLocalBatteryManager is null"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    const/high16 p0, -0x40800000    # -1.0f

    .line 36
    .line 37
    :goto_1
    return p0
.end method

.method public final getFullPowerWhitelistInternalUnchecked()[Ljava/lang/String;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    move v3, v2

    .line 20
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ge v2, v4, :cond_0

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    aput-object v4, v0, v3

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ge v1, v2, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    aput-object v2, v0, v3

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    monitor-exit p0

    .line 69
    return-object v0

    .line 70
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw v0
.end method

.method public getLightState()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getNextAlarmTime()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getNextLightAlarmTimeForTesting()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public final getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public final getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public getState()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public final handleMotionDetectedLocked(JLjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v0, v6, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x7

    .line 10
    if-lez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, v6, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "cancelMotionTimeoutAlarmLocked()"

    .line 18
    .line 19
    .line 20
    const-string v2, "DeviceIdleController"

    .line 21
    .line 22
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, v6, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 26
    .line 27
    iget-object v3, v6, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 30
    .line 31
    .line 32
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const-string/jumbo v0, "scheduleMotionRegistrationAlarmLocked"

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, v6, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    iget-object v0, v6, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 52
    .line 53
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 54
    .line 55
    const-wide/16 v7, 0x2

    .line 56
    .line 57
    div-long/2addr v4, v7

    .line 58
    add-long v9, v4, v2

    .line 59
    .line 60
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-object v7, v6, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 65
    .line 66
    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 67
    .line 68
    const-string v13, "DeviceIdleController.motion_registration"

    .line 69
    .line 70
    iget-object v15, v6, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 71
    .line 72
    const/4 v8, 0x2

    .line 73
    iget-object v14, v6, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 74
    .line 75
    invoke-virtual/range {v7 .. v15}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v7, v6, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 80
    .line 81
    const-string v11, "DeviceIdleController.motion_registration"

    .line 82
    .line 83
    iget-object v13, v6, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 84
    .line 85
    const/4 v8, 0x2

    .line 86
    iget-object v12, v6, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 87
    .line 88
    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    iget-boolean v0, v6, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-boolean v0, v6, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 96
    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 101
    .line 102
    .line 103
    iget v0, v6, Lcom/android/server/DeviceIdleController;->mState:I

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    const/4 v3, 0x0

    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    iget v0, v6, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 110
    .line 111
    if-ne v0, v1, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    move v7, v3

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    :goto_1
    move v7, v2

    .line 117
    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    iget v0, v6, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 122
    .line 123
    if-ne v0, v1, :cond_6

    .line 124
    .line 125
    move v5, v2

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    move v5, v3

    .line 128
    :goto_3
    move-object/from16 v0, p0

    .line 129
    .line 130
    move-object/from16 v1, p3

    .line 131
    .line 132
    move v2, v4

    .line 133
    move-wide/from16 v3, p1

    .line 134
    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    .line 136
    .line 137
    .line 138
    if-eqz v7, :cond_7

    .line 139
    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 141
    .line 142
    .line 143
    :cond_7
    return-void
.end method

.method public final handleWriteConfigFile()V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    new-instance v1, Lcom/android/internal/util/jobs/FastXmlSerializer;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lcom/android/internal/util/jobs/FastXmlSerializer;)V

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    :catch_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    const/4 v2, 0x0

    .line 33
    :try_start_3
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :catch_1
    move-exception v0

    .line 51
    :try_start_4
    const-string v3, "DeviceIdleController"

    .line 52
    .line 53
    const-string v4, "Error writing config file"

    .line 54
    .line 55
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    throw p0
.end method

.method public hasMotionSensor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public isCharging()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public isEmergencyCallActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 4
    .line 5
    return p0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public isNetworkConnected()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public isQuickDozeEnabled()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public isScreenOn()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public final isStationaryLocked()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 11
    .line 12
    iget-boolean v3, v2, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    .line 17
    .line 18
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 19
    .line 20
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 26
    .line 27
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 28
    .line 29
    cmp-long p0, v0, v2

    .line 30
    .line 31
    if-ltz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method

.method public final isUpcomingAlarmClock()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 11
    .line 12
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 13
    .line 14
    add-long/2addr v0, v2

    .line 15
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmp-long p0, v0, v2

    .line 22
    .line 23
    if-ltz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public keyguardShowingLocked(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "keyguardShowing="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "DeviceIdleController"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 26
    .line 27
    if-eq v0, p1, :cond_1

    .line 28
    .line 29
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    const-string/jumbo p1, "unlocked"

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final maybeStopMonitoringMotionLocked()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "DeviceIdleController"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "maybeStopMonitoringMotionLocked()"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 26
    .line 27
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x2

    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 43
    .line 44
    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 45
    .line 46
    iget-object v4, v2, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 49
    .line 50
    invoke-virtual {v3, v4, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 55
    .line 56
    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    const/4 v2, 0x0

    .line 64
    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 65
    .line 66
    const-string/jumbo v0, "cancelMotionTimeoutAlarmLocked()"

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    const-string/jumbo v0, "cancelMotionRegistrationAlarmLocked()"

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
.end method

.method public final motionLocked()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DeviceIdleController"

    .line 6
    .line 7
    const-string/jumbo v1, "motionLocked()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 25
    .line 26
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 27
    .line 28
    const-string/jumbo v2, "motion"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final moveToLightStateLocked(ILjava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getBatteryLevelRaw()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 6
    .line 7
    iput v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iput-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 32
    .line 33
    iget v4, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 34
    .line 35
    invoke-static {v0, v4}, Lcom/android/server/DeviceIdleController;->getBatteryLevelDiff(FF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-wide v7, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 44
    .line 45
    iget-wide v9, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 46
    .line 47
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/DeviceIdleController;->getDuration(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    move-object v4, p2

    .line 56
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "[LIGHT] %s to %s, reason=%s, battery=%s(%s/%d)"

    .line 61
    .line 62
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, "DeviceIdleController"

    .line 67
    .line 68
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 72
    .line 73
    iput v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 74
    .line 75
    iget-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 76
    .line 77
    iput-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 78
    .line 79
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const p2, 0x84d9

    .line 90
    .line 91
    .line 92
    invoke-static {p2, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    const-wide/32 v0, 0x80000

    .line 96
    .line 97
    .line 98
    const-string p0, "DozeLightState"

    .line 99
    .line 100
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final moveToStateLocked(ILjava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getBatteryLevelRaw()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 6
    .line 7
    iput v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iput-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 32
    .line 33
    iget v4, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 34
    .line 35
    invoke-static {v0, v4}, Lcom/android/server/DeviceIdleController;->getBatteryLevelDiff(FF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-wide v7, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 44
    .line 45
    iget-wide v9, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 46
    .line 47
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/DeviceIdleController;->getDuration(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    move-object v4, p2

    .line 56
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "[DEEP] %s to %s, reason=%s, battery=%s(%s/%d)"

    .line 61
    .line 62
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, "DeviceIdleController"

    .line 67
    .line 68
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 72
    .line 73
    iput v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 74
    .line 75
    iget-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 76
    .line 77
    iput-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 78
    .line 79
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const v0, 0x84d0

    .line 90
    .line 91
    .line 92
    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    const-wide/32 v0, 0x80000

    .line 96
    .line 97
    .line 98
    const-string p2, "DozeDeepState"

    .line 99
    .line 100
    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final onAnyMotionResult(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DeviceIdleController"

    .line 6
    .line 7
    const-string/jumbo v1, "onAnyMotionResult("

    .line 8
    .line 9
    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    monitor-enter p0

    .line 16
    const/4 v0, -0x1

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_3

    .line 25
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 26
    if-eq p1, v1, :cond_4

    .line 27
    .line 28
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    if-nez p1, :cond_5

    .line 32
    .line 33
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 39
    .line 40
    const-string/jumbo p1, "s:stationary"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    const/4 v0, 0x4

    .line 48
    if-ne p1, v0, :cond_5

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    const-string/jumbo p1, "s:stationary"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 64
    .line 65
    iget-wide v0, p1, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 66
    .line 67
    const-string/jumbo p1, "non_stationary"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_2
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method

.method public final onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Removing uid "

    .line 6
    .line 7
    const-string v1, " from temp whitelist"

    .line 8
    .line 9
    const-string v2, "DeviceIdleController"

    .line 10
    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v9, -0x1

    .line 24
    move-object v1, p0

    .line 25
    move v2, p1

    .line 26
    move-object v8, p2

    .line 27
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IJIZILjava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 31
    .line 32
    const/16 v2, 0xf

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 40
    .line 41
    .line 42
    const/16 v2, 0xd

    .line 43
    .line 44
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhitelistChangedIntent:Landroid/content/Intent;

    .line 56
    .line 57
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhilelistChangedOptions:Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 66
    .line 67
    const/16 p1, 0x4011

    .line 68
    .line 69
    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 9

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_8

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-class v0, Landroid/app/AlarmManager;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/app/AlarmManager;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 19
    .line 20
    const-class p1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 29
    .line 30
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 35
    .line 36
    const-class p1, Landroid/os/BatteryManagerInternal;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/os/BatteryManagerInternal;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

    .line 45
    .line 46
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 55
    .line 56
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 65
    .line 66
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 75
    .line 76
    const-class p1, Landroid/os/PowerManagerInternal;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/os/PowerManagerInternal;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    const-class v0, Landroid/os/PowerManager;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/os/PowerManager;

    .line 97
    .line 98
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    .line 100
    const-string/jumbo v0, "deviceidle_maint"

    .line 101
    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 115
    .line 116
    const-string/jumbo v0, "deviceidle_going_idle"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 126
    .line 127
    .line 128
    const-string/jumbo p1, "netpolicy"

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 140
    .line 141
    const-class p1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 148
    .line 149
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 152
    .line 153
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    const-class v0, Landroid/hardware/SensorManager;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/hardware/SensorManager;

    .line 162
    .line 163
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 164
    .line 165
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 166
    .line 167
    const/4 v0, 0x0

    .line 168
    if-eqz p1, :cond_3

    .line 169
    .line 170
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 171
    .line 172
    iget-object v2, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    const-class v3, Landroid/hardware/SensorManager;

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Landroid/hardware/SensorManager;

    .line 181
    .line 182
    iget-object v3, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const v4, 0x10e003d

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-lez v3, :cond_0

    .line 196
    .line 197
    invoke-virtual {v2, v3, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    goto :goto_0

    .line 202
    :cond_0
    move-object v3, v0

    .line 203
    :goto_0
    if-nez v3, :cond_1

    .line 204
    .line 205
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    const v4, 0x111003d

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_1

    .line 219
    .line 220
    const/16 p1, 0x1a

    .line 221
    .line 222
    invoke-virtual {v2, p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    :cond_1
    if-nez v3, :cond_2

    .line 227
    .line 228
    const/16 p1, 0x11

    .line 229
    .line 230
    invoke-virtual {v2, p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    :cond_2
    iput-object v3, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :catchall_0
    move-exception p1

    .line 238
    goto/16 :goto_3

    .line 239
    .line 240
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mIsLocationPrefetchEnabled:Z

    .line 241
    .line 242
    if-eqz p1, :cond_4

    .line 243
    .line 244
    new-instance p1, Landroid/location/LocationRequest$Builder;

    .line 245
    .line 246
    const-wide/16 v2, 0x0

    .line 247
    .line 248
    invoke-direct {p1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 249
    .line 250
    .line 251
    const/16 v2, 0x64

    .line 252
    .line 253
    invoke-virtual {p1, v2}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1, v1}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 266
    .line 267
    :cond_4
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 268
    .line 269
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 270
    .line 271
    const-class v3, Lcom/android/server/DeviceIdleController$LocalService;

    .line 272
    .line 273
    invoke-virtual {p0, v3}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    check-cast v3, Lcom/android/server/DeviceIdleInternal;

    .line 278
    .line 279
    iget-object v3, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 280
    .line 281
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    const-string v4, "android.software.leanback_only"

    .line 286
    .line 287
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_5

    .line 292
    .line 293
    new-instance v3, Lcom/android/server/deviceidle/TvConstraintController;

    .line 294
    .line 295
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 296
    .line 297
    invoke-direct {v3, p1, v2}, Lcom/android/server/deviceidle/TvConstraintController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 298
    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_5
    move-object v3, v0

    .line 302
    :goto_2
    if-eqz v3, :cond_6

    .line 303
    .line 304
    invoke-virtual {v3}, Lcom/android/server/deviceidle/TvConstraintController;->start()V

    .line 305
    .line 306
    .line 307
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    const v2, 0x10e003e

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    int-to-float p1, p1

    .line 323
    const/high16 v2, 0x42c80000    # 100.0f

    .line 324
    .line 325
    div-float v8, p1, v2

    .line 326
    .line 327
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 328
    .line 329
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 330
    .line 331
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 332
    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    new-instance v2, Lcom/android/server/AnyMotionDetector;

    .line 337
    .line 338
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 339
    .line 340
    const-class v3, Landroid/os/PowerManager;

    .line 341
    .line 342
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    move-object v4, p1

    .line 347
    check-cast v4, Landroid/os/PowerManager;

    .line 348
    .line 349
    move-object v3, v2

    .line 350
    move-object v7, p0

    .line 351
    invoke-direct/range {v3 .. v8}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    .line 352
    .line 353
    .line 354
    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 355
    .line 356
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 357
    .line 358
    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl;->onSystemServicesReady()V

    .line 359
    .line 360
    .line 361
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    const/4 v1, 0x2

    .line 370
    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    new-instance v1, Landroid/content/Intent;

    .line 379
    .line 380
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 381
    .line 382
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 386
    .line 387
    const/high16 v2, 0x50000000

    .line 388
    .line 389
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 390
    .line 391
    .line 392
    new-instance v1, Landroid/content/Intent;

    .line 393
    .line 394
    const-string v3, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 395
    .line 396
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 400
    .line 401
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    .line 403
    .line 404
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    .line 405
    .line 406
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    .line 407
    .line 408
    new-instance v1, Landroid/content/Intent;

    .line 409
    .line 410
    const-string v2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 411
    .line 412
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistChangedIntent:Landroid/content/Intent;

    .line 416
    .line 417
    const/high16 v2, 0x40000000    # 2.0f

    .line 418
    .line 419
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 420
    .line 421
    .line 422
    new-instance v1, Landroid/content/Intent;

    .line 423
    .line 424
    const-string v3, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    .line 425
    .line 426
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhitelistChangedIntent:Landroid/content/Intent;

    .line 430
    .line 431
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 432
    .line 433
    .line 434
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistChangedOptions:Landroid/os/Bundle;

    .line 435
    .line 436
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhilelistChangedOptions:Landroid/os/Bundle;

    .line 437
    .line 438
    new-instance p1, Landroid/content/IntentFilter;

    .line 439
    .line 440
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 441
    .line 442
    .line 443
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 444
    .line 445
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Lcom/android/server/DeviceIdleController$1;

    .line 453
    .line 454
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 455
    .line 456
    .line 457
    new-instance p1, Landroid/content/IntentFilter;

    .line 458
    .line 459
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 463
    .line 464
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string/jumbo v1, "package"

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Lcom/android/server/DeviceIdleController$1;

    .line 478
    .line 479
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 480
    .line 481
    .line 482
    new-instance p1, Landroid/content/IntentFilter;

    .line 483
    .line 484
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 485
    .line 486
    .line 487
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 488
    .line 489
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Lcom/android/server/DeviceIdleController$1;

    .line 497
    .line 498
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 499
    .line 500
    .line 501
    new-instance p1, Landroid/content/IntentFilter;

    .line 502
    .line 503
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 504
    .line 505
    .line 506
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 507
    .line 508
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 512
    .line 513
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Lcom/android/server/DeviceIdleController$1;

    .line 521
    .line 522
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    .line 524
    .line 525
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 526
    .line 527
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 528
    .line 529
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 530
    .line 531
    invoke-virtual {p1, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleAllowlist([I[I)V

    .line 532
    .line 533
    .line 534
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 535
    .line 536
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 537
    .line 538
    invoke-virtual {p1, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 539
    .line 540
    .line 541
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 542
    .line 543
    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 544
    .line 545
    if-eqz p1, :cond_7

    .line 546
    .line 547
    const-class p1, Landroid/os/WearModeManagerInternal;

    .line 548
    .line 549
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    check-cast p1, Landroid/os/WearModeManagerInternal;

    .line 554
    .line 555
    if-eqz p1, :cond_7

    .line 556
    .line 557
    const-string/jumbo v1, "quick_doze_request"

    .line 558
    .line 559
    .line 560
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mModeManagerQuickDozeRequestConsumer:Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;

    .line 565
    .line 566
    invoke-interface {p1, v1, v2, v3}, Landroid/os/WearModeManagerInternal;->addActiveStateChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 567
    .line 568
    .line 569
    const-string/jumbo v1, "off_body"

    .line 570
    .line 571
    .line 572
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mModeManagerOffBodyStateConsumer:Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;

    .line 577
    .line 578
    invoke-interface {p1, v1, v2, v3}, Landroid/os/WearModeManagerInternal;->addActiveStateChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 579
    .line 580
    .line 581
    :cond_7
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 582
    .line 583
    new-instance v1, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;

    .line 584
    .line 585
    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 586
    .line 587
    .line 588
    const/16 v2, 0xf

    .line 589
    .line 590
    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 591
    .line 592
    .line 593
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 594
    .line 595
    invoke-virtual {p1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 600
    .line 601
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mBatterySaverEnabled:Z

    .line 602
    .line 603
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked()V

    .line 604
    .line 605
    .line 606
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 607
    .line 608
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/DeviceIdleController$8;

    .line 609
    .line 610
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 611
    .line 612
    .line 613
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 614
    .line 615
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 616
    .line 617
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 618
    .line 619
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object p1

    .line 623
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 624
    .line 625
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 630
    .line 631
    invoke-virtual {p1, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 635
    .line 636
    .line 637
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 638
    .line 639
    .line 640
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 642
    .line 643
    .line 644
    goto :goto_4

    .line 645
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    throw p1

    .line 647
    :cond_8
    const/16 v0, 0x3e8

    .line 648
    .line 649
    if-ne p1, v0, :cond_9

    .line 650
    .line 651
    const-string p1, "DeviceIdleController"

    .line 652
    .line 653
    const-string/jumbo v0, "resetBatteryLevel"

    .line 654
    .line 655
    .line 656
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    .line 658
    .line 659
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getBatteryLevelRaw()F

    .line 660
    .line 661
    .line 662
    move-result p1

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 664
    .line 665
    .line 666
    move-result-wide v0

    .line 667
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 668
    .line 669
    iput p1, v2, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 670
    .line 671
    iput p1, v2, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 672
    .line 673
    iput-wide v0, v2, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 674
    .line 675
    iput-wide v0, v2, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 676
    .line 677
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mDeepBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 678
    .line 679
    iput p1, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 680
    .line 681
    iput p1, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 682
    .line 683
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 684
    .line 685
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 686
    .line 687
    :cond_9
    :goto_4
    return-void
.end method

.method public final onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo p2, "device-idle constraint "

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " has not been registered."

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "DeviceIdleController"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-boolean p1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 38
    .line 39
    if-eq p2, p1, :cond_4

    .line 40
    .line 41
    iget-boolean p1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 46
    .line 47
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    const/4 p2, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p2, -0x1

    .line 54
    :goto_0
    add-int/2addr p1, p2

    .line 55
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 56
    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-wide p1, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 68
    .line 69
    const-wide/16 v1, 0x0

    .line 70
    .line 71
    cmp-long v1, p1, v1

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    cmp-long p1, p1, v1

    .line 80
    .line 81
    if-gez p1, :cond_4

    .line 82
    .line 83
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo p2, "s:"

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_1
    return-void
.end method

.method public final onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string/jumbo v4, "mIsOffBody: "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v5, "mForceModeManagerOffBodyState: "

    .line 11
    .line 12
    .line 13
    const-string/jumbo v6, "mModeManagerRequestedQuickDoze: "

    .line 14
    .line 15
    .line 16
    const-string/jumbo v7, "mForceModeManagerQuickDozeRequest: "

    .line 17
    .line 18
    .line 19
    const-string v8, "- history count : "

    .line 20
    .line 21
    const-string v9, "Unknown idle mode: "

    .line 22
    .line 23
    const-string v10, "Unknown idle mode: "

    .line 24
    .line 25
    const-string v11, "Unknown idle mode: "

    .line 26
    .line 27
    const-string v12, "-disabled"

    .line 28
    .line 29
    const-string v13, "Unknown get option: "

    .line 30
    .line 31
    const-string/jumbo v14, "mForceModeManagerOffBodyState: "

    .line 32
    .line 33
    .line 34
    const-string/jumbo v15, "mForceModeManagerQuickDozeRequest: "

    .line 35
    .line 36
    .line 37
    move-object/from16 v16, v4

    .line 38
    .line 39
    const-string v4, "Unknown idle mode: "

    .line 40
    .line 41
    move-object/from16 v17, v5

    .line 42
    .line 43
    const-string v5, "Unknown idle mode: "

    .line 44
    .line 45
    move-object/from16 v18, v6

    .line 46
    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    move-object/from16 v19, v7

    .line 52
    .line 53
    const-string/jumbo v7, "step"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v20

    .line 65
    const/4 v2, 0x0

    .line 66
    if-eqz v7, :cond_3

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v4, "android.permission.DEVICE_POWER"

    .line 73
    .line 74
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    :try_start_1
    const-string/jumbo v7, "deep"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const-string/jumbo v7, "light"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_1

    .line 106
    .line 107
    const-string/jumbo v4, "s:shell"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v4}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v4, "Stepped to light: "

    .line 114
    .line 115
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 119
    .line 120
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    move-object v4, v0

    .line 130
    goto :goto_3

    .line 131
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    :goto_0
    const-string/jumbo v4, "s:shell"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v4}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v4, "Stepped to deep: "

    .line 146
    .line 147
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 151
    .line 152
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .line 158
    .line 159
    :goto_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    .line 161
    .line 162
    monitor-exit p0

    .line 163
    :goto_2
    const/4 v12, 0x0

    .line 164
    goto/16 :goto_44

    .line 165
    .line 166
    :catchall_1
    move-exception v0

    .line 167
    move-object v2, v0

    .line 168
    goto :goto_4

    .line 169
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    .line 171
    .line 172
    throw v4

    .line 173
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    throw v2

    .line 175
    :cond_3
    const-string/jumbo v5, "force-active"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    const/4 v7, 0x1

    .line 183
    if-eqz v5, :cond_4

    .line 184
    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    const-string v4, "android.permission.DEVICE_POWER"

    .line 190
    .line 191
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    monitor-enter p0

    .line 195
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 196
    .line 197
    .line 198
    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 199
    :try_start_4
    iput-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 200
    .line 201
    const-string v4, "active"

    .line 202
    .line 203
    iput-object v4, v1, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 204
    .line 205
    const-string/jumbo v4, "force-active"

    .line 206
    .line 207
    .line 208
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-virtual {v1, v5, v4}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v4, "Light state: "

    .line 216
    .line 217
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 221
    .line 222
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v4, ", deep state: "

    .line 230
    .line 231
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 235
    .line 236
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 241
    .line 242
    .line 243
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    .line 245
    .line 246
    monitor-exit p0

    .line 247
    goto :goto_2

    .line 248
    :catchall_2
    move-exception v0

    .line 249
    move-object v2, v0

    .line 250
    goto :goto_5

    .line 251
    :catchall_3
    move-exception v0

    .line 252
    move-object v4, v0

    .line 253
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    .line 255
    .line 256
    throw v4

    .line 257
    :goto_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 258
    throw v2

    .line 259
    :cond_4
    const-string/jumbo v5, "force-idle"

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    const/4 v7, 0x4

    .line 267
    const/16 v22, -0x1

    .line 268
    .line 269
    if-eqz v5, :cond_d

    .line 270
    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    const-string v5, "android.permission.DEVICE_POWER"

    .line 276
    .line 277
    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    monitor-enter p0

    .line 281
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 282
    .line 283
    .line 284
    move-result-wide v2

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 289
    if-eqz v5, :cond_9

    .line 290
    .line 291
    :try_start_7
    const-string/jumbo v8, "deep"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v8

    .line 298
    if-eqz v8, :cond_5

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_5
    const-string/jumbo v8, "light"

    .line 302
    .line 303
    .line 304
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    if-eqz v8, :cond_8

    .line 309
    .line 310
    const/4 v8, 0x1

    .line 311
    iput-boolean v8, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 312
    .line 313
    const-string/jumbo v4, "idle-light"

    .line 314
    .line 315
    .line 316
    iput-object v4, v1, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 319
    .line 320
    .line 321
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 322
    .line 323
    :goto_6
    if-eq v4, v7, :cond_7

    .line 324
    .line 325
    const-string/jumbo v5, "s:shell"

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v5}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget v5, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 332
    .line 333
    if-ne v4, v5, :cond_6

    .line 334
    .line 335
    const-string v4, "Unable to go light idle; stopped at "

    .line 336
    .line 337
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 341
    .line 342
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 350
    .line 351
    .line 352
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    .line 354
    .line 355
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 356
    return v22

    .line 357
    :catchall_4
    move-exception v0

    .line 358
    move-object v2, v0

    .line 359
    goto :goto_b

    .line 360
    :catchall_5
    move-exception v0

    .line 361
    move-object v4, v0

    .line 362
    goto :goto_a

    .line 363
    :cond_6
    move v4, v5

    .line 364
    goto :goto_6

    .line 365
    :cond_7
    :try_start_9
    const-string v4, "Now forced in to light idle mode"

    .line 366
    .line 367
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto :goto_9

    .line 379
    :cond_9
    :goto_7
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 380
    .line 381
    if-nez v4, :cond_a

    .line 382
    .line 383
    const-string v4, "Unable to go deep idle; not enabled"

    .line 384
    .line 385
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 386
    .line 387
    .line 388
    :try_start_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    .line 390
    .line 391
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 392
    return v22

    .line 393
    :cond_a
    const/4 v4, 0x1

    .line 394
    :try_start_b
    iput-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 395
    .line 396
    const-string/jumbo v4, "idle-deep"

    .line 397
    .line 398
    .line 399
    iput-object v4, v1, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 402
    .line 403
    .line 404
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 405
    .line 406
    const/4 v5, 0x5

    .line 407
    :goto_8
    if-eq v4, v5, :cond_c

    .line 408
    .line 409
    const-string/jumbo v7, "s:shell"

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v7}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget v7, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 416
    .line 417
    if-ne v4, v7, :cond_b

    .line 418
    .line 419
    const-string v4, "Unable to go deep idle; stopped at "

    .line 420
    .line 421
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 425
    .line 426
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 434
    .line 435
    .line 436
    :try_start_c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    .line 438
    .line 439
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 440
    return v22

    .line 441
    :cond_b
    move v4, v7

    .line 442
    goto :goto_8

    .line 443
    :cond_c
    :try_start_d
    const-string v4, "Now forced in to deep idle mode"

    .line 444
    .line 445
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 446
    .line 447
    .line 448
    :goto_9
    :try_start_e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 449
    .line 450
    .line 451
    monitor-exit p0

    .line 452
    goto/16 :goto_2

    .line 453
    .line 454
    :goto_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    .line 456
    .line 457
    throw v4

    .line 458
    :goto_b
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 459
    throw v2

    .line 460
    :cond_d
    const/4 v5, 0x5

    .line 461
    const-string/jumbo v4, "force-inactive"

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v4

    .line 468
    if-eqz v4, :cond_e

    .line 469
    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    const-string v4, "android.permission.DEVICE_POWER"

    .line 475
    .line 476
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    monitor-enter p0

    .line 480
    :try_start_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 481
    .line 482
    .line 483
    move-result-wide v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 484
    const/4 v4, 0x1

    .line 485
    :try_start_10
    iput-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 486
    .line 487
    const-string/jumbo v4, "inactive"

    .line 488
    .line 489
    .line 490
    iput-object v4, v1, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 491
    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 493
    .line 494
    .line 495
    const-string v4, "Light state: "

    .line 496
    .line 497
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 501
    .line 502
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    const-string v4, ", deep state: "

    .line 510
    .line 511
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 515
    .line 516
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 521
    .line 522
    .line 523
    :try_start_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    .line 525
    .line 526
    monitor-exit p0

    .line 527
    goto/16 :goto_2

    .line 528
    .line 529
    :catchall_6
    move-exception v0

    .line 530
    move-object v2, v0

    .line 531
    goto :goto_c

    .line 532
    :catchall_7
    move-exception v0

    .line 533
    move-object v4, v0

    .line 534
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    .line 536
    .line 537
    throw v4

    .line 538
    :goto_c
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 539
    throw v2

    .line 540
    :cond_e
    const-string/jumbo v4, "unforce"

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    if-eqz v4, :cond_f

    .line 548
    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    const-string v4, "android.permission.DEVICE_POWER"

    .line 554
    .line 555
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    monitor-enter p0

    .line 559
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 560
    .line 561
    .line 562
    move-result-wide v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 563
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 564
    .line 565
    .line 566
    const-string v4, "Light state: "

    .line 567
    .line 568
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 572
    .line 573
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    const-string v4, ", deep state: "

    .line 581
    .line 582
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 586
    .line 587
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    const/4 v4, 0x0

    .line 595
    iput-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 596
    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 603
    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v4

    .line 611
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    const/4 v4, 0x0

    .line 615
    iput-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    .line 616
    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    .line 623
    .line 624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v4

    .line 631
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 632
    .line 633
    .line 634
    :try_start_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    .line 636
    .line 637
    monitor-exit p0

    .line 638
    goto/16 :goto_2

    .line 639
    .line 640
    :catchall_8
    move-exception v0

    .line 641
    move-object v2, v0

    .line 642
    goto :goto_d

    .line 643
    :catchall_9
    move-exception v0

    .line 644
    move-object v4, v0

    .line 645
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    .line 647
    .line 648
    throw v4

    .line 649
    :goto_d
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 650
    throw v2

    .line 651
    :cond_f
    const-string/jumbo v4, "get"

    .line 652
    .line 653
    .line 654
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    const/4 v14, 0x7

    .line 659
    const/16 v15, 0x9

    .line 660
    .line 661
    const/4 v5, 0x2

    .line 662
    if-eqz v4, :cond_12

    .line 663
    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    const-string v4, "android.permission.DEVICE_POWER"

    .line 669
    .line 670
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    monitor-enter p0

    .line 674
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    if-eqz v2, :cond_11

    .line 679
    .line 680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 681
    .line 682
    .line 683
    move-result-wide v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 684
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 685
    .line 686
    .line 687
    move-result v8

    .line 688
    sparse-switch v8, :sswitch_data_0

    .line 689
    .line 690
    .line 691
    goto/16 :goto_e

    .line 692
    .line 693
    :sswitch_0
    const-string/jumbo v5, "network"

    .line 694
    .line 695
    .line 696
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    move-result v5

    .line 700
    if-eqz v5, :cond_10

    .line 701
    .line 702
    const/4 v5, 0x6

    .line 703
    goto/16 :goto_f

    .line 704
    .line 705
    :catchall_a
    move-exception v0

    .line 706
    move-object v2, v0

    .line 707
    goto/16 :goto_11

    .line 708
    .line 709
    :sswitch_1
    const-string/jumbo v5, "forceoffbody"

    .line 710
    .line 711
    .line 712
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v5

    .line 716
    if-eqz v5, :cond_10

    .line 717
    .line 718
    const/16 v5, 0xa

    .line 719
    .line 720
    goto/16 :goto_f

    .line 721
    .line 722
    :sswitch_2
    const-string/jumbo v5, "charging"

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v5

    .line 729
    if-eqz v5, :cond_10

    .line 730
    .line 731
    const/4 v5, 0x5

    .line 732
    goto :goto_f

    .line 733
    :sswitch_3
    const-string/jumbo v5, "quick"

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    move-result v5

    .line 740
    if-eqz v5, :cond_10

    .line 741
    .line 742
    const/4 v5, 0x3

    .line 743
    goto :goto_f

    .line 744
    :sswitch_4
    const-string/jumbo v5, "light"

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v5

    .line 751
    if-eqz v5, :cond_10

    .line 752
    .line 753
    const/4 v5, 0x0

    .line 754
    goto :goto_f

    .line 755
    :sswitch_5
    const-string/jumbo v7, "force"

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    move-result v7

    .line 762
    if-eqz v7, :cond_10

    .line 763
    .line 764
    goto :goto_f

    .line 765
    :sswitch_6
    const-string/jumbo v5, "deep"

    .line 766
    .line 767
    .line 768
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v5

    .line 772
    if-eqz v5, :cond_10

    .line 773
    .line 774
    const/4 v5, 0x1

    .line 775
    goto :goto_f

    .line 776
    :sswitch_7
    const-string/jumbo v5, "screen"

    .line 777
    .line 778
    .line 779
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v5

    .line 783
    if-eqz v5, :cond_10

    .line 784
    .line 785
    move v5, v7

    .line 786
    goto :goto_f

    .line 787
    :sswitch_8
    const-string/jumbo v5, "offbody"

    .line 788
    .line 789
    .line 790
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v5

    .line 794
    if-eqz v5, :cond_10

    .line 795
    .line 796
    move v5, v15

    .line 797
    goto :goto_f

    .line 798
    :sswitch_9
    const-string/jumbo v5, "modemanagerquick"

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result v5

    .line 805
    if-eqz v5, :cond_10

    .line 806
    .line 807
    move v5, v14

    .line 808
    goto :goto_f

    .line 809
    :sswitch_a
    const-string/jumbo v5, "forcemodemanagerquick"

    .line 810
    .line 811
    .line 812
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v5

    .line 816
    if-eqz v5, :cond_10

    .line 817
    .line 818
    const/16 v5, 0x8

    .line 819
    .line 820
    goto :goto_f

    .line 821
    :cond_10
    :goto_e
    move/from16 v5, v22

    .line 822
    .line 823
    :goto_f
    packed-switch v5, :pswitch_data_0

    .line 824
    .line 825
    .line 826
    invoke-virtual {v13, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    goto :goto_10

    .line 834
    :pswitch_0
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    .line 835
    .line 836
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 837
    .line 838
    .line 839
    goto :goto_10

    .line 840
    :pswitch_1
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mIsOffBody:Z

    .line 841
    .line 842
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 843
    .line 844
    .line 845
    goto :goto_10

    .line 846
    :pswitch_2
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 847
    .line 848
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 849
    .line 850
    .line 851
    goto :goto_10

    .line 852
    :pswitch_3
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 853
    .line 854
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 855
    .line 856
    .line 857
    goto :goto_10

    .line 858
    :pswitch_4
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 859
    .line 860
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 861
    .line 862
    .line 863
    goto :goto_10

    .line 864
    :pswitch_5
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 865
    .line 866
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 867
    .line 868
    .line 869
    goto :goto_10

    .line 870
    :pswitch_6
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 871
    .line 872
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 873
    .line 874
    .line 875
    goto :goto_10

    .line 876
    :pswitch_7
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 877
    .line 878
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 879
    .line 880
    .line 881
    goto :goto_10

    .line 882
    :pswitch_8
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 883
    .line 884
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 885
    .line 886
    .line 887
    goto :goto_10

    .line 888
    :pswitch_9
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 889
    .line 890
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    goto :goto_10

    .line 898
    :pswitch_a
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 899
    .line 900
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v2

    .line 904
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 905
    .line 906
    .line 907
    :goto_10
    :try_start_17
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    .line 909
    .line 910
    goto :goto_12

    .line 911
    :catchall_b
    move-exception v0

    .line 912
    move-object v2, v0

    .line 913
    goto :goto_13

    .line 914
    :goto_11
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 915
    .line 916
    .line 917
    throw v2

    .line 918
    :cond_11
    const-string v2, "Argument required"

    .line 919
    .line 920
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    :goto_12
    monitor-exit p0

    .line 924
    goto/16 :goto_2

    .line 925
    .line 926
    :goto_13
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 927
    throw v2

    .line 928
    :cond_12
    const-string/jumbo v4, "disable"

    .line 929
    .line 930
    .line 931
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 932
    .line 933
    .line 934
    move-result v4

    .line 935
    if-eqz v4, :cond_1c

    .line 936
    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    const-string v4, "android.permission.DEVICE_POWER"

    .line 942
    .line 943
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    monitor-enter p0

    .line 947
    :try_start_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 948
    .line 949
    .line 950
    move-result-wide v2

    .line 951
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 955
    if-eqz v4, :cond_14

    .line 956
    .line 957
    :try_start_19
    const-string/jumbo v5, "deep"

    .line 958
    .line 959
    .line 960
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    move-result v5

    .line 964
    if-nez v5, :cond_14

    .line 965
    .line 966
    const-string v5, "all"

    .line 967
    .line 968
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    move-result v5

    .line 972
    if-eqz v5, :cond_13

    .line 973
    .line 974
    goto :goto_15

    .line 975
    :cond_13
    const/4 v5, 0x0

    .line 976
    :goto_14
    const/4 v7, 0x0

    .line 977
    goto :goto_16

    .line 978
    :catchall_c
    move-exception v0

    .line 979
    move-object v4, v0

    .line 980
    goto/16 :goto_1a

    .line 981
    .line 982
    :cond_14
    :goto_15
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 983
    .line 984
    if-eqz v5, :cond_15

    .line 985
    .line 986
    const/4 v5, 0x0

    .line 987
    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 988
    .line 989
    const-string v5, "Deep idle mode disabled"

    .line 990
    .line 991
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    const/4 v5, 0x1

    .line 995
    const/4 v7, 0x1

    .line 996
    goto :goto_16

    .line 997
    :cond_15
    const/4 v5, 0x1

    .line 998
    goto :goto_14

    .line 999
    :goto_16
    if-eqz v4, :cond_17

    .line 1000
    .line 1001
    const-string/jumbo v8, "light"

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v8

    .line 1008
    if-nez v8, :cond_17

    .line 1009
    .line 1010
    const-string v8, "all"

    .line 1011
    .line 1012
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v8

    .line 1016
    if-eqz v8, :cond_16

    .line 1017
    .line 1018
    goto :goto_17

    .line 1019
    :cond_16
    move/from16 v21, v5

    .line 1020
    .line 1021
    goto :goto_18

    .line 1022
    :cond_17
    :goto_17
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1023
    .line 1024
    if-eqz v5, :cond_18

    .line 1025
    .line 1026
    const/4 v5, 0x0

    .line 1027
    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1028
    .line 1029
    const-string v5, "Light idle mode disabled"

    .line 1030
    .line 1031
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    const/4 v7, 0x1

    .line 1035
    :cond_18
    const/16 v21, 0x1

    .line 1036
    .line 1037
    :goto_18
    if-eqz v7, :cond_1a

    .line 1038
    .line 1039
    if-nez v4, :cond_19

    .line 1040
    .line 1041
    const-string v5, "all"

    .line 1042
    .line 1043
    goto :goto_19

    .line 1044
    :cond_19
    move-object v5, v4

    .line 1045
    :goto_19
    invoke-virtual {v5, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v5

    .line 1049
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 1050
    .line 1051
    .line 1052
    move-result v7

    .line 1053
    invoke-virtual {v1, v7, v5}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    :cond_1a
    if-nez v21, :cond_1b

    .line 1057
    .line 1058
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v4

    .line 1070
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 1071
    .line 1072
    .line 1073
    :cond_1b
    :try_start_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1074
    .line 1075
    .line 1076
    monitor-exit p0

    .line 1077
    goto/16 :goto_2

    .line 1078
    .line 1079
    :catchall_d
    move-exception v0

    .line 1080
    move-object v2, v0

    .line 1081
    goto :goto_1b

    .line 1082
    :goto_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1083
    .line 1084
    .line 1085
    throw v4

    .line 1086
    :goto_1b
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 1087
    throw v2

    .line 1088
    :cond_1c
    const-string/jumbo v4, "enable"

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1092
    .line 1093
    .line 1094
    move-result v4

    .line 1095
    if-eqz v4, :cond_25

    .line 1096
    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v3

    .line 1101
    const-string v4, "android.permission.DEVICE_POWER"

    .line 1102
    .line 1103
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    monitor-enter p0

    .line 1107
    :try_start_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1108
    .line 1109
    .line 1110
    move-result-wide v2

    .line 1111
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    .line 1115
    if-eqz v4, :cond_1e

    .line 1116
    .line 1117
    :try_start_1c
    const-string/jumbo v5, "deep"

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1121
    .line 1122
    .line 1123
    move-result v5

    .line 1124
    if-nez v5, :cond_1e

    .line 1125
    .line 1126
    const-string v5, "all"

    .line 1127
    .line 1128
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v5

    .line 1132
    if-eqz v5, :cond_1d

    .line 1133
    .line 1134
    goto :goto_1c

    .line 1135
    :cond_1d
    const/4 v5, 0x0

    .line 1136
    const/4 v7, 0x0

    .line 1137
    goto :goto_1e

    .line 1138
    :catchall_e
    move-exception v0

    .line 1139
    move-object v4, v0

    .line 1140
    goto :goto_22

    .line 1141
    :cond_1e
    :goto_1c
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 1142
    .line 1143
    if-nez v5, :cond_1f

    .line 1144
    .line 1145
    const/4 v5, 0x1

    .line 1146
    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 1147
    .line 1148
    const-string v5, "Deep idle mode enabled"

    .line 1149
    .line 1150
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    const/4 v5, 0x1

    .line 1154
    :goto_1d
    const/4 v7, 0x1

    .line 1155
    goto :goto_1e

    .line 1156
    :cond_1f
    const/4 v5, 0x0

    .line 1157
    goto :goto_1d

    .line 1158
    :goto_1e
    if-eqz v4, :cond_21

    .line 1159
    .line 1160
    const-string/jumbo v8, "light"

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1164
    .line 1165
    .line 1166
    move-result v8

    .line 1167
    if-nez v8, :cond_21

    .line 1168
    .line 1169
    const-string v8, "all"

    .line 1170
    .line 1171
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1172
    .line 1173
    .line 1174
    move-result v8

    .line 1175
    if-eqz v8, :cond_20

    .line 1176
    .line 1177
    goto :goto_1f

    .line 1178
    :cond_20
    move/from16 v21, v7

    .line 1179
    .line 1180
    move v7, v5

    .line 1181
    goto :goto_21

    .line 1182
    :cond_21
    :goto_1f
    iget-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1183
    .line 1184
    if-nez v7, :cond_22

    .line 1185
    .line 1186
    const/4 v7, 0x1

    .line 1187
    iput-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1188
    .line 1189
    const-string v5, "Light idle mode enable"

    .line 1190
    .line 1191
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    const/4 v7, 0x1

    .line 1195
    :goto_20
    const/16 v21, 0x1

    .line 1196
    .line 1197
    goto :goto_21

    .line 1198
    :cond_22
    move v7, v5

    .line 1199
    goto :goto_20

    .line 1200
    :goto_21
    if-eqz v7, :cond_23

    .line 1201
    .line 1202
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1203
    .line 1204
    .line 1205
    :cond_23
    if-nez v21, :cond_24

    .line 1206
    .line 1207
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v4

    .line 1219
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    .line 1220
    .line 1221
    .line 1222
    :cond_24
    :try_start_1d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    .line 1224
    .line 1225
    monitor-exit p0

    .line 1226
    goto/16 :goto_2

    .line 1227
    .line 1228
    :catchall_f
    move-exception v0

    .line 1229
    move-object v2, v0

    .line 1230
    goto :goto_23

    .line 1231
    :goto_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1232
    .line 1233
    .line 1234
    throw v4

    .line 1235
    :goto_23
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    .line 1236
    throw v2

    .line 1237
    :cond_25
    const-string/jumbo v4, "enabled"

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1241
    .line 1242
    .line 1243
    move-result v4

    .line 1244
    if-eqz v4, :cond_2d

    .line 1245
    .line 1246
    monitor-enter p0

    .line 1247
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v2

    .line 1251
    if-eqz v2, :cond_2b

    .line 1252
    .line 1253
    const-string v3, "all"

    .line 1254
    .line 1255
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v3

    .line 1259
    if-eqz v3, :cond_26

    .line 1260
    .line 1261
    goto :goto_25

    .line 1262
    :cond_26
    const-string/jumbo v3, "deep"

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v3

    .line 1269
    if-eqz v3, :cond_28

    .line 1270
    .line 1271
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 1272
    .line 1273
    if-eqz v2, :cond_27

    .line 1274
    .line 1275
    const-string v20, "1"

    .line 1276
    .line 1277
    :cond_27
    move-object/from16 v2, v20

    .line 1278
    .line 1279
    goto :goto_24

    .line 1280
    :catchall_10
    move-exception v0

    .line 1281
    move-object v2, v0

    .line 1282
    goto :goto_27

    .line 1283
    :goto_24
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1284
    .line 1285
    .line 1286
    goto :goto_26

    .line 1287
    :cond_28
    const-string/jumbo v3, "light"

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1291
    .line 1292
    .line 1293
    move-result v3

    .line 1294
    if-eqz v3, :cond_2a

    .line 1295
    .line 1296
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1297
    .line 1298
    if-eqz v2, :cond_29

    .line 1299
    .line 1300
    const-string v20, "1"

    .line 1301
    .line 1302
    :cond_29
    move-object/from16 v2, v20

    .line 1303
    .line 1304
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1305
    .line 1306
    .line 1307
    goto :goto_26

    .line 1308
    :cond_2a
    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v2

    .line 1312
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1313
    .line 1314
    .line 1315
    goto :goto_26

    .line 1316
    :cond_2b
    :goto_25
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 1317
    .line 1318
    if-eqz v2, :cond_2c

    .line 1319
    .line 1320
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1321
    .line 1322
    if-eqz v2, :cond_2c

    .line 1323
    .line 1324
    const-string v20, "1"

    .line 1325
    .line 1326
    :cond_2c
    move-object/from16 v2, v20

    .line 1327
    .line 1328
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1329
    .line 1330
    .line 1331
    :goto_26
    monitor-exit p0

    .line 1332
    goto/16 :goto_2

    .line 1333
    .line 1334
    :goto_27
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 1335
    throw v2

    .line 1336
    :cond_2d
    const-string/jumbo v4, "whitelist"

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1340
    .line 1341
    .line 1342
    move-result v4

    .line 1343
    const/16 v9, 0x3d

    .line 1344
    .line 1345
    const/16 v10, 0x2d

    .line 1346
    .line 1347
    const/16 v11, 0x2b

    .line 1348
    .line 1349
    if-eqz v4, :cond_39

    .line 1350
    .line 1351
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v3

    .line 1355
    if-eqz v3, :cond_34

    .line 1356
    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v4

    .line 1361
    const-string v8, "android.permission.DEVICE_POWER"

    .line 1362
    .line 1363
    invoke-virtual {v4, v8, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1367
    .line 1368
    .line 1369
    move-result-wide v12

    .line 1370
    :cond_2e
    :try_start_1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1371
    .line 1372
    .line 1373
    move-result v4

    .line 1374
    const/4 v8, 0x1

    .line 1375
    if-lt v4, v8, :cond_33

    .line 1376
    .line 1377
    const/4 v4, 0x0

    .line 1378
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 1379
    .line 1380
    .line 1381
    move-result v8

    .line 1382
    if-eq v8, v10, :cond_2f

    .line 1383
    .line 1384
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 1385
    .line 1386
    .line 1387
    move-result v8

    .line 1388
    if-eq v8, v11, :cond_2f

    .line 1389
    .line 1390
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 1391
    .line 1392
    .line 1393
    move-result v8

    .line 1394
    if-eq v8, v9, :cond_2f

    .line 1395
    .line 1396
    goto :goto_29

    .line 1397
    :catchall_11
    move-exception v0

    .line 1398
    move-object v1, v0

    .line 1399
    goto :goto_2a

    .line 1400
    :cond_2f
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 1401
    .line 1402
    .line 1403
    move-result v8

    .line 1404
    const/4 v14, 0x1

    .line 1405
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v3

    .line 1409
    if-ne v8, v11, :cond_30

    .line 1410
    .line 1411
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v8

    .line 1415
    invoke-virtual {v1, v8, v5, v2}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppsInternal(Ljava/util/List;ILcom/android/server/DeviceIdleController$TargetPkg;)I

    .line 1416
    .line 1417
    .line 1418
    move-result v8

    .line 1419
    if-ne v8, v14, :cond_32

    .line 1420
    .line 1421
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1424
    .line 1425
    .line 1426
    const-string v14, "Added: "

    .line 1427
    .line 1428
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v3

    .line 1438
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    .line 1440
    .line 1441
    goto :goto_28

    .line 1442
    :cond_30
    if-ne v8, v10, :cond_31

    .line 1443
    .line 1444
    invoke-virtual {v1, v3, v7, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z

    .line 1445
    .line 1446
    .line 1447
    move-result v8

    .line 1448
    if-eqz v8, :cond_32

    .line 1449
    .line 1450
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1453
    .line 1454
    .line 1455
    const-string v14, "Removed: "

    .line 1456
    .line 1457
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v3

    .line 1467
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    goto :goto_28

    .line 1471
    :cond_31
    invoke-virtual {v1, v3}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    .line 1472
    .line 1473
    .line 1474
    move-result v3

    .line 1475
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1476
    .line 1477
    .line 1478
    :cond_32
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    .line 1482
    if-nez v3, :cond_2e

    .line 1483
    .line 1484
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1485
    .line 1486
    .line 1487
    goto/16 :goto_2e

    .line 1488
    .line 1489
    :cond_33
    :goto_29
    :try_start_20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1490
    .line 1491
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1492
    .line 1493
    .line 1494
    const-string v2, "Package must be prefixed with +, -, or =: "

    .line 1495
    .line 1496
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v1

    .line 1506
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    .line 1507
    .line 1508
    .line 1509
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1510
    .line 1511
    .line 1512
    return v22

    .line 1513
    :goto_2a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1514
    .line 1515
    .line 1516
    throw v1

    .line 1517
    :cond_34
    const/4 v4, 0x0

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v2

    .line 1522
    const-string v3, "DeviceIdleController"

    .line 1523
    .line 1524
    invoke-static {v2, v3, v6}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v2

    .line 1528
    if-nez v2, :cond_35

    .line 1529
    .line 1530
    return v22

    .line 1531
    :cond_35
    monitor-enter p0

    .line 1532
    move v2, v4

    .line 1533
    :goto_2b
    :try_start_21
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 1534
    .line 1535
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1536
    .line 1537
    .line 1538
    move-result v3

    .line 1539
    if-ge v2, v3, :cond_36

    .line 1540
    .line 1541
    const-string/jumbo v3, "system-excidle,"

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1545
    .line 1546
    .line 1547
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 1548
    .line 1549
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v3

    .line 1553
    check-cast v3, Ljava/lang/String;

    .line 1554
    .line 1555
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    .line 1557
    .line 1558
    const-string v3, ","

    .line 1559
    .line 1560
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1561
    .line 1562
    .line 1563
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 1564
    .line 1565
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v3

    .line 1569
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1570
    .line 1571
    .line 1572
    add-int/lit8 v2, v2, 0x1

    .line 1573
    .line 1574
    goto :goto_2b

    .line 1575
    :catchall_12
    move-exception v0

    .line 1576
    move-object v2, v0

    .line 1577
    goto :goto_2f

    .line 1578
    :cond_36
    move v2, v4

    .line 1579
    :goto_2c
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 1580
    .line 1581
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1582
    .line 1583
    .line 1584
    move-result v3

    .line 1585
    if-ge v2, v3, :cond_37

    .line 1586
    .line 1587
    const-string/jumbo v3, "system,"

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1591
    .line 1592
    .line 1593
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 1594
    .line 1595
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v3

    .line 1599
    check-cast v3, Ljava/lang/String;

    .line 1600
    .line 1601
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1602
    .line 1603
    .line 1604
    const-string v3, ","

    .line 1605
    .line 1606
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1607
    .line 1608
    .line 1609
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 1610
    .line 1611
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v3

    .line 1615
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1616
    .line 1617
    .line 1618
    add-int/lit8 v2, v2, 0x1

    .line 1619
    .line 1620
    goto :goto_2c

    .line 1621
    :cond_37
    move v2, v4

    .line 1622
    :goto_2d
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 1623
    .line 1624
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1625
    .line 1626
    .line 1627
    move-result v3

    .line 1628
    if-ge v2, v3, :cond_38

    .line 1629
    .line 1630
    const-string/jumbo v3, "user,"

    .line 1631
    .line 1632
    .line 1633
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1634
    .line 1635
    .line 1636
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 1637
    .line 1638
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v3

    .line 1642
    check-cast v3, Ljava/lang/String;

    .line 1643
    .line 1644
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1645
    .line 1646
    .line 1647
    const-string v3, ","

    .line 1648
    .line 1649
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1650
    .line 1651
    .line 1652
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 1653
    .line 1654
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v3

    .line 1658
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1659
    .line 1660
    .line 1661
    add-int/lit8 v2, v2, 0x1

    .line 1662
    .line 1663
    goto :goto_2d

    .line 1664
    :cond_38
    monitor-exit p0

    .line 1665
    :goto_2e
    move v12, v4

    .line 1666
    goto/16 :goto_44

    .line 1667
    .line 1668
    :goto_2f
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    .line 1669
    throw v2

    .line 1670
    :cond_39
    const/4 v4, 0x0

    .line 1671
    const-string/jumbo v5, "whitelist-history"

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1675
    .line 1676
    .line 1677
    move-result v5

    .line 1678
    if-eqz v5, :cond_3b

    .line 1679
    .line 1680
    monitor-enter p0

    .line 1681
    :try_start_22
    iget-object v2, v1, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 1682
    .line 1683
    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 1684
    .line 1685
    .line 1686
    move-result v2

    .line 1687
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1688
    .line 1689
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1690
    .line 1691
    .line 1692
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v3

    .line 1699
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    .line 1701
    .line 1702
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 1703
    .line 1704
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v3

    .line 1708
    check-cast v3, [Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 1709
    .line 1710
    move v5, v4

    .line 1711
    :goto_30
    if-ge v5, v2, :cond_3a

    .line 1712
    .line 1713
    aget-object v7, v3, v5

    .line 1714
    .line 1715
    invoke-virtual {v7}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->toString()Ljava/lang/String;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v7

    .line 1719
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    .line 1721
    .line 1722
    add-int/lit8 v5, v5, 0x1

    .line 1723
    .line 1724
    goto :goto_30

    .line 1725
    :catchall_13
    move-exception v0

    .line 1726
    move-object v2, v0

    .line 1727
    goto :goto_31

    .line 1728
    :cond_3a
    monitor-exit p0

    .line 1729
    goto :goto_2e

    .line 1730
    :goto_31
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_13

    .line 1731
    throw v2

    .line 1732
    :cond_3b
    const-string/jumbo v5, "whitelist-reviewed"

    .line 1733
    .line 1734
    .line 1735
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1736
    .line 1737
    .line 1738
    move-result v5

    .line 1739
    if-eqz v5, :cond_3c

    .line 1740
    .line 1741
    monitor-enter p0

    .line 1742
    :try_start_23
    const-string v2, "  Doze Allowlist Gatekeeper: false"

    .line 1743
    .line 1744
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    .line 1746
    .line 1747
    monitor-exit p0

    .line 1748
    goto :goto_2e

    .line 1749
    :catchall_14
    move-exception v0

    .line 1750
    move-object v2, v0

    .line 1751
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    .line 1752
    throw v2

    .line 1753
    :cond_3c
    const-string/jumbo v5, "tempwhitelist"

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1757
    .line 1758
    .line 1759
    move-result v5

    .line 1760
    if-eqz v5, :cond_47

    .line 1761
    .line 1762
    const-wide/16 v2, 0x2710

    .line 1763
    .line 1764
    move-wide v7, v2

    .line 1765
    move v2, v4

    .line 1766
    :goto_32
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v3

    .line 1770
    if-eqz v3, :cond_42

    .line 1771
    .line 1772
    const-string v5, "-u"

    .line 1773
    .line 1774
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1775
    .line 1776
    .line 1777
    move-result v5

    .line 1778
    if-eqz v5, :cond_3e

    .line 1779
    .line 1780
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v3

    .line 1784
    if-nez v3, :cond_3d

    .line 1785
    .line 1786
    const-string v1, "-u requires a user number"

    .line 1787
    .line 1788
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    .line 1790
    .line 1791
    return v22

    .line 1792
    :cond_3d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1793
    .line 1794
    .line 1795
    move-result v3

    .line 1796
    move v12, v4

    .line 1797
    move-object/from16 v4, p1

    .line 1798
    .line 1799
    iput v3, v4, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 1800
    .line 1801
    goto :goto_33

    .line 1802
    :cond_3e
    move v12, v4

    .line 1803
    move-object/from16 v4, p1

    .line 1804
    .line 1805
    const-string v5, "-d"

    .line 1806
    .line 1807
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1808
    .line 1809
    .line 1810
    move-result v5

    .line 1811
    if-eqz v5, :cond_41

    .line 1812
    .line 1813
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v3

    .line 1817
    if-nez v3, :cond_3f

    .line 1818
    .line 1819
    const-string v1, "-d requires a duration"

    .line 1820
    .line 1821
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1822
    .line 1823
    .line 1824
    return v22

    .line 1825
    :cond_3f
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1826
    .line 1827
    .line 1828
    move-result-wide v7

    .line 1829
    :cond_40
    :goto_33
    move v4, v12

    .line 1830
    goto :goto_32

    .line 1831
    :cond_41
    const-string v5, "-r"

    .line 1832
    .line 1833
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1834
    .line 1835
    .line 1836
    move-result v3

    .line 1837
    if-eqz v3, :cond_40

    .line 1838
    .line 1839
    move v4, v12

    .line 1840
    const/4 v2, 0x1

    .line 1841
    goto :goto_32

    .line 1842
    :cond_42
    move v12, v4

    .line 1843
    move-object/from16 v4, p1

    .line 1844
    .line 1845
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v5

    .line 1849
    if-eqz v5, :cond_44

    .line 1850
    .line 1851
    if-eqz v2, :cond_43

    .line 1852
    .line 1853
    :try_start_24
    iget v2, v4, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 1854
    .line 1855
    invoke-virtual {v1, v2, v5}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempAllowlistAppChecked(ILjava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0

    .line 1856
    .line 1857
    .line 1858
    goto/16 :goto_44

    .line 1859
    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    move-object v1, v0

    .line 1862
    move-object v13, v6

    .line 1863
    goto :goto_35

    .line 1864
    :cond_43
    :try_start_25
    iget v2, v4, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 1865
    .line 1866
    const-string/jumbo v9, "shell"
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_2

    .line 1867
    .line 1868
    .line 1869
    const/16 v3, 0x13c

    .line 1870
    .line 1871
    move-object/from16 v1, p0

    .line 1872
    .line 1873
    move-object v4, v5

    .line 1874
    move-object v5, v9

    .line 1875
    move-object v13, v6

    .line 1876
    move-wide v6, v7

    .line 1877
    :try_start_26
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(IILjava/lang/String;Ljava/lang/String;J)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1

    .line 1878
    .line 1879
    .line 1880
    goto/16 :goto_44

    .line 1881
    .line 1882
    :catch_1
    move-exception v0

    .line 1883
    :goto_34
    move-object v1, v0

    .line 1884
    goto :goto_35

    .line 1885
    :catch_2
    move-exception v0

    .line 1886
    move-object v13, v6

    .line 1887
    goto :goto_34

    .line 1888
    :goto_35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1889
    .line 1890
    const-string v3, "Failed: "

    .line 1891
    .line 1892
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1893
    .line 1894
    .line 1895
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1896
    .line 1897
    .line 1898
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v1

    .line 1902
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    .line 1904
    .line 1905
    return v22

    .line 1906
    :cond_44
    move-object v13, v6

    .line 1907
    if-eqz v2, :cond_45

    .line 1908
    .line 1909
    const-string v1, "[-r] requires a package name"

    .line 1910
    .line 1911
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    .line 1913
    .line 1914
    return v22

    .line 1915
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v2

    .line 1919
    const-string v3, "DeviceIdleController"

    .line 1920
    .line 1921
    invoke-static {v2, v3, v13}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 1922
    .line 1923
    .line 1924
    move-result v2

    .line 1925
    if-nez v2, :cond_46

    .line 1926
    .line 1927
    return v22

    .line 1928
    :cond_46
    monitor-enter p0

    .line 1929
    :try_start_27
    invoke-virtual {v1, v13, v12}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistScheduleLocked(Ljava/io/PrintWriter;Z)V

    .line 1930
    .line 1931
    .line 1932
    monitor-exit p0

    .line 1933
    goto/16 :goto_44

    .line 1934
    .line 1935
    :catchall_15
    move-exception v0

    .line 1936
    move-object v2, v0

    .line 1937
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_15

    .line 1938
    throw v2

    .line 1939
    :cond_47
    move v12, v4

    .line 1940
    move-object v13, v6

    .line 1941
    move-object/from16 v4, p1

    .line 1942
    .line 1943
    const-string/jumbo v5, "except-idle-whitelist"

    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1947
    .line 1948
    .line 1949
    move-result v5

    .line 1950
    if-eqz v5, :cond_4f

    .line 1951
    .line 1952
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v3

    .line 1956
    const-string v5, "android.permission.DEVICE_POWER"

    .line 1957
    .line 1958
    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    .line 1960
    .line 1961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1962
    .line 1963
    .line 1964
    move-result-wide v2

    .line 1965
    :try_start_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v5

    .line 1969
    if-nez v5, :cond_48

    .line 1970
    .line 1971
    const-string v1, "No arguments given"

    .line 1972
    .line 1973
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_16

    .line 1974
    .line 1975
    .line 1976
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1977
    .line 1978
    .line 1979
    return v22

    .line 1980
    :catchall_16
    move-exception v0

    .line 1981
    move-object v1, v0

    .line 1982
    goto/16 :goto_39

    .line 1983
    .line 1984
    :cond_48
    :try_start_29
    const-string/jumbo v6, "reset"

    .line 1985
    .line 1986
    .line 1987
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1988
    .line 1989
    .line 1990
    move-result v6

    .line 1991
    if-eqz v6, :cond_49

    .line 1992
    .line 1993
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V

    .line 1994
    .line 1995
    .line 1996
    goto :goto_37

    .line 1997
    :cond_49
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1998
    .line 1999
    .line 2000
    move-result v6

    .line 2001
    const/4 v7, 0x1

    .line 2002
    if-lt v6, v7, :cond_4e

    .line 2003
    .line 2004
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 2005
    .line 2006
    .line 2007
    move-result v6

    .line 2008
    if-eq v6, v10, :cond_4a

    .line 2009
    .line 2010
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 2011
    .line 2012
    .line 2013
    move-result v6

    .line 2014
    if-eq v6, v11, :cond_4a

    .line 2015
    .line 2016
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 2017
    .line 2018
    .line 2019
    move-result v6

    .line 2020
    if-eq v6, v9, :cond_4a

    .line 2021
    .line 2022
    goto :goto_38

    .line 2023
    :cond_4a
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 2024
    .line 2025
    .line 2026
    move-result v6

    .line 2027
    const/4 v7, 0x1

    .line 2028
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v8

    .line 2032
    if-ne v6, v11, :cond_4c

    .line 2033
    .line 2034
    invoke-virtual {v1, v8}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    .line 2035
    .line 2036
    .line 2037
    move-result v5

    .line 2038
    if-eqz v5, :cond_4b

    .line 2039
    .line 2040
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2041
    .line 2042
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2043
    .line 2044
    .line 2045
    const-string v6, "Added: "

    .line 2046
    .line 2047
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    .line 2049
    .line 2050
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    .line 2052
    .line 2053
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v5

    .line 2057
    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    .line 2059
    .line 2060
    goto :goto_36

    .line 2061
    :cond_4b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2062
    .line 2063
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2064
    .line 2065
    .line 2066
    const-string v6, "Unknown package: "

    .line 2067
    .line 2068
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    .line 2070
    .line 2071
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    .line 2073
    .line 2074
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v5

    .line 2078
    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    .line 2080
    .line 2081
    goto :goto_36

    .line 2082
    :cond_4c
    if-ne v6, v9, :cond_4d

    .line 2083
    .line 2084
    invoke-virtual {v1, v8}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    .line 2085
    .line 2086
    .line 2087
    move-result v5

    .line 2088
    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2089
    .line 2090
    .line 2091
    :goto_36
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_16

    .line 2095
    if-nez v5, :cond_49

    .line 2096
    .line 2097
    :goto_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2098
    .line 2099
    .line 2100
    goto/16 :goto_44

    .line 2101
    .line 2102
    :cond_4d
    :try_start_2a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2103
    .line 2104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2105
    .line 2106
    .line 2107
    const-string v4, "Unknown argument: "

    .line 2108
    .line 2109
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    .line 2111
    .line 2112
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    .line 2114
    .line 2115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2116
    .line 2117
    .line 2118
    move-result-object v1

    .line 2119
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    .line 2120
    .line 2121
    .line 2122
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2123
    .line 2124
    .line 2125
    return v22

    .line 2126
    :cond_4e
    :goto_38
    :try_start_2b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2127
    .line 2128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2129
    .line 2130
    .line 2131
    const-string v4, "Package must be prefixed with +, -, or =: "

    .line 2132
    .line 2133
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    .line 2135
    .line 2136
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    .line 2138
    .line 2139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v1

    .line 2143
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    .line 2144
    .line 2145
    .line 2146
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2147
    .line 2148
    .line 2149
    return v22

    .line 2150
    :goto_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2151
    .line 2152
    .line 2153
    throw v1

    .line 2154
    :cond_4f
    const-string/jumbo v5, "sys-whitelist"

    .line 2155
    .line 2156
    .line 2157
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2158
    .line 2159
    .line 2160
    move-result v5

    .line 2161
    if-eqz v5, :cond_59

    .line 2162
    .line 2163
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v3

    .line 2167
    if-eqz v3, :cond_56

    .line 2168
    .line 2169
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v5

    .line 2173
    const-string v6, "android.permission.DEVICE_POWER"

    .line 2174
    .line 2175
    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    .line 2177
    .line 2178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2179
    .line 2180
    .line 2181
    move-result-wide v5

    .line 2182
    :try_start_2c
    const-string/jumbo v7, "reset"

    .line 2183
    .line 2184
    .line 2185
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2186
    .line 2187
    .line 2188
    move-result v7

    .line 2189
    if-eqz v7, :cond_50

    .line 2190
    .line 2191
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetSystemPowerWhitelistInternal()V

    .line 2192
    .line 2193
    .line 2194
    goto :goto_3b

    .line 2195
    :catchall_17
    move-exception v0

    .line 2196
    move-object v1, v0

    .line 2197
    goto/16 :goto_3d

    .line 2198
    .line 2199
    :cond_50
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 2200
    .line 2201
    .line 2202
    move-result v7

    .line 2203
    const/4 v8, 0x1

    .line 2204
    if-lt v7, v8, :cond_55

    .line 2205
    .line 2206
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 2207
    .line 2208
    .line 2209
    move-result v7

    .line 2210
    if-eq v7, v10, :cond_51

    .line 2211
    .line 2212
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 2213
    .line 2214
    .line 2215
    move-result v7

    .line 2216
    if-eq v7, v11, :cond_51

    .line 2217
    .line 2218
    goto :goto_3c

    .line 2219
    :cond_51
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 2220
    .line 2221
    .line 2222
    move-result v7

    .line 2223
    const/4 v8, 0x1

    .line 2224
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v3

    .line 2228
    if-eq v7, v11, :cond_53

    .line 2229
    .line 2230
    if-eq v7, v10, :cond_52

    .line 2231
    .line 2232
    goto :goto_3a

    .line 2233
    :cond_52
    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z

    .line 2234
    .line 2235
    .line 2236
    move-result v7

    .line 2237
    if-eqz v7, :cond_54

    .line 2238
    .line 2239
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2240
    .line 2241
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2242
    .line 2243
    .line 2244
    const-string v8, "Removed "

    .line 2245
    .line 2246
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    .line 2248
    .line 2249
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    .line 2251
    .line 2252
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v3

    .line 2256
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2257
    .line 2258
    .line 2259
    goto :goto_3a

    .line 2260
    :cond_53
    invoke-virtual {v1, v3, v14, v2}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z

    .line 2261
    .line 2262
    .line 2263
    move-result v7

    .line 2264
    if-eqz v7, :cond_54

    .line 2265
    .line 2266
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2267
    .line 2268
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2269
    .line 2270
    .line 2271
    const-string v8, "Restored "

    .line 2272
    .line 2273
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    .line 2275
    .line 2276
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    .line 2278
    .line 2279
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v3

    .line 2283
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    .line 2285
    .line 2286
    :cond_54
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_17

    .line 2290
    if-nez v3, :cond_50

    .line 2291
    .line 2292
    :goto_3b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2293
    .line 2294
    .line 2295
    goto/16 :goto_44

    .line 2296
    .line 2297
    :cond_55
    :goto_3c
    :try_start_2d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2298
    .line 2299
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2300
    .line 2301
    .line 2302
    const-string v2, "Package must be prefixed with + or - "

    .line 2303
    .line 2304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    .line 2306
    .line 2307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    .line 2309
    .line 2310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2311
    .line 2312
    .line 2313
    move-result-object v1

    .line 2314
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_17

    .line 2315
    .line 2316
    .line 2317
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2318
    .line 2319
    .line 2320
    return v22

    .line 2321
    :goto_3d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2322
    .line 2323
    .line 2324
    throw v1

    .line 2325
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2326
    .line 2327
    .line 2328
    move-result-object v2

    .line 2329
    const-string v3, "DeviceIdleController"

    .line 2330
    .line 2331
    invoke-static {v2, v3, v13}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 2332
    .line 2333
    .line 2334
    move-result v2

    .line 2335
    if-nez v2, :cond_57

    .line 2336
    .line 2337
    return v22

    .line 2338
    :cond_57
    monitor-enter p0

    .line 2339
    move v2, v12

    .line 2340
    :goto_3e
    :try_start_2e
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 2341
    .line 2342
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 2343
    .line 2344
    .line 2345
    move-result v3

    .line 2346
    if-ge v2, v3, :cond_58

    .line 2347
    .line 2348
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 2349
    .line 2350
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v3

    .line 2354
    check-cast v3, Ljava/lang/String;

    .line 2355
    .line 2356
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    .line 2358
    .line 2359
    const-string v3, ","

    .line 2360
    .line 2361
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2362
    .line 2363
    .line 2364
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 2365
    .line 2366
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 2367
    .line 2368
    .line 2369
    move-result-object v3

    .line 2370
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2371
    .line 2372
    .line 2373
    add-int/lit8 v2, v2, 0x1

    .line 2374
    .line 2375
    goto :goto_3e

    .line 2376
    :catchall_18
    move-exception v0

    .line 2377
    move-object v2, v0

    .line 2378
    goto :goto_3f

    .line 2379
    :cond_58
    monitor-exit p0

    .line 2380
    goto/16 :goto_44

    .line 2381
    .line 2382
    :goto_3f
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_18

    .line 2383
    throw v2

    .line 2384
    :cond_59
    const-string/jumbo v5, "motion"

    .line 2385
    .line 2386
    .line 2387
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2388
    .line 2389
    .line 2390
    move-result v5

    .line 2391
    if-eqz v5, :cond_5a

    .line 2392
    .line 2393
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2394
    .line 2395
    .line 2396
    move-result-object v3

    .line 2397
    const-string v4, "android.permission.DEVICE_POWER"

    .line 2398
    .line 2399
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    .line 2401
    .line 2402
    monitor-enter p0

    .line 2403
    :try_start_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2404
    .line 2405
    .line 2406
    move-result-wide v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    .line 2407
    :try_start_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 2408
    .line 2409
    .line 2410
    const-string v4, "Light state: "

    .line 2411
    .line 2412
    invoke-virtual {v13, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2413
    .line 2414
    .line 2415
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2416
    .line 2417
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 2418
    .line 2419
    .line 2420
    move-result-object v4

    .line 2421
    invoke-virtual {v13, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2422
    .line 2423
    .line 2424
    const-string v4, ", deep state: "

    .line 2425
    .line 2426
    invoke-virtual {v13, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2427
    .line 2428
    .line 2429
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2430
    .line 2431
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v4

    .line 2435
    invoke-virtual {v13, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1a

    .line 2436
    .line 2437
    .line 2438
    :try_start_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2439
    .line 2440
    .line 2441
    monitor-exit p0

    .line 2442
    goto/16 :goto_44

    .line 2443
    .line 2444
    :catchall_19
    move-exception v0

    .line 2445
    move-object v2, v0

    .line 2446
    goto :goto_40

    .line 2447
    :catchall_1a
    move-exception v0

    .line 2448
    move-object v4, v0

    .line 2449
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2450
    .line 2451
    .line 2452
    throw v4

    .line 2453
    :goto_40
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_19

    .line 2454
    throw v2

    .line 2455
    :cond_5a
    const-string/jumbo v5, "force-modemanager-quickdoze"

    .line 2456
    .line 2457
    .line 2458
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2459
    .line 2460
    .line 2461
    move-result v5

    .line 2462
    if-eqz v5, :cond_5d

    .line 2463
    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2465
    .line 2466
    .line 2467
    move-result-object v3

    .line 2468
    const-string v5, "android.permission.DEVICE_POWER"

    .line 2469
    .line 2470
    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    .line 2472
    .line 2473
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2474
    .line 2475
    .line 2476
    move-result-object v2

    .line 2477
    const-string/jumbo v3, "true"

    .line 2478
    .line 2479
    .line 2480
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2481
    .line 2482
    .line 2483
    move-result v3

    .line 2484
    if-nez v3, :cond_5c

    .line 2485
    .line 2486
    const-string/jumbo v3, "false"

    .line 2487
    .line 2488
    .line 2489
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2490
    .line 2491
    .line 2492
    move-result v3

    .line 2493
    if-eqz v3, :cond_5b

    .line 2494
    .line 2495
    goto :goto_41

    .line 2496
    :cond_5b
    const-string v1, "Provide true or false argument after force-modemanager-quickdoze"

    .line 2497
    .line 2498
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    .line 2500
    .line 2501
    return v22

    .line 2502
    :cond_5c
    :goto_41
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2503
    .line 2504
    .line 2505
    move-result v2

    .line 2506
    monitor-enter p0

    .line 2507
    :try_start_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2508
    .line 2509
    .line 2510
    move-result-wide v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1b

    .line 2511
    const/4 v5, 0x1

    .line 2512
    :try_start_33
    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 2513
    .line 2514
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2515
    .line 2516
    move-object/from16 v6, v19

    .line 2517
    .line 2518
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2519
    .line 2520
    .line 2521
    iget-boolean v6, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 2522
    .line 2523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2524
    .line 2525
    .line 2526
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v5

    .line 2530
    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2531
    .line 2532
    .line 2533
    iput-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 2534
    .line 2535
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2536
    .line 2537
    move-object/from16 v5, v18

    .line 2538
    .line 2539
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2540
    .line 2541
    .line 2542
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 2543
    .line 2544
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2545
    .line 2546
    .line 2547
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2548
    .line 2549
    .line 2550
    move-result-object v2

    .line 2551
    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2552
    .line 2553
    .line 2554
    iget-object v2, v1, Lcom/android/server/DeviceIdleController;->mModeManagerQuickDozeRequestConsumer:Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;

    .line 2555
    .line 2556
    invoke-static {v2}, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->-$$Nest$monModeManagerRequestChangedLocked(Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1c

    .line 2557
    .line 2558
    .line 2559
    :try_start_34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2560
    .line 2561
    .line 2562
    monitor-exit p0

    .line 2563
    goto/16 :goto_44

    .line 2564
    .line 2565
    :catchall_1b
    move-exception v0

    .line 2566
    move-object v2, v0

    .line 2567
    goto :goto_42

    .line 2568
    :catchall_1c
    move-exception v0

    .line 2569
    move-object v2, v0

    .line 2570
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2571
    .line 2572
    .line 2573
    throw v2

    .line 2574
    :goto_42
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b

    .line 2575
    throw v2

    .line 2576
    :cond_5d
    const-string/jumbo v5, "force-modemanager-offbody"

    .line 2577
    .line 2578
    .line 2579
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2580
    .line 2581
    .line 2582
    move-result v5

    .line 2583
    if-eqz v5, :cond_60

    .line 2584
    .line 2585
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v3

    .line 2589
    const-string v5, "android.permission.DEVICE_POWER"

    .line 2590
    .line 2591
    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    .line 2593
    .line 2594
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2595
    .line 2596
    .line 2597
    move-result-object v2

    .line 2598
    const-string/jumbo v3, "true"

    .line 2599
    .line 2600
    .line 2601
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2602
    .line 2603
    .line 2604
    move-result v3

    .line 2605
    if-nez v3, :cond_5f

    .line 2606
    .line 2607
    const-string/jumbo v3, "false"

    .line 2608
    .line 2609
    .line 2610
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2611
    .line 2612
    .line 2613
    move-result v3

    .line 2614
    if-eqz v3, :cond_5e

    .line 2615
    .line 2616
    goto :goto_43

    .line 2617
    :cond_5e
    const-string v1, "Provide true or false argument after force-modemanager-offbody"

    .line 2618
    .line 2619
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2620
    .line 2621
    .line 2622
    return v22

    .line 2623
    :cond_5f
    :goto_43
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2624
    .line 2625
    .line 2626
    move-result v2

    .line 2627
    monitor-enter p0

    .line 2628
    :try_start_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2629
    .line 2630
    .line 2631
    move-result-wide v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1d

    .line 2632
    const/4 v5, 0x1

    .line 2633
    :try_start_36
    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    .line 2634
    .line 2635
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2636
    .line 2637
    move-object/from16 v6, v17

    .line 2638
    .line 2639
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2640
    .line 2641
    .line 2642
    iget-boolean v6, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    .line 2643
    .line 2644
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2645
    .line 2646
    .line 2647
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v5

    .line 2651
    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2652
    .line 2653
    .line 2654
    iput-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mIsOffBody:Z

    .line 2655
    .line 2656
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2657
    .line 2658
    move-object/from16 v5, v16

    .line 2659
    .line 2660
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2661
    .line 2662
    .line 2663
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mIsOffBody:Z

    .line 2664
    .line 2665
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2666
    .line 2667
    .line 2668
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2669
    .line 2670
    .line 2671
    move-result-object v2

    .line 2672
    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2673
    .line 2674
    .line 2675
    iget-object v2, v1, Lcom/android/server/DeviceIdleController;->mModeManagerOffBodyStateConsumer:Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;

    .line 2676
    .line 2677
    invoke-static {v2}, Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;->-$$Nest$monModeManagerOffBodyChangedLocked(Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1e

    .line 2678
    .line 2679
    .line 2680
    :try_start_37
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2681
    .line 2682
    .line 2683
    monitor-exit p0

    .line 2684
    :goto_44
    return v12

    .line 2685
    :catchall_1d
    move-exception v0

    .line 2686
    move-object v2, v0

    .line 2687
    goto :goto_45

    .line 2688
    :catchall_1e
    move-exception v0

    .line 2689
    move-object v2, v0

    .line 2690
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2691
    .line 2692
    .line 2693
    throw v2

    .line 2694
    :goto_45
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1d

    .line 2695
    throw v2

    .line 2696
    :cond_60
    invoke-virtual/range {p1 .. p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 2697
    .line 2698
    .line 2699
    move-result v1

    .line 2700
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7ed2f392 -> :sswitch_a
        -0x603f487d -> :sswitch_9
        -0x5c52686f -> :sswitch_8
        -0x361a3f94 -> :sswitch_7
        0x2efcec -> :sswitch_6
        0x5d18aeb -> :sswitch_5
        0x6233516 -> :sswitch_4
        0x66f25ed -> :sswitch_3
        0x55996271 -> :sswitch_2
        0x5ea0fe46 -> :sswitch_1
        0x6de15a2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x1110167

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 28
    .line 29
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    move v4, v3

    .line 37
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, 0x1

    .line 42
    const/high16 v7, 0x100000

    .line 43
    .line 44
    if-ge v4, v5, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {v0, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 57
    .line 58
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 63
    .line 64
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v8, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 74
    .line 75
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :catch_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    :try_start_2
    iget-object v1, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 86
    .line 87
    move v2, v3

    .line 88
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-ge v2, v4, :cond_1

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    :try_start_3
    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 105
    .line 106
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 111
    .line 112
    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 122
    .line 123
    invoke-virtual {v8, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 124
    .line 125
    .line 126
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 127
    .line 128
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v8, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 138
    .line 139
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    .line 141
    .line 142
    :catch_1
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 158
    .line 159
    if-nez v4, :cond_2

    .line 160
    .line 161
    new-instance v4, Lcom/android/server/DeviceIdleController$Constants;

    .line 162
    .line 163
    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 164
    .line 165
    .line 166
    iput-object v4, v0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 167
    .line 168
    :cond_2
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 169
    .line 170
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 176
    .line 177
    .line 178
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 179
    .line 180
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 181
    .line 182
    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 183
    .line 184
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 185
    .line 186
    const-string/jumbo v0, "boot"

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v3, v0}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string/jumbo v0, "boot"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v3, v0}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 199
    .line 200
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 201
    .line 202
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 203
    .line 204
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    new-instance v0, Lcom/android/server/DeviceIdleController$BinderService;

    .line 206
    .line 207
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 208
    .line 209
    .line 210
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 211
    .line 212
    const-string/jumbo v1, "deviceidle"

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 216
    .line 217
    .line 218
    new-instance v0, Lcom/android/server/DeviceIdleController$LocalService;

    .line 219
    .line 220
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 221
    .line 222
    .line 223
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 224
    .line 225
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    .line 229
    .line 230
    new-instance v1, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;

    .line 231
    .line 232
    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    throw v0
.end method

.method public final passWhiteListsToForceAppStandbyTrackerLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 13
    .line 14
    iget-object v5, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 17
    .line 18
    iput-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 19
    .line 20
    iput-object v2, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 21
    .line 22
    invoke-static {v4, v1}, Lcom/android/server/AppStateTrackerImpl;->isAnyAppIdUnexempt([I[I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    iget-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 45
    .line 46
    invoke-static {v4, p0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    iget-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 53
    .line 54
    const/4 v1, 0x5

    .line 55
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 66
    .line 67
    invoke-static {v5, p0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_2

    .line 72
    .line 73
    iget-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 74
    .line 75
    const/4 v0, 0x6

    .line 76
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    .line 85
    .line 86
    :cond_2
    monitor-exit v3

    .line 87
    return-void

    .line 88
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final postTempActiveTimeoutMessage(IJ)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "postTempActiveTimeoutMessage: uid="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", delay="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "DeviceIdleController"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x6

    .line 34
    const/4 v1, 0x0

    .line 35
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 36
    .line 37
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final readConfigFileLocked()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reading config from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 8
    :catch_1
    throw p0

    :catch_2
    :goto_0
    return-void
.end method

.method public final readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    .line 9
    const-string v0, "Failed parsing config "

    const-string v1, "DeviceIdleController"

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 10
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_c

    .line 11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 12
    :catch_0
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_d

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_d

    goto :goto_2

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :catch_2
    move-exception p0

    goto/16 :goto_6

    :catch_3
    move-exception p0

    goto/16 :goto_7

    :catch_4
    move-exception p0

    goto/16 :goto_8

    :catch_5
    move-exception p0

    goto/16 :goto_9

    :catch_6
    move-exception p0

    goto/16 :goto_a

    :cond_2
    :goto_2
    if-eq v6, v7, :cond_1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0xed5

    const/4 v9, -0x1

    if-eq v7, v8, :cond_6

    const v8, 0x6a37689

    if-eq v7, v8, :cond_5

    const v8, 0x3df11d97

    if-eq v7, v8, :cond_4

    goto :goto_3

    :cond_4
    const-string/jumbo v7, "reviewed-in-power-save"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v4

    goto :goto_4

    :cond_5
    const-string/jumbo v7, "un-wl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v5

    goto :goto_4

    :cond_6
    const-string/jumbo v7, "wl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v9

    :goto_4
    const-string/jumbo v7, "n"

    const/4 v8, 0x0

    if-eqz v6, :cond_b

    if-eq v6, v5, :cond_a

    if-eq v6, v4, :cond_8

    .line 16
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <config>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {p1}, Lcom/android/internal/util/jobs/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 20
    :cond_8
    const-string/jumbo v6, "package"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 21
    const-string/jumbo v7, "reason"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_9

    .line 22
    invoke-static {p1}, Lcom/android/internal/util/jobs/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 23
    :cond_9
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistReviewedApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_1

    .line 24
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistPrintErrorApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 25
    :cond_a
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 26
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 27
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 28
    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v7, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v7, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    new-instance v10, Lcom/android/server/DeviceIdleController$TargetPkg;

    invoke-direct {v10, v9, v6}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(ILjava/lang/String;)V

    const/16 v6, 0xa

    invoke-direct {v7, v6, v8, v10}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;-><init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V

    .line 31
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v6, v7}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 32
    :cond_b
    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_1

    const/high16 v7, 0x400000

    .line 33
    :try_start_2
    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 34
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 35
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 36
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v9, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    new-instance v10, Lcom/android/server/DeviceIdleController$TargetPkg;

    invoke-direct {v10, v6, v7}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(ILjava/lang/String;)V

    invoke-direct {v9, v5, v8, v10}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;-><init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V

    .line 38
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v6, v9}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 39
    :cond_c
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "no start tag found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 40
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 41
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 42
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 43
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 44
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 45
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_b
    return-void
.end method

.method public final receivedGenericLocationLocked(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Generic location: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "DeviceIdleController"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_1
    new-instance v0, Landroid/location/Location;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 45
    .line 46
    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 47
    .line 48
    cmpl-float p1, p1, v0

    .line 49
    .line 50
    if-lez p1, :cond_2

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    const-string/jumbo p1, "s:location"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public final receivedGpsLocationLocked(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "GPS location: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "DeviceIdleController"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_1
    new-instance v0, Landroid/location/Location;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 45
    .line 46
    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 47
    .line 48
    cmpl-float p1, p1, v0

    .line 49
    .line 50
    if-lez p1, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    const-string/jumbo p1, "s:gps"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 15
    .line 16
    const/4 v1, 0x7

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 25
    .line 26
    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v0, 0x1

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method public final removePowerSaveTempAllowlistAppChecked(ILjava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    .line 6
    .line 7
    const-string v2, "No permission to change device idle whitelist"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const-string/jumbo v9, "removePowerSaveTempWhitelistApp"

    .line 27
    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    move v6, p1

    .line 31
    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppDirectInternal(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :catch_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final removePowerSaveTempWhitelistAppDirectInternal(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/util/Pair;

    .line 25
    .line 26
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method public final removePowerSaveWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/high16 v2, 0x400000

    .line 20
    .line 21
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 26
    .line 27
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 28
    .line 29
    .line 30
    move-result v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    :try_start_2
    const-string v0, "DeviceIdleController"

    .line 35
    .line 36
    const-string v2, "Tried to get uid from package name but failed"

    .line 37
    .line 38
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    new-instance v0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 42
    .line 43
    new-instance v2, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 44
    .line 45
    invoke-direct {v2, v1, p1}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p2, p3, v2}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;-><init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 63
    .line 64
    .line 65
    const-string p1, "battery.value_app_removed_from_power_allowlist"

    .line 66
    .line 67
    invoke-static {p1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    monitor-exit p0

    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_0
    monitor-exit p0

    .line 74
    return v1

    .line 75
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw p1
.end method

.method public final removeSystemPowerWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/high16 v2, 0x100000

    .line 37
    .line 38
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 43
    .line 44
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 45
    .line 46
    .line 47
    move-result v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    :try_start_2
    const-string v0, "DeviceIdleController"

    .line 50
    .line 51
    const-string v2, "Tried to get uid from package name but failed"

    .line 52
    .line 53
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    new-instance v0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 57
    .line 58
    new-instance v2, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 59
    .line 60
    invoke-direct {v2, v1, p1}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p2, p3, v2}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;-><init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 78
    .line 79
    .line 80
    monitor-exit p0

    .line 81
    const/4 p0, 0x1

    .line 82
    return p0

    .line 83
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    throw p1
.end method

.method public final reportPowerSaveWhitelistChangedLocked()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistChangedIntent:Landroid/content/Intent;

    .line 6
    .line 7
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistChangedOptions:Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final resetIdleManagementLocked()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final resetPowerSaveWhitelistExceptIdleInternal()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v0
.end method

.method public final resetSystemPowerWhitelistInternal()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v0
.end method

.method public final restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/high16 v2, 0x100000

    .line 37
    .line 38
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 43
    .line 44
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 45
    .line 46
    .line 47
    move-result v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    :try_start_2
    const-string v0, "DeviceIdleController"

    .line 50
    .line 51
    const-string v2, "Tried to get uid from package name but failed"

    .line 52
    .line 53
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    new-instance v0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 57
    .line 58
    new-instance v2, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 59
    .line 60
    invoke-direct {v2, v1, p1}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p2, p3, v2}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;-><init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 78
    .line 79
    .line 80
    monitor-exit p0

    .line 81
    const/4 p0, 0x1

    .line 82
    return p0

    .line 83
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    throw p1
.end method

.method public scheduleAlarmLocked(J)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 6
    .line 7
    const-string/jumbo v4, "scheduleAlarmLocked("

    .line 8
    .line 9
    .line 10
    const-string v5, "DeviceIdleController"

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const-string v3, ", "

    .line 15
    .line 16
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget v6, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 21
    .line 22
    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v6, ")"

    .line 30
    .line 31
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 42
    .line 43
    const/4 v6, 0x5

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    iget v3, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 51
    .line 52
    const/4 v7, 0x7

    .line 53
    if-eq v3, v7, :cond_1

    .line 54
    .line 55
    if-eq v3, v6, :cond_1

    .line 56
    .line 57
    const/4 v7, 0x6

    .line 58
    if-eq v3, v7, :cond_1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    add-long v11, v7, v1

    .line 66
    .line 67
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 68
    .line 69
    iget v3, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 70
    .line 71
    if-ne v3, v6, :cond_2

    .line 72
    .line 73
    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 74
    .line 75
    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 76
    .line 77
    iget-object v15, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 78
    .line 79
    const/4 v10, 0x2

    .line 80
    const-string v13, "DeviceIdleController.deep.maintenance"

    .line 81
    .line 82
    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v6, 0x4

    .line 87
    if-ne v3, v6, :cond_3

    .line 88
    .line 89
    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 90
    .line 91
    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 92
    .line 93
    iget-object v15, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 94
    .line 95
    const/4 v10, 0x2

    .line 96
    const-string v13, "DeviceIdleController.deep.idle"

    .line 97
    .line 98
    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 103
    .line 104
    iget-boolean v6, v3, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 105
    .line 106
    if-eqz v6, :cond_4

    .line 107
    .line 108
    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 109
    .line 110
    iget-wide v13, v3, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 111
    .line 112
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 113
    .line 114
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 115
    .line 116
    const/4 v10, 0x2

    .line 117
    const-string v15, "DeviceIdleController.deep.progression"

    .line 118
    .line 119
    move-object/from16 v16, v3

    .line 120
    .line 121
    move-object/from16 v17, v6

    .line 122
    .line 123
    invoke-virtual/range {v9 .. v17}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 124
    .line 125
    .line 126
    const/4 v3, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 129
    .line 130
    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 131
    .line 132
    iget-object v15, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 133
    .line 134
    const/4 v10, 0x2

    .line 135
    const-string v13, "DeviceIdleController.deep.progression"

    .line 136
    .line 137
    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 138
    .line 139
    .line 140
    :goto_0
    const/4 v3, 0x0

    .line 141
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    if-eqz v3, :cond_5

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v2, "/"

    .line 154
    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 159
    .line 160
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 161
    .line 162
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    goto :goto_2

    .line 170
    :cond_5
    const-string v0, ""

    .line 171
    .line 172
    :goto_2
    const-string v1, ", wakeup=true)"

    .line 173
    .line 174
    invoke-static {v6, v0, v1, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public final scheduleLightAlarmLocked(JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v1, p1

    .line 3
    .line 4
    move/from16 v3, p5

    .line 5
    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v5, "scheduleLightAlarmLocked("

    .line 9
    .line 10
    .line 11
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 18
    .line 19
    iget-boolean v5, v5, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    const-string v5, "/"

    .line 24
    .line 25
    move-wide/from16 v10, p3

    .line 26
    .line 27
    invoke-static {v10, v11, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-wide/from16 v10, p3

    .line 33
    .line 34
    const-string v5, ""

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, ", wakeup="

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, ")"

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v5, "DeviceIdleController"

    .line 57
    .line 58
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    add-long v8, v4, v1

    .line 71
    .line 72
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 75
    .line 76
    iget-boolean v1, v1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 77
    .line 78
    const/4 v2, 0x3

    .line 79
    const/4 v4, 0x2

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 83
    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    move v7, v4

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move v7, v2

    .line 89
    :goto_1
    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 90
    .line 91
    const-string v12, "DeviceIdleController.light"

    .line 92
    .line 93
    iget-object v13, v0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 94
    .line 95
    move-wide/from16 v10, p3

    .line 96
    .line 97
    invoke-virtual/range {v6 .. v14}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 102
    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    move v7, v4

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    move v7, v2

    .line 108
    :goto_2
    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 109
    .line 110
    const-string v10, "DeviceIdleController.light"

    .line 111
    .line 112
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 113
    .line 114
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 115
    .line 116
    .line 117
    :goto_3
    return-void
.end method

.method public final scheduleMotionTimeoutAlarmLocked()V
    .locals 14

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DeviceIdleController"

    .line 6
    .line 7
    const-string/jumbo v1, "scheduleMotionAlarmLocked"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 23
    .line 24
    iget-wide v3, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 25
    .line 26
    add-long v7, v0, v3

    .line 27
    .line 28
    iget-boolean v0, v2, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 33
    .line 34
    iget-wide v9, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 35
    .line 36
    const/4 v6, 0x2

    .line 37
    const-string v11, "DeviceIdleController.motion"

    .line 38
    .line 39
    iget-object v12, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 40
    .line 41
    iget-object v13, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 42
    .line 43
    invoke-virtual/range {v5 .. v13}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    const-string v9, "DeviceIdleController.motion"

    .line 51
    .line 52
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 53
    .line 54
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 55
    .line 56
    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public scheduleReportActiveLocked(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 4
    .line 5
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setActiveIdleOpsForTest(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public final setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 10
    .line 11
    if-eq v1, p2, :cond_0

    .line 12
    .line 13
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 16
    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public setDeepEnabledForTest(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setLightEnabledForTest(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setLightStateForTest(I)V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getBatteryLevelRaw()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iput v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 17
    .line 18
    const-string v0, "DeviceIdleController"

    .line 19
    .line 20
    const-string v1, "[LIGHT] %s to %s, battery=%s(%s/%d)"

    .line 21
    .line 22
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 23
    .line 24
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 33
    .line 34
    iget v4, v4, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 35
    .line 36
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 41
    .line 42
    iget v6, v5, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 43
    .line 44
    iget v5, v5, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 45
    .line 46
    invoke-static {v6, v5}, Lcom/android/server/DeviceIdleController;->getBatteryLevelDiff(FF)F

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 55
    .line 56
    iget-wide v7, v6, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 57
    .line 58
    iget-wide v9, v6, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 59
    .line 60
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/DeviceIdleController;->getDuration(JJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 80
    .line 81
    iget v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 82
    .line 83
    iput v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 84
    .line 85
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 86
    .line 87
    iput-wide v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 88
    .line 89
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p1
.end method

.method public final startMonitoringMotionLocked()V
    .locals 5

    .line 1
    const-string/jumbo v0, "startMonitoringMotionLocked()"

    .line 2
    .line 3
    .line 4
    const-string v1, "DeviceIdleController"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x2

    .line 28
    if-ne v0, v2, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 37
    .line 38
    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 46
    .line 47
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :goto_0
    if-eqz v0, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "Unable to register for "

    .line 78
    .line 79
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_1
    return-void
.end method

.method public stepIdleStateLocked(Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v3, "DeviceIdleController"

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v5, "stepIdleStateLocked: mState="

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 20
    .line 21
    invoke-static {v4, v5, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    new-array v4, v3, [Ljava/lang/Object;

    .line 26
    .line 27
    const v5, 0x84d1

    .line 28
    .line 29
    .line 30
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 34
    .line 35
    iget-boolean v4, v4, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    const-string v1, "DeviceIdleController"

    .line 40
    .line 41
    const-string/jumbo v2, "stepIdleStateLocked called when emergency call is active"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const-string/jumbo v1, "emergency"

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void

    .line 62
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    const-string v1, "alarm"

    .line 73
    .line 74
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void

    .line 85
    :cond_4
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 86
    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 90
    .line 91
    if-nez v4, :cond_6

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    const-string v1, "DeviceIdleController"

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v3, "Cannot step idle state. Blocked by: "

    .line 100
    .line 101
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v3, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda10;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v3, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda11;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v3, ","

    .line 133
    .line 134
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    return-void

    .line 148
    :cond_6
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 149
    .line 150
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 151
    .line 152
    iget-boolean v6, v5, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    .line 153
    .line 154
    iget-boolean v5, v5, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    .line 155
    .line 156
    const/4 v7, 0x3

    .line 157
    const/4 v8, 0x2

    .line 158
    const/4 v9, 0x4

    .line 159
    const/4 v10, 0x1

    .line 160
    if-eq v4, v8, :cond_8

    .line 161
    .line 162
    if-eq v4, v7, :cond_7

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    if-eqz v5, :cond_a

    .line 166
    .line 167
    :goto_0
    move v4, v9

    .line 168
    goto :goto_1

    .line 169
    :cond_8
    if-eqz v6, :cond_9

    .line 170
    .line 171
    if-eqz v5, :cond_9

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_9
    if-eqz v6, :cond_a

    .line 175
    .line 176
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 177
    .line 178
    move v4, v7

    .line 179
    :cond_a
    :goto_1
    const/4 v5, 0x5

    .line 180
    const/4 v6, 0x0

    .line 181
    packed-switch v4, :pswitch_data_0

    .line 182
    .line 183
    .line 184
    goto/16 :goto_8

    .line 185
    .line 186
    :pswitch_0
    iput v10, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 187
    .line 188
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 189
    .line 190
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 191
    .line 192
    .line 193
    const/4 v3, 0x6

    .line 194
    invoke-virtual {v0, v3, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 198
    .line 199
    invoke-virtual {v0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 200
    .line 201
    .line 202
    if-eqz v2, :cond_b

    .line 203
    .line 204
    const-string v1, "DeviceIdleController"

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v3, "Moved from STATE_IDLE to STATE_IDLE_MAINTENANCE. Next alarm in "

    .line 209
    .line 210
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 214
    .line 215
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, " ms."

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 231
    .line 232
    .line 233
    move-result-wide v1

    .line 234
    iput-wide v1, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 235
    .line 236
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 237
    .line 238
    iget-wide v2, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 239
    .line 240
    iget-wide v7, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 241
    .line 242
    long-to-float v4, v7

    .line 243
    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 244
    .line 245
    mul-float/2addr v4, v1

    .line 246
    float-to-long v7, v4

    .line 247
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 248
    .line 249
    .line 250
    move-result-wide v1

    .line 251
    iput-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 252
    .line 253
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 254
    .line 255
    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 256
    .line 257
    cmp-long v1, v1, v3

    .line 258
    .line 259
    if-gez v1, :cond_c

    .line 260
    .line 261
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 262
    .line 263
    :cond_c
    invoke-virtual {v0, v5, v6}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 267
    .line 268
    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    .line 270
    .line 271
    goto/16 :goto_8

    .line 272
    .line 273
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 274
    .line 275
    .line 276
    iput-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 277
    .line 278
    iput-object v6, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 279
    .line 280
    iput-object v6, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 281
    .line 282
    invoke-virtual {v0, v7, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 286
    .line 287
    if-eqz v4, :cond_12

    .line 288
    .line 289
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 290
    .line 291
    iget-object v4, v4, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    .line 292
    .line 293
    if-eqz v4, :cond_12

    .line 294
    .line 295
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 296
    .line 297
    iget-wide v1, v1, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 298
    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string/jumbo v5, "scheduleSensingTimeoutAlarmLocked("

    .line 302
    .line 303
    .line 304
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 311
    .line 312
    iget-boolean v5, v5, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 313
    .line 314
    if-eqz v5, :cond_d

    .line 315
    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v7, "/"

    .line 319
    .line 320
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v7, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 324
    .line 325
    iget-wide v7, v7, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 326
    .line 327
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    goto :goto_2

    .line 335
    :cond_d
    const-string v5, ""

    .line 336
    .line 337
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v5, ", wakeup=true)"

    .line 341
    .line 342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    const-string v5, "DeviceIdleController"

    .line 350
    .line 351
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 355
    .line 356
    .line 357
    move-result-wide v4

    .line 358
    add-long v13, v4, v1

    .line 359
    .line 360
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 361
    .line 362
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 363
    .line 364
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 365
    .line 366
    if-eqz v2, :cond_e

    .line 367
    .line 368
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 369
    .line 370
    iget-wide v1, v1, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 371
    .line 372
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$2;

    .line 373
    .line 374
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 375
    .line 376
    const/4 v12, 0x2

    .line 377
    const-string v17, "DeviceIdleController.sensing"

    .line 378
    .line 379
    move-wide v15, v1

    .line 380
    move-object/from16 v18, v4

    .line 381
    .line 382
    move-object/from16 v19, v5

    .line 383
    .line 384
    invoke-virtual/range {v11 .. v19}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 385
    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_e
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 389
    .line 390
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$2;

    .line 391
    .line 392
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 393
    .line 394
    const/4 v12, 0x2

    .line 395
    const-string v15, "DeviceIdleController.sensing"

    .line 396
    .line 397
    move-object/from16 v16, v1

    .line 398
    .line 399
    move-object/from16 v17, v2

    .line 400
    .line 401
    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 402
    .line 403
    .line 404
    :goto_3
    iput-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 405
    .line 406
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 407
    .line 408
    const-string/jumbo v1, "checkForAnyMotion(). mState = "

    .line 409
    .line 410
    .line 411
    iget-object v4, v0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    .line 412
    .line 413
    monitor-enter v4

    .line 414
    :try_start_0
    sget-boolean v2, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    .line 415
    .line 416
    if-eqz v2, :cond_f

    .line 417
    .line 418
    const-string v3, "AnyMotionDetector"

    .line 419
    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    iget v1, v0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 426
    .line 427
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :catchall_0
    move-exception v0

    .line 439
    goto :goto_5

    .line 440
    :cond_f
    :goto_4
    iget v1, v0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 441
    .line 442
    if-eq v1, v10, :cond_11

    .line 443
    .line 444
    iput v10, v0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 445
    .line 446
    if-eqz v2, :cond_10

    .line 447
    .line 448
    const-string v1, "AnyMotionDetector"

    .line 449
    .line 450
    const-string v2, "Moved from STATE_INACTIVE to STATE_ACTIVE."

    .line 451
    .line 452
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    :cond_10
    iput-object v6, v0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 456
    .line 457
    iput-object v6, v0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 458
    .line 459
    iget-object v1, v0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 460
    .line 461
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 462
    .line 463
    .line 464
    iget-object v1, v0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 465
    .line 466
    iget-object v2, v0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 467
    .line 468
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    iget-object v2, v0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 473
    .line 474
    const-wide/16 v5, 0x7530

    .line 475
    .line 476
    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 477
    .line 478
    .line 479
    iput-boolean v10, v0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V

    .line 482
    .line 483
    .line 484
    :cond_11
    monitor-exit v4

    .line 485
    goto/16 :goto_8

    .line 486
    .line 487
    :goto_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    throw v0

    .line 489
    :cond_12
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 490
    .line 491
    if-eqz v4, :cond_13

    .line 492
    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_8

    .line 497
    .line 498
    :cond_13
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 499
    .line 500
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v9, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 504
    .line 505
    .line 506
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mIsLocationPrefetchEnabled:Z

    .line 507
    .line 508
    if-eqz v4, :cond_17

    .line 509
    .line 510
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 511
    .line 512
    iget-wide v11, v4, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 513
    .line 514
    invoke-virtual {v0, v11, v12}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 515
    .line 516
    .line 517
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 518
    .line 519
    iget-object v7, v4, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 520
    .line 521
    if-nez v7, :cond_14

    .line 522
    .line 523
    iget-object v7, v4, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 524
    .line 525
    const-class v11, Landroid/location/LocationManager;

    .line 526
    .line 527
    invoke-virtual {v7, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    check-cast v7, Landroid/location/LocationManager;

    .line 532
    .line 533
    iput-object v7, v4, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 534
    .line 535
    :cond_14
    iget-object v11, v4, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 536
    .line 537
    if-eqz v11, :cond_15

    .line 538
    .line 539
    const-string/jumbo v4, "fused"

    .line 540
    .line 541
    .line 542
    invoke-virtual {v11, v4}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    if-eqz v4, :cond_15

    .line 547
    .line 548
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasFusedLocation:Z

    .line 549
    .line 550
    const-string/jumbo v4, "fused"

    .line 551
    .line 552
    .line 553
    iget-object v7, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 554
    .line 555
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 556
    .line 557
    .line 558
    move-result-object v12

    .line 559
    iget-object v13, v0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Lcom/android/server/DeviceIdleController$6;

    .line 560
    .line 561
    invoke-virtual {v11, v4, v7, v12, v13}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 562
    .line 563
    .line 564
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 565
    .line 566
    goto :goto_6

    .line 567
    :cond_15
    iput-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mHasFusedLocation:Z

    .line 568
    .line 569
    :goto_6
    if-eqz v11, :cond_16

    .line 570
    .line 571
    const-string/jumbo v4, "gps"

    .line 572
    .line 573
    .line 574
    invoke-virtual {v11, v4}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    if-eqz v4, :cond_16

    .line 579
    .line 580
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 581
    .line 582
    const-string/jumbo v12, "gps"

    .line 583
    .line 584
    .line 585
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Lcom/android/server/DeviceIdleController$6;

    .line 586
    .line 587
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 588
    .line 589
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 590
    .line 591
    .line 592
    move-result-object v17

    .line 593
    const-wide/16 v13, 0x3e8

    .line 594
    .line 595
    const/high16 v15, 0x40a00000    # 5.0f

    .line 596
    .line 597
    move-object/from16 v16, v3

    .line 598
    .line 599
    invoke-virtual/range {v11 .. v17}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 600
    .line 601
    .line 602
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 603
    .line 604
    goto :goto_7

    .line 605
    :cond_16
    iput-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 606
    .line 607
    :goto_7
    iget-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 608
    .line 609
    if-eqz v3, :cond_18

    .line 610
    .line 611
    goto/16 :goto_8

    .line 612
    .line 613
    :cond_17
    iput-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 614
    .line 615
    :cond_18
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 616
    .line 617
    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 619
    .line 620
    .line 621
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 622
    .line 623
    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 624
    .line 625
    .line 626
    :pswitch_4
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 627
    .line 628
    iget-wide v10, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 629
    .line 630
    iput-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 631
    .line 632
    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 633
    .line 634
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 635
    .line 636
    :pswitch_5
    invoke-virtual {v0, v5, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 640
    .line 641
    invoke-virtual {v0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 642
    .line 643
    .line 644
    if-eqz v2, :cond_19

    .line 645
    .line 646
    const-string v1, "DeviceIdleController"

    .line 647
    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    const-string v4, "Moved to STATE_IDLE. Next alarm in "

    .line 651
    .line 652
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 656
    .line 657
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    const-string v4, " ms."

    .line 661
    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    :cond_19
    iget-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 673
    .line 674
    long-to-float v1, v3

    .line 675
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 676
    .line 677
    iget v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 678
    .line 679
    mul-float/2addr v1, v3

    .line 680
    float-to-long v3, v1

    .line 681
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 682
    .line 683
    if-eqz v2, :cond_1a

    .line 684
    .line 685
    const-string v1, "DeviceIdleController"

    .line 686
    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    .line 688
    .line 689
    const-string v3, "Setting mNextIdleDelay = "

    .line 690
    .line 691
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    iget-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 695
    .line 696
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 697
    .line 698
    .line 699
    :cond_1a
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 700
    .line 701
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 702
    .line 703
    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 704
    .line 705
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 706
    .line 707
    .line 708
    move-result-wide v1

    .line 709
    iput-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 710
    .line 711
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 712
    .line 713
    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 714
    .line 715
    cmp-long v1, v1, v3

    .line 716
    .line 717
    if-gez v1, :cond_1b

    .line 718
    .line 719
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 720
    .line 721
    :cond_1b
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 722
    .line 723
    const/4 v2, 0x7

    .line 724
    if-eq v1, v2, :cond_1c

    .line 725
    .line 726
    const-string/jumbo v1, "deep"

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 730
    .line 731
    .line 732
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 733
    .line 734
    const-wide/16 v3, 0x0

    .line 735
    .line 736
    cmp-long v1, v1, v3

    .line 737
    .line 738
    if-eqz v1, :cond_1c

    .line 739
    .line 740
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 741
    .line 742
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 743
    .line 744
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 745
    .line 746
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 747
    .line 748
    .line 749
    :cond_1c
    invoke-virtual {v0, v9, v6}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 750
    .line 751
    .line 752
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 753
    .line 754
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 755
    .line 756
    .line 757
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 758
    .line 759
    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 760
    .line 761
    .line 762
    goto :goto_8

    .line 763
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 764
    .line 765
    .line 766
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 767
    .line 768
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 769
    .line 770
    invoke-virtual {v0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v0, v8, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 774
    .line 775
    .line 776
    :goto_8
    return-void

    .line 777
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public stepLightIdleStateLocked(Ljava/lang/String;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 11
    .line 12
    const-string v1, "DeviceIdleController"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v2, "stepLightIdleStateLocked: mLightState="

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 25
    .line 26
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    const v2, 0x84da

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 50
    .line 51
    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    const-string/jumbo v0, "stepLightIdleStateLocked called when emergency call is active"

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const-string/jumbo v0, "emergency"

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void

    .line 76
    :cond_3
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x3

    .line 80
    const/4 v1, 0x1

    .line 81
    const-wide/16 v2, 0x0

    .line 82
    .line 83
    const/4 v8, 0x4

    .line 84
    if-eq v0, v1, :cond_9

    .line 85
    .line 86
    const/4 v9, 0x6

    .line 87
    const/4 v10, 0x5

    .line 88
    if-eq v0, v8, :cond_4

    .line 89
    .line 90
    if-eq v0, v10, :cond_4

    .line 91
    .line 92
    if-eq v0, v9, :cond_a

    .line 93
    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 97
    .line 98
    if-nez v2, :cond_6

    .line 99
    .line 100
    if-ne v0, v10, :cond_5

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 104
    .line 105
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 106
    .line 107
    const-wide/16 v6, 0x2

    .line 108
    .line 109
    div-long/2addr v3, v6

    .line 110
    const/4 v5, 0x1

    .line 111
    move-object v0, p0

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJZ)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v10, p1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_4

    .line 119
    .line 120
    :cond_6
    :goto_0
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 132
    .line 133
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 134
    .line 135
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 136
    .line 137
    iget-wide v3, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 138
    .line 139
    cmp-long v5, v0, v3

    .line 140
    .line 141
    if-gez v5, :cond_7

    .line 142
    .line 143
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_7
    iget-wide v3, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 147
    .line 148
    cmp-long v0, v0, v3

    .line 149
    .line 150
    if-lez v0, :cond_8

    .line 151
    .line 152
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 153
    .line 154
    :cond_8
    :goto_1
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 155
    .line 156
    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 157
    .line 158
    const/4 v5, 0x1

    .line 159
    move-object v0, p0

    .line 160
    move-wide v1, v3

    .line 161
    move-wide v3, v10

    .line 162
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJZ)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v9, p1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v7, v6}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 172
    .line 173
    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    .line 175
    .line 176
    goto/16 :goto_4

    .line 177
    .line 178
    :cond_9
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 179
    .line 180
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 181
    .line 182
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 183
    .line 184
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 185
    .line 186
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 187
    .line 188
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 189
    .line 190
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 191
    .line 192
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 193
    .line 194
    :cond_a
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 195
    .line 196
    cmp-long v0, v0, v2

    .line 197
    .line 198
    if-eqz v0, :cond_c

    .line 199
    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 201
    .line 202
    .line 203
    move-result-wide v0

    .line 204
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 205
    .line 206
    sub-long/2addr v0, v4

    .line 207
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 208
    .line 209
    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 210
    .line 211
    cmp-long v9, v0, v4

    .line 212
    .line 213
    if-gez v9, :cond_b

    .line 214
    .line 215
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 216
    .line 217
    sub-long/2addr v4, v0

    .line 218
    add-long/2addr v4, v9

    .line 219
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_b
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 223
    .line 224
    sub-long/2addr v0, v4

    .line 225
    sub-long/2addr v9, v0

    .line 226
    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 227
    .line 228
    :cond_c
    :goto_2
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 229
    .line 230
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 231
    .line 232
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 233
    .line 234
    const/4 v5, 0x0

    .line 235
    move-object v0, p0

    .line 236
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJZ)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 240
    .line 241
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 242
    .line 243
    if-nez v1, :cond_d

    .line 244
    .line 245
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 246
    .line 247
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 248
    .line 249
    long-to-float v3, v3

    .line 250
    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 251
    .line 252
    mul-float/2addr v3, v0

    .line 253
    float-to-long v3, v3

    .line 254
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 255
    .line 256
    .line 257
    move-result-wide v0

    .line 258
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 259
    .line 260
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 261
    .line 262
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 263
    .line 264
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 265
    .line 266
    long-to-float v3, v3

    .line 267
    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 268
    .line 269
    mul-float/2addr v3, v0

    .line 270
    float-to-long v3, v3

    .line 271
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 272
    .line 273
    .line 274
    move-result-wide v0

    .line 275
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_d
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 279
    .line 280
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 281
    .line 282
    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 283
    .line 284
    add-long/2addr v3, v9

    .line 285
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 286
    .line 287
    .line 288
    move-result-wide v0

    .line 289
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 290
    .line 291
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 292
    .line 293
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 294
    .line 295
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 296
    .line 297
    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 298
    .line 299
    add-long/2addr v3, v9

    .line 300
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 301
    .line 302
    .line 303
    move-result-wide v0

    .line 304
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 305
    .line 306
    :goto_3
    invoke-virtual {p0, v8, p1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const/4 v0, 0x2

    .line 310
    invoke-virtual {p0, v0, v6}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 314
    .line 315
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 319
    .line 320
    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    .line 322
    .line 323
    :cond_e
    :goto_4
    return-void
.end method

.method public final updateActiveConstraintsLocked()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 3
    .line 4
    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 28
    .line 29
    iget v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    .line 30
    .line 31
    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    if-ne v4, v5, :cond_0

    .line 35
    .line 36
    move v4, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move v4, v0

    .line 39
    :goto_1
    iget-boolean v5, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 40
    .line 41
    if-eq v4, v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v2, v4}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 44
    .line 45
    .line 46
    iput-boolean v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 47
    .line 48
    :cond_1
    iget-boolean v2, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    iget-boolean v2, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 57
    .line 58
    add-int/2addr v2, v6

    .line 59
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 60
    .line 61
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    return-void
.end method

.method public final updateChargingLocked(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "updateChargingLocked: charging="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "DeviceIdleController"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    const-string/jumbo p1, "charging"

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public final updateConnectivityState(Landroid/content/Intent;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-class v2, Landroid/net/ConnectivityManager;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    monitor-enter p0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-nez p1, :cond_3

    .line 36
    .line 37
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const-string/jumbo v2, "networkType"

    .line 45
    .line 46
    .line 47
    const/4 v3, -0x1

    .line 48
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eq v0, v2, :cond_4

    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :cond_4
    const-string/jumbo v0, "noConnectivity"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    xor-int/lit8 v1, p1, 0x1

    .line 68
    .line 69
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 70
    .line 71
    if-eq v1, p1, :cond_5

    .line 72
    .line 73
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 78
    .line 79
    const/4 v0, 0x5

    .line 80
    if-ne p1, v0, :cond_5

    .line 81
    .line 82
    const-string/jumbo p1, "network"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p1

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    throw p1
.end method

.method public final updateInteractivityLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string/jumbo v1, "updateInteractivityLocked: screenOn="

    .line 12
    .line 13
    .line 14
    const-string v2, "DeviceIdleController"

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 50
    .line 51
    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    :cond_2
    const-string/jumbo v0, "screen"

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_0
    return-void
.end method

.method public final updateQuickDozeFlagLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mBatterySaverEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    goto :goto_2

    .line 3
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mBatterySaverEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked(Z)V

    :goto_2
    return-void
.end method

.method public updateQuickDozeFlagLocked(Z)V
    .locals 2

    .line 4
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateQuickDozeFlagLocked: enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    if-eqz p1, :cond_2

    .line 6
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    :cond_3
    return-void
.end method

.method public final updateTempWhitelistAppIdsLocked(IJIZILjava/lang/String;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    if-eq v2, v1, :cond_0

    .line 12
    .line 13
    new-array v2, v1, [I

    .line 14
    .line 15
    iput-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 16
    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 21
    .line 22
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    aput v4, v3, v2

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 34
    .line 35
    const-string v2, "DeviceIdleController"

    .line 36
    .line 37
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v4, "Setting activity manager temp whitelist to "

    .line 46
    .line 47
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 51
    .line 52
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 67
    .line 68
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 69
    .line 70
    move v6, p1

    .line 71
    move/from16 v7, p5

    .line 72
    .line 73
    move-wide/from16 v8, p2

    .line 74
    .line 75
    move/from16 v10, p4

    .line 76
    .line 77
    move/from16 v11, p6

    .line 78
    .line 79
    move-object/from16 v12, p7

    .line 80
    .line 81
    move/from16 v13, p8

    .line 82
    .line 83
    invoke-virtual/range {v4 .. v13}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "Setting wakelock temp whitelist to "

    .line 95
    .line 96
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 100
    .line 101
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 116
    .line 117
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final updateWhitelistAppIdsLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleAllowlist([I[I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "Setting wakelock whitelist to "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 63
    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "DeviceIdleController"

    .line 76
    .line 77
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final writeConfigFileLocked()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0x1388

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final writeConfigFileLocked(Lcom/android/internal/util/jobs/FastXmlSerializer;)V
    .locals 7

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4
    const-string/jumbo v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    move v3, v2

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const-string/jumbo v5, "n"

    if-ge v3, v4, :cond_0

    .line 6
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    const-string/jumbo v6, "wl"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    invoke-interface {p1, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 11
    const-string/jumbo v3, "un-wl"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method
