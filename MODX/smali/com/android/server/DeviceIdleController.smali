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

    .line 4
    if-eqz v0, :cond_0

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

    .line 12
    if-nez v0, :cond_1

    .line 14
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 16
    if-nez v0, :cond_1

    .line 18
    const-string/jumbo v0, "on_body"

    .line 21
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

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

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

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

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p0, :cond_0

    .line 8
    move v2, v0

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 12
    move-result v3

    .line 13
    if-ge v2, v3, :cond_0

    .line 15
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v3

    .line 25
    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    move p0, v0

    .line 34
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 37
    move-result v2

    .line 38
    if-ge p0, v2, :cond_1

    .line 40
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Integer;

    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result v2

    .line 50
    invoke-virtual {p2, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 53
    add-int/lit8 p0, p0, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 59
    move-result p0

    .line 60
    new-array p1, p0, [I

    .line 62
    :goto_2
    if-ge v0, p0, :cond_2

    .line 64
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 67
    move-result v1

    .line 68
    aput v1, p1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

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

    .line 3
    const-string v1, "  help"

    .line 5
    const-string v2, "    Print this help text."

    .line 7
    const-string v3, "  step [light|deep]"

    .line 9
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v0, "    Immediately step to next state, without waiting for alarm."

    .line 14
    const-string v1, "  force-idle [light|deep]"

    .line 16
    const-string v2, "    Force directly into idle mode, regardless of other device state."

    .line 18
    const-string v3, "  force-inactive"

    .line 20
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "    Force to be inactive, ready to freely step idle states."

    .line 25
    const-string v1, "  unforce"

    .line 27
    const-string v2, "    Resume normal functioning after force-idle or force-inactive or force-modemanager-quickdoze."

    .line 29
    const-string v3, "  get [light|deep|force|screen|charging|network|offbody|forceoffbody]"

    .line 31
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "    Retrieve the current given state."

    .line 36
    const-string v1, "  disable [light|deep|all]"

    .line 38
    const-string v2, "    Completely disable device idle mode."

    .line 40
    const-string v3, "  enable [light|deep|all]"

    .line 42
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    .line 47
    const-string v1, "  enabled [light|deep|all]"

    .line 49
    const-string v2, "    Print 1 if device idle mode is currently enabled, else 0."

    .line 51
    const-string v3, "  whitelist"

    .line 53
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "    Print currently whitelisted apps."

    .line 58
    const-string v1, "  whitelist [package ...]"

    .line 60
    const-string v2, "    Add (prefix with +) or remove (prefix with -) packages."

    .line 62
    const-string v3, "  sys-whitelist [package ...|reset]"

    .line 64
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "    Prefix the package with \'-\' to remove it from the system whitelist or \'+\' to put it back in the system whitelist."

    .line 69
    const-string v1, "    Note that only packages that were earlier removed from the system whitelist can be added back."

    .line 71
    const-string v2, "    reset will reset the whitelist to the original state"

    .line 73
    const-string v3, "    Prints the system whitelist if no arguments are specified"

    .line 75
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "  except-idle-whitelist [package ...|reset]"

    .line 80
    const-string v1, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    .line 82
    const-string v2, "    [reset] will reset the whitelist to it\'s original state"

    .line 84
    const-string v3, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    .line 86
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "  tempwhitelist"

    .line 91
    const-string v1, "    Print packages that are temporarily whitelisted."

    .line 93
    const-string v2, "  tempwhitelist [-u USER] [-d DURATION] [-r] [package]"

    .line 95
    const-string v3, "    Temporarily place package in whitelist for DURATION milliseconds."

    .line 97
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "    If no DURATION is specified, 10 seconds is used"

    .line 102
    const-string v1, "    If [-r] option is used, then the package is removed from temp whitelist and any [-d] is ignored"

    .line 104
    const-string v2, "  motion"

    .line 106
    const-string v3, "    Simulate a motion event to bring the device out of deep doze"

    .line 108
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "  force-modemanager-quickdoze [true|false]"

    .line 113
    const-string v1, "    Simulate mode manager request to enable (true) or disable (false) quick doze. Mode manager changes will be ignored until unforce is called."

    .line 115
    const-string v2, "  force-modemanager-offbody [true|false]"

    .line 117
    const-string v3, "    Force mode manager offbody state, this can be used to simulate device being off-body (true) or on-body (false). Mode manager changes will be ignored until unforce is called."

    .line 119
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static floatToString(F)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p0, v0

    .line 4
    if-ltz v0, :cond_0

    .line 6
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object p0

    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    const-string v0, "%.2f"

    .line 16
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string/jumbo p0, "invalid"

    .line 24
    return-object p0
.end method

.method public static getBatteryLevelDiff(FF)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p0, v0

    .line 4
    const-string/jumbo v2, "getBatteryLevelDiff() : curr("

    .line 7
    const-string v3, "DeviceIdleController"

    .line 9
    const/high16 v4, -0x40800000    # -1.0f

    .line 11
    if-ltz v1, :cond_2

    .line 13
    cmpg-float v0, p1, v0

    .line 15
    if-gez v0, :cond_0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    cmpl-float v0, p0, p1

    .line 20
    if-ltz v0, :cond_1

    .line 22
    sub-float v4, p0, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, ") is bigger than prev("

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, ")"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return v4

    .line 54
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    const-string p1, ") or prev("

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    const-string p0, ") is invalid"

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v4
.end method

.method public static getDuration(JJ)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p0, v0

    .line 5
    if-lez v2, :cond_0

    .line 7
    cmp-long v2, p2, v0

    .line 9
    if-lez v2, :cond_0

    .line 11
    cmp-long v2, p2, p0

    .line 13
    if-lez v2, :cond_0

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

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 6
    const/4 v0, 0x4

    .line 7
    if-eq p0, v0, :cond_3

    .line 9
    const/4 v0, 0x5

    .line 10
    if-eq p0, v0, :cond_2

    .line 12
    const/4 v0, 0x6

    .line 13
    if-eq p0, v0, :cond_1

    .line 15
    const/4 v0, 0x7

    .line 16
    if-eq p0, v0, :cond_0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p0, "OVERRIDE"

    .line 25
    return-object p0

    .line 26
    :cond_1
    const-string p0, "IDLE_MAINTENANCE"

    .line 28
    return-object p0

    .line 29
    :cond_2
    const-string p0, "WAITING_FOR_NETWORK"

    .line 31
    return-object p0

    .line 32
    :cond_3
    const-string p0, "IDLE"

    .line 34
    return-object p0

    .line 35
    :cond_4
    const-string p0, "INACTIVE"

    .line 37
    return-object p0

    .line 38
    :cond_5
    const-string p0, "ACTIVE"

    .line 40
    return-object p0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "QUICK_DOZE_DELAY"

    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "IDLE_MAINTENANCE"

    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "IDLE"

    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "LOCATING"

    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "SENSING"

    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "IDLE_PENDING"

    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "INACTIVE"

    .line 29
    return-object p0

    .line 30
    :pswitch_7
    const-string p0, "ACTIVE"

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

    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 6
    if-eq v2, p1, :cond_0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/16 v3, 0x63

    .line 11
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 16
    invoke-static {v4, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 21
    invoke-static {p0, v1, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    aput p1, v0, v1

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v2

    .line 30
    aput-wide v2, v4, v1

    .line 32
    aput-object p2, p0, v1

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

    .line 5
    move-result-object v1

    .line 6
    const-string v2, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    .line 8
    const-string v3, "No permission to change device idle whitelist"

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v2

    .line 17
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 20
    move-result-object v4

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 24
    move-result v5

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const-string v10, "addPowerSaveTempWhitelistApp"

    .line 29
    const/4 v11, 0x0

    .line 30
    move v6, v2

    .line 31
    move v7, p1

    .line 32
    invoke-interface/range {v4 .. v11}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 35
    move-result v7

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    move-result-wide v11

    .line 40
    const/4 v1, -0x1

    .line 41
    if-eq v0, v1, :cond_1

    .line 43
    const/16 v3, 0x66

    .line 45
    if-eq v0, v3, :cond_0

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

    .line 54
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getPushMessagingOverQuotaBehavior()I

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

    .line 64
    const/4 v8, 0x1

    .line 65
    move-object v1, p0

    .line 66
    move-object/from16 v3, p3

    .line 68
    move-wide/from16 v4, p5

    .line 70
    move v9, p2

    .line 71
    move-object/from16 v10, p4

    .line 73
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw v0

    .line 82
    :cond_2
    :goto_1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    return-void
.end method

.method public final addPowerSaveTempAllowlistAppInternal(ILjava/lang/String;JIIZILjava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    move-object v1, p2

    .line 10
    move/from16 v2, p6

    .line 12
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

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

    .line 21
    move v7, p5

    .line 22
    move-object/from16 v8, p9

    .line 24
    move/from16 v9, p8

    .line 26
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IJIZILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    return-void
.end method

.method public final addPowerSaveTempWhitelistAppDirectInternal(IJIZILjava/lang/String;I)V
    .locals 22

    .line 1
    move-object/from16 v10, p0

    .line 3
    move/from16 v0, p4

    .line 5
    move-object/from16 v15, p7

    .line 7
    move/from16 v14, p8

    .line 9
    const-string v1, "Adding AppId "

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v2

    .line 15
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 18
    move-result v13

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v4, v10, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 22
    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 24
    move-wide/from16 v6, p2

    .line 26
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 29
    move-result-wide v4

    .line 30
    iget-object v6, v10, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Landroid/util/Pair;

    .line 38
    const/16 v21, 0x0

    .line 40
    if-nez v6, :cond_0

    .line 42
    const/4 v7, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move/from16 v7, v21

    .line 46
    :goto_0
    if-eqz v7, :cond_1

    .line 48
    new-instance v6, Landroid/util/Pair;

    .line 50
    new-instance v8, Landroid/util/MutableLong;

    .line 52
    move/from16 v16, v13

    .line 54
    const-wide/16 v12, 0x0

    .line 56
    invoke-direct {v8, v12, v13}, Landroid/util/MutableLong;-><init>(J)V

    .line 59
    invoke-direct {v6, v8, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    iget-object v8, v10, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 64
    move/from16 v13, v16

    .line 66
    invoke-virtual {v8, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_4

    .line 73
    :cond_1
    :goto_1
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 75
    check-cast v6, Landroid/util/MutableLong;

    .line 77
    add-long/2addr v2, v4

    .line 78
    iput-wide v2, v6, Landroid/util/MutableLong;->value:J

    .line 80
    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 82
    if-eqz v2, :cond_2

    .line 84
    const-string v2, "DeviceIdleController"

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, " to temp whitelist. New entry: "

    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_2
    if-eqz v7, :cond_5

    .line 111
    :try_start_1
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 113
    const v2, 0x8011

    .line 116
    invoke-interface {v1, v2, v15, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :catch_0
    :try_start_2
    invoke-virtual {v10, v0, v4, v5}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 122
    const/4 v6, 0x1

    .line 123
    move-object/from16 v1, p0

    .line 125
    move/from16 v2, p4

    .line 127
    move-wide v3, v4

    .line 128
    move/from16 v5, p6

    .line 130
    move/from16 v7, p8

    .line 132
    move-object/from16 v8, p7

    .line 134
    move/from16 v9, p1

    .line 136
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IJIZILjava/lang/String;I)V

    .line 139
    if-eqz p5, :cond_3

    .line 141
    const/16 v21, 0x1

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 146
    const/16 v2, 0xe

    .line 148
    invoke-virtual {v1, v2, v13, v14, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 155
    :goto_2
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 157
    const/16 v2, 0xd

    .line 159
    const/4 v3, 0x1

    .line 160
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 170
    move-result-object v0

    .line 171
    iget-object v1, v10, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhitelistChangedIntent:Landroid/content/Intent;

    .line 173
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 175
    iget-object v4, v10, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhilelistChangedOptions:Landroid/os/Bundle;

    .line 177
    const/4 v5, 0x0

    .line 178
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

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

    .line 189
    if-eqz v11, :cond_4

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

    .line 203
    move/from16 v18, p8

    .line 205
    move-object/from16 v19, p7

    .line 207
    move/from16 v20, p1

    .line 209
    invoke-virtual/range {v11 .. v20}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V

    .line 212
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    if-eqz v21, :cond_6

    .line 215
    iget-object v4, v10, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 217
    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->onTempPowerSaveWhitelistChange(IILjava/lang/String;Z)V

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

    .line 5
    move-result v0

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v3, :cond_0

    .line 20
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    move-result-object v4

    .line 31
    const/high16 v5, 0x400000

    .line 33
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 36
    move-result-object v4

    .line 37
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 39
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 42
    move-result v4

    .line 43
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 53
    if-nez v5, :cond_1

    .line 55
    new-instance v5, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 57
    new-instance v6, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 59
    invoke-direct {v6, v4, v3}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(ILjava/lang/String;)V

    .line 62
    invoke-direct {v5, p2, p3, v6}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;-><init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V

    .line 65
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 67
    invoke-virtual {v4, v5}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 72
    const-string v4, "battery.value_app_added_to_power_allowlist"

    .line 74
    invoke-static {v4}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v6, "Tried to add unknown package to power save whitelist: "

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    if-lez v1, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 114
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 117
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

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

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v0

    .line 10
    const/high16 v1, 0x400000

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 18
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 36
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 42
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 44
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 46
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 48
    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 54
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    .line 3
    const-string v1, "DeviceIdleController"

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 11
    cmp-long v0, v4, v2

    .line 13
    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v4, "mState=ACTIVE but mNextAlarmTime="

    .line 20
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 25
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x1

    .line 39
    const/4 v6, 0x5

    .line 40
    if-eq v0, v6, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 44
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 46
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 48
    monitor-enter v7

    .line 49
    :try_start_0
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 51
    if-eqz v0, :cond_1

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

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v7, "mState="

    .line 64
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget v7, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 69
    invoke-static {v7}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v7, " but AlarmManager is idling"

    .line 78
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 94
    if-ne v0, v6, :cond_4

    .line 96
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 98
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 100
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 102
    monitor-enter v7

    .line 103
    :try_start_2
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 105
    if-eqz v0, :cond_3

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

    .line 113
    const-string/jumbo v0, "mState=IDLE but AlarmManager is not idling"

    .line 116
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 125
    if-nez v0, :cond_5

    .line 127
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 129
    cmp-long v0, v7, v2

    .line 131
    if-eqz v0, :cond_5

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v7, "mLightState=ACTIVE but mNextLightAlarmTime is "

    .line 138
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 146
    move-result-wide v9

    .line 147
    sub-long/2addr v7, v9

    .line 148
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v7, " from now"

    .line 157
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 169
    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 173
    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 175
    if-eqz v0, :cond_6

    .line 177
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 179
    if-nez v0, :cond_7

    .line 181
    :cond_6
    move v4, v5

    .line 182
    :cond_7
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 184
    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 186
    sget-boolean v7, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 188
    if-eqz v7, :cond_9

    .line 190
    const-string v7, "becomeInactiveIfAppropriateLocked(): isScreenBlockingInactive="

    .line 192
    const-string v8, " (mScreenOn="

    .line 194
    invoke-static {v7, v8, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 197
    move-result-object v7

    .line 198
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    const-string v8, ", WAIT_FOR_UNLOCK="

    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 210
    iget-boolean v8, v8, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 212
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    const-string v8, ", mScreenLocked="

    .line 217
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 222
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    const-string v8, ") mCharging="

    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 232
    const-string v9, " emergencyCall="

    .line 234
    const-string v10, " mForceIdle="

    .line 236
    invoke-static {v7, v8, v9, v0, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 239
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 241
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 246
    if-eqz v8, :cond_8

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    .line 250
    const-string v9, " mForceType="

    .line 252
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 257
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object v8

    .line 264
    goto :goto_4

    .line 265
    :cond_8
    const-string v8, ""

    .line 267
    :goto_4
    invoke-static {v7, v8, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_9
    iget-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 272
    if-nez v7, :cond_b

    .line 274
    iget-boolean v8, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 276
    if-nez v8, :cond_a

    .line 278
    if-nez v4, :cond_a

    .line 280
    if-eqz v0, :cond_b

    .line 282
    :cond_a
    return-void

    .line 283
    :cond_b
    if-eqz v7, :cond_c

    .line 285
    const-string v0, "active"

    .line 287
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 289
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_c

    .line 295
    const-string p0, "Don\'t become Inactive in force-active mode"

    .line 297
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 301
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 303
    const-string/jumbo v1, "no activity"

    .line 306
    if-eqz v0, :cond_12

    .line 308
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 310
    if-eqz v0, :cond_10

    .line 312
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 314
    const/4 v4, 0x7

    .line 315
    if-eq v0, v4, :cond_f

    .line 317
    if-eq v0, v6, :cond_f

    .line 319
    const/4 v6, 0x6

    .line 320
    if-ne v0, v6, :cond_d

    .line 322
    goto :goto_5

    .line 323
    :cond_d
    invoke-virtual {p0, v4, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 329
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_e

    .line 335
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 337
    invoke-virtual {v0}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    .line 340
    move-result-wide v6

    .line 341
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 349
    move-result-wide v8

    .line 350
    sub-long/2addr v6, v8

    .line 351
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 353
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 355
    add-long/2addr v6, v8

    .line 356
    invoke-virtual {p0, v6, v7}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 359
    goto :goto_6

    .line 360
    :cond_e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 362
    iget-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 364
    invoke-virtual {p0, v6, v7}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 367
    goto :goto_6

    .line 368
    :cond_f
    :goto_5
    return-void

    .line 369
    :cond_10
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 371
    if-nez v0, :cond_12

    .line 373
    invoke-virtual {p0, v5, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 379
    iget-wide v6, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 381
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_11

    .line 387
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 389
    invoke-virtual {v0}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    .line 392
    move-result-wide v8

    .line 393
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 395
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 401
    move-result-wide v10

    .line 402
    sub-long/2addr v8, v10

    .line 403
    add-long/2addr v8, v6

    .line 404
    invoke-virtual {p0, v8, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 407
    goto :goto_6

    .line 408
    :cond_11
    invoke-virtual {p0, v6, v7}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 411
    :cond_12
    :goto_6
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 413
    if-nez v0, :cond_14

    .line 415
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 417
    if-eqz v0, :cond_14

    .line 419
    invoke-virtual {p0, v5, v1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 424
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 426
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 428
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 430
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 432
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 434
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 436
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 438
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 440
    cmp-long v0, v0, v2

    .line 442
    if-eqz v0, :cond_13

    .line 444
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 446
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 448
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 450
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 453
    :cond_13
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 455
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 457
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 459
    const/4 v6, 0x1

    .line 460
    move-object v1, p0

    .line 461
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJZ)V

    .line 464
    :cond_14
    return-void
.end method

.method public final cancelAlarmLocked()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 11
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 13
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 15
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 18
    :cond_0
    return-void
.end method

.method public final cancelLocatingLocked()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 7
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 9
    if-nez v1, :cond_0

    .line 11
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 13
    const-class v2, Landroid/location/LocationManager;

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/location/LocationManager;

    .line 21
    iput-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 23
    :cond_0
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 25
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Lcom/android/server/DeviceIdleController$6;

    .line 27
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Lcom/android/server/DeviceIdleController$6;

    .line 32
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 38
    :cond_1
    return-void
.end method

.method public final cancelSensingTimeoutAlarmLocked()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 11
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 13
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$2;

    .line 15
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

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

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 6
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 8
    if-gtz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 13
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

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

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 9
    if-eqz p2, :cond_0

    .line 11
    const-string p2, "  Temp whitelist schedule:"

    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    const-string p2, "    "

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p2, ""

    .line 21
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    move-result-wide v1

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_1
    if-ge v3, v0, :cond_1

    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    const-string v4, "UID="

    .line 33
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 41
    move-result v4

    .line 42
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 45
    const-string v4, ": "

    .line 47
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/util/Pair;

    .line 58
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 60
    check-cast v5, Landroid/util/MutableLong;

    .line 62
    iget-wide v5, v5, Landroid/util/MutableLong;->value:J

    .line 64
    invoke-static {v5, v6, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 67
    const-string v5, " - "

    .line 69
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 74
    check-cast v4, Ljava/lang/String;

    .line 76
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    add-int/lit8 v3, v3, 0x1

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

    .line 3
    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 8
    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 12
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 14
    if-nez v0, :cond_0

    .line 16
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 18
    if-eqz v0, :cond_1

    .line 20
    :cond_0
    const-string/jumbo v0, "exit-force"

    .line 23
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 30
    :cond_1
    return-void
.end method

.method public final exitMaintenanceEarlyIfNeededLocked()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3
    const/4 v1, 0x6

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 8
    if-ne v0, v1, :cond_3

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 12
    if-gtz v0, :cond_3

    .line 14
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 16
    if-nez v0, :cond_3

    .line 18
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 20
    if-nez v0, :cond_3

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    move-result-wide v2

    .line 26
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 28
    if-eqz v0, :cond_1

    .line 30
    const-string v0, "Exit: start="

    .line 32
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 38
    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 41
    const-string v4, " now="

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 49
    const-string v2, "DeviceIdleController"

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 60
    const-string/jumbo v2, "s:early"

    .line 63
    if-ne v0, v1, :cond_2

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method public final getBatteryLevelRaw()F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

    .line 3
    const-string v0, "DeviceIdleController"

    .line 5
    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelRaw()I

    .line 10
    move-result p0

    .line 11
    if-ltz p0, :cond_0

    .line 13
    const/16 v1, 0x2710

    .line 15
    if-gt p0, v1, :cond_0

    .line 17
    int-to-float p0, p0

    .line 18
    const/high16 v0, 0x42c80000    # 100.0f

    .line 20
    div-float/2addr p0, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const-string/jumbo v1, "getBatteryLevelRaw() : batteryLevelInt is invalid : "

    .line 25
    invoke-static {p0, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string/jumbo p0, "getBatteryLevelRaw() : mLocalBatteryManager is null"

    .line 32
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    const/high16 p0, -0x40800000    # -1.0f

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

    .line 4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    move v3, v2

    .line 20
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 25
    move-result v4

    .line 26
    if-ge v2, v4, :cond_0

    .line 28
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 30
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 36
    aput-object v4, v0, v3

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 40
    add-int/lit8 v2, v2, 0x1

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

    .line 47
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 50
    move-result v2

    .line 51
    if-ge v1, v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 55
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/String;

    .line 61
    aput-object v2, v0, v3

    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 65
    add-int/lit8 v1, v1, 0x1

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

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

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

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

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

    .line 3
    iget-object v0, v6, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x7

    .line 10
    if-lez v0, :cond_2

    .line 12
    iget-object v0, v6, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    const-string/jumbo v0, "cancelMotionTimeoutAlarmLocked()"

    .line 20
    const-string v2, "DeviceIdleController"

    .line 22
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, v6, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 27
    iget-object v3, v6, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 29
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 32
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 34
    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v0, "scheduleMotionRegistrationAlarmLocked"

    .line 39
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    iget-object v0, v6, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    move-result-wide v2

    .line 51
    iget-object v0, v6, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 53
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 55
    const-wide/16 v7, 0x2

    .line 57
    div-long/2addr v4, v7

    .line 58
    add-long v9, v4, v2

    .line 60
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 62
    if-eqz v2, :cond_1

    .line 64
    iget-object v7, v6, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 66
    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 68
    const-string v13, "DeviceIdleController.motion_registration"

    .line 70
    iget-object v15, v6, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 72
    const/4 v8, 0x2

    .line 73
    iget-object v14, v6, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 75
    invoke-virtual/range {v7 .. v15}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v7, v6, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 81
    const-string v11, "DeviceIdleController.motion_registration"

    .line 83
    iget-object v13, v6, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 85
    const/4 v8, 0x2

    .line 86
    iget-object v12, v6, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 88
    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 91
    :cond_2
    :goto_0
    iget-boolean v0, v6, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 93
    if-eqz v0, :cond_3

    .line 95
    iget-boolean v0, v6, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 97
    if-nez v0, :cond_3

    .line 99
    return-void

    .line 100
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 103
    iget v0, v6, Lcom/android/server/DeviceIdleController;->mState:I

    .line 105
    const/4 v2, 0x1

    .line 106
    const/4 v3, 0x0

    .line 107
    if-nez v0, :cond_5

    .line 109
    iget v0, v6, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 111
    if-ne v0, v1, :cond_4

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

    .line 120
    move-result v4

    .line 121
    iget v0, v6, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 123
    if-ne v0, v1, :cond_6

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

    .line 130
    move-object/from16 v1, p3

    .line 132
    move v2, v4

    .line 133
    move-wide/from16 v3, p1

    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;IJZ)V

    .line 138
    if-eqz v7, :cond_7

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 143
    :cond_7
    return-void
.end method

.method public final handleWriteConfigFile()V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    new-instance v1, Lcom/android/internal/util/jobs/FastXmlSerializer;

    .line 9
    invoke-direct {v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 12
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lcom/android/internal/util/jobs/FastXmlSerializer;)V

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

    .line 31
    monitor-enter v1

    .line 32
    const/4 v2, 0x0

    .line 33
    :try_start_3
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 35
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 42
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 44
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

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

    .line 53
    const-string v4, "Error writing config file"

    .line 55
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Landroid/util/AtomicFile;

    .line 60
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 7
    if-eqz p0, :cond_0

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

    .line 3
    iget-boolean p0, p0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

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

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 12
    iget-boolean v3, v2, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 14
    if-eqz v3, :cond_0

    .line 16
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    .line 18
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 20
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 27
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 29
    cmp-long p0, v0, v2

    .line 31
    if-ltz p0, :cond_0

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

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 12
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 14
    add-long/2addr v0, v2

    .line 15
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 17
    invoke-virtual {p0}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    .line 20
    move-result-wide v2

    .line 21
    cmp-long p0, v0, v2

    .line 23
    if-ltz p0, :cond_0

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "keyguardShowing="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "DeviceIdleController"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 27
    if-eq v0, p1, :cond_1

    .line 29
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 31
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 33
    if-eqz v0, :cond_1

    .line 35
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 37
    if-nez v0, :cond_1

    .line 39
    if-nez p1, :cond_1

    .line 41
    const-string/jumbo p1, "unlocked"

    .line 44
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 51
    :cond_1
    return-void
.end method

.method public final maybeStopMonitoringMotionLocked()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 3
    const-string v1, "DeviceIdleController"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v0, "maybeStopMonitoringMotionLocked()"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 15
    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 19
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 27
    iget-boolean v2, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 29
    if-eqz v2, :cond_2

    .line 31
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 33
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 35
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x2

    .line 40
    if-ne v2, v3, :cond_1

    .line 42
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 44
    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 46
    iget-object v4, v2, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 48
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 50
    invoke-virtual {v3, v4, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, v0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 56
    iget-object v3, v2, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 58
    iget-object v2, v2, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 60
    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 63
    :goto_0
    const/4 v2, 0x0

    .line 64
    iput-boolean v2, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 66
    const-string/jumbo v0, "cancelMotionTimeoutAlarmLocked()"

    .line 69
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 74
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 76
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 79
    :cond_2
    const-string/jumbo v0, "cancelMotionRegistrationAlarmLocked()"

    .line 82
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 87
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionRegistrationAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 89
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 92
    :cond_3
    return-void
.end method

.method public final motionLocked()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "DeviceIdleController"

    .line 7
    const-string/jumbo v1, "motionLocked()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 24
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 26
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 28
    const-string/jumbo v2, "motion"

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 34
    return-void
.end method

.method public final moveToLightStateLocked(ILjava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getBatteryLevelRaw()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 7
    iput v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v2

    .line 13
    iput-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 15
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 17
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 27
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 33
    iget v4, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 35
    invoke-static {v0, v4}, Lcom/android/server/DeviceIdleController;->getBatteryLevelDiff(FF)F

    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 42
    move-result-object v6

    .line 43
    iget-wide v7, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 45
    iget-wide v9, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 47
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/DeviceIdleController;->getDuration(JJ)J

    .line 50
    move-result-wide v7

    .line 51
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    move-result-object v7

    .line 55
    move-object v4, p2

    .line 56
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    const-string v2, "[LIGHT] %s to %s, reason=%s, battery=%s(%s/%d)"

    .line 62
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    const-string v2, "DeviceIdleController"

    .line 68
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 73
    iput v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 75
    iget-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 77
    iput-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 79
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object p0

    .line 85
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    .line 88
    move-result-object p0

    .line 89
    const p2, 0x84d9

    .line 92
    invoke-static {p2, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 95
    const-wide/32 v0, 0x80000

    .line 98
    const-string p0, "DozeLightState"

    .line 100
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 103
    return-void
.end method

.method public final moveToStateLocked(ILjava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getBatteryLevelRaw()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 7
    iput v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v2

    .line 13
    iput-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 15
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 17
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 27
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 33
    iget v4, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 35
    invoke-static {v0, v4}, Lcom/android/server/DeviceIdleController;->getBatteryLevelDiff(FF)F

    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 42
    move-result-object v6

    .line 43
    iget-wide v7, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 45
    iget-wide v9, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 47
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/DeviceIdleController;->getDuration(JJ)J

    .line 50
    move-result-wide v7

    .line 51
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    move-result-object v7

    .line 55
    move-object v4, p2

    .line 56
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    const-string v2, "[DEEP] %s to %s, reason=%s, battery=%s(%s/%d)"

    .line 62
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    const-string v2, "DeviceIdleController"

    .line 68
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 73
    iput v0, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 75
    iget-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 77
    iput-wide v2, v1, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 79
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v0

    .line 85
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 88
    move-result-object p2

    .line 89
    const v0, 0x84d0

    .line 92
    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 95
    const-wide/32 v0, 0x80000

    .line 98
    const-string p2, "DozeDeepState"

    .line 100
    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 106
    return-void
.end method

.method public final onAnyMotionResult(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "DeviceIdleController"

    .line 7
    const-string/jumbo v1, "onAnyMotionResult("

    .line 10
    const-string v2, ")"

    .line 12
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    monitor-enter p0

    .line 16
    const/4 v0, -0x1

    .line 17
    if-eq p1, v0, :cond_1

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

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

    .line 28
    if-ne p1, v0, :cond_2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    if-nez p1, :cond_5

    .line 33
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 35
    const/4 v0, 0x3

    .line 36
    if-ne p1, v0, :cond_3

    .line 38
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 40
    const-string/jumbo p1, "s:stationary"

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    const/4 v0, 0x4

    .line 48
    if-ne p1, v0, :cond_5

    .line 50
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 52
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 54
    if-eqz p1, :cond_5

    .line 56
    const-string/jumbo p1, "s:stationary"

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 65
    iget-wide v0, p1, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 67
    const-string/jumbo p1, "non_stationary"

    .line 70
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "Removing uid "

    .line 7
    const-string v1, " from temp whitelist"

    .line 9
    const-string v2, "DeviceIdleController"

    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 17
    move-result v0

    .line 18
    const-wide/16 v3, 0x0

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

    .line 30
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 32
    const/16 v2, 0xf

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 42
    const/16 v2, 0xd

    .line 44
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 54
    move-result-object p1

    .line 55
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhitelistChangedIntent:Landroid/content/Intent;

    .line 57
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 59
    const/4 v3, 0x0

    .line 60
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhilelistChangedOptions:Landroid/os/Bundle;

    .line 62
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 67
    const/16 p1, 0x4011

    .line 69
    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 9

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne p1, v0, :cond_8

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 8
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 10
    const-class v0, Landroid/app/AlarmManager;

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/app/AlarmManager;

    .line 18
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 20
    const-class p1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 28
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 30
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 36
    const-class p1, Landroid/os/BatteryManagerInternal;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/os/BatteryManagerInternal;

    .line 44
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

    .line 46
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 54
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 56
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 64
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 66
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 74
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 76
    const-class p1, Landroid/os/PowerManagerInternal;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/os/PowerManagerInternal;

    .line 84
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 86
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 88
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 90
    const-class v0, Landroid/os/PowerManager;

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/os/PowerManager;

    .line 98
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 100
    const-string/jumbo v0, "deviceidle_maint"

    .line 103
    const/4 v1, 0x1

    .line 104
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 114
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 116
    const-string/jumbo v0, "deviceidle_going_idle"

    .line 119
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 128
    const-string/jumbo p1, "netpolicy"

    .line 131
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 141
    const-class p1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 149
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    .line 151
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 153
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 155
    const-class v0, Landroid/hardware/SensorManager;

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/hardware/SensorManager;

    .line 163
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 165
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 167
    const/4 v0, 0x0

    .line 168
    if-eqz p1, :cond_3

    .line 170
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 172
    iget-object v2, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 174
    const-class v3, Landroid/hardware/SensorManager;

    .line 176
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Landroid/hardware/SensorManager;

    .line 182
    iget-object v3, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 187
    move-result-object v3

    .line 188
    const v4, 0x10e003d

    .line 191
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 194
    move-result v3

    .line 195
    if-lez v3, :cond_0

    .line 197
    invoke-virtual {v2, v3, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

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

    .line 205
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    move-result-object p1

    .line 211
    const v4, 0x111003d

    .line 214
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_1

    .line 220
    const/16 p1, 0x1a

    .line 222
    invoke-virtual {v2, p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 225
    move-result-object v3

    .line 226
    :cond_1
    if-nez v3, :cond_2

    .line 228
    const/16 p1, 0x11

    .line 230
    invoke-virtual {v2, p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 233
    move-result-object v3

    .line 234
    :cond_2
    iput-object v3, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 236
    goto :goto_1

    .line 237
    :catchall_0
    move-exception p1

    .line 238
    goto/16 :goto_3

    .line 240
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mIsLocationPrefetchEnabled:Z

    .line 242
    if-eqz p1, :cond_4

    .line 244
    new-instance p1, Landroid/location/LocationRequest$Builder;

    .line 246
    const-wide/16 v2, 0x0

    .line 248
    invoke-direct {p1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 251
    const/16 v2, 0x64

    .line 253
    invoke-virtual {p1, v2}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1, v1}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    .line 264
    move-result-object p1

    .line 265
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 267
    :cond_4
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 269
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 271
    const-class v3, Lcom/android/server/DeviceIdleController$LocalService;

    .line 273
    invoke-virtual {p0, v3}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 276
    move-result-object v3

    .line 277
    check-cast v3, Lcom/android/server/DeviceIdleInternal;

    .line 279
    iget-object v3, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 284
    move-result-object v3

    .line 285
    const-string v4, "android.software.leanback_only"

    .line 287
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_5

    .line 293
    new-instance v3, Lcom/android/server/deviceidle/TvConstraintController;

    .line 295
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 297
    invoke-direct {v3, p1, v2}, Lcom/android/server/deviceidle/TvConstraintController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 300
    goto :goto_2

    .line 301
    :cond_5
    move-object v3, v0

    .line 302
    :goto_2
    if-eqz v3, :cond_6

    .line 304
    invoke-virtual {v3}, Lcom/android/server/deviceidle/TvConstraintController;->start()V

    .line 307
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 314
    move-result-object p1

    .line 315
    const v2, 0x10e003e

    .line 318
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 321
    move-result p1

    .line 322
    int-to-float p1, p1

    .line 323
    const/high16 v2, 0x42c80000    # 100.0f

    .line 325
    div-float v8, p1, v2

    .line 327
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 329
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 331
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    new-instance v2, Lcom/android/server/AnyMotionDetector;

    .line 338
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 340
    const-class v3, Landroid/os/PowerManager;

    .line 342
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 345
    move-result-object p1

    .line 346
    move-object v4, p1

    .line 347
    check-cast v4, Landroid/os/PowerManager;

    .line 349
    move-object v3, v2

    .line 350
    move-object v7, p0

    .line 351
    invoke-direct/range {v3 .. v8}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    .line 354
    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 356
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 358
    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl;->onSystemServicesReady()V

    .line 361
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 368
    move-result-object p1

    .line 369
    const/4 v1, 0x2

    .line 370
    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 377
    move-result-object p1

    .line 378
    new-instance v1, Landroid/content/Intent;

    .line 380
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 382
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 387
    const/high16 v2, 0x50000000

    .line 389
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    new-instance v1, Landroid/content/Intent;

    .line 394
    const-string v3, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 396
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 401
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntentOptions:Landroid/os/Bundle;

    .line 406
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mIdleIntentOptions:Landroid/os/Bundle;

    .line 408
    new-instance v1, Landroid/content/Intent;

    .line 410
    const-string v2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 412
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistChangedIntent:Landroid/content/Intent;

    .line 417
    const/high16 v2, 0x40000000    # 2.0f

    .line 419
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    new-instance v1, Landroid/content/Intent;

    .line 424
    const-string v3, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    .line 426
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhitelistChangedIntent:Landroid/content/Intent;

    .line 431
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 434
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistChangedOptions:Landroid/os/Bundle;

    .line 436
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveTempWhilelistChangedOptions:Landroid/os/Bundle;

    .line 438
    new-instance p1, Landroid/content/IntentFilter;

    .line 440
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 443
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 445
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 451
    move-result-object v1

    .line 452
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Lcom/android/server/DeviceIdleController$1;

    .line 454
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    new-instance p1, Landroid/content/IntentFilter;

    .line 459
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 462
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 464
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string/jumbo v1, "package"

    .line 470
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 476
    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Lcom/android/server/DeviceIdleController$1;

    .line 479
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 482
    new-instance p1, Landroid/content/IntentFilter;

    .line 484
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 487
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 489
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 495
    move-result-object v1

    .line 496
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Lcom/android/server/DeviceIdleController$1;

    .line 498
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 501
    new-instance p1, Landroid/content/IntentFilter;

    .line 503
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 506
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 508
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 513
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 519
    move-result-object v1

    .line 520
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Lcom/android/server/DeviceIdleController$1;

    .line 522
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 525
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 527
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 529
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 531
    invoke-virtual {p1, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleAllowlist([I[I)V

    .line 534
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 536
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 538
    invoke-virtual {p1, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 541
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 543
    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 545
    if-eqz p1, :cond_7

    .line 547
    const-class p1, Landroid/os/WearModeManagerInternal;

    .line 549
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 552
    move-result-object p1

    .line 553
    check-cast p1, Landroid/os/WearModeManagerInternal;

    .line 555
    if-eqz p1, :cond_7

    .line 557
    const-string/jumbo v1, "quick_doze_request"

    .line 560
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 563
    move-result-object v2

    .line 564
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mModeManagerQuickDozeRequestConsumer:Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;

    .line 566
    invoke-interface {p1, v1, v2, v3}, Landroid/os/WearModeManagerInternal;->addActiveStateChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 569
    const-string/jumbo v1, "off_body"

    .line 572
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 575
    move-result-object v2

    .line 576
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mModeManagerOffBodyStateConsumer:Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;

    .line 578
    invoke-interface {p1, v1, v2, v3}, Landroid/os/WearModeManagerInternal;->addActiveStateChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 581
    :cond_7
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 583
    new-instance v1, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;

    .line 585
    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 588
    const/16 v2, 0xf

    .line 590
    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 593
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 595
    invoke-virtual {p1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 598
    move-result-object p1

    .line 599
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 601
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mBatterySaverEnabled:Z

    .line 603
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked()V

    .line 606
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 608
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Lcom/android/server/DeviceIdleController$8;

    .line 610
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 613
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 615
    iget-object p1, p1, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 617
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 619
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 622
    move-result-object p1

    .line 623
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 625
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 628
    move-result-object v1

    .line 629
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 631
    invoke-virtual {p1, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 634
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 637
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 640
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

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

    .line 649
    if-ne p1, v0, :cond_9

    .line 651
    const-string p1, "DeviceIdleController"

    .line 653
    const-string/jumbo v0, "resetBatteryLevel"

    .line 656
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getBatteryLevelRaw()F

    .line 662
    move-result p1

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 666
    move-result-wide v0

    .line 667
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 669
    iput p1, v2, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 671
    iput p1, v2, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 673
    iput-wide v0, v2, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 675
    iput-wide v0, v2, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 677
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mDeepBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 679
    iput p1, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 681
    iput p1, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 683
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 685
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 687
    :cond_9
    :goto_4
    return-void
.end method

.method public final onConstraintStateChangedLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo p2, "device-idle constraint "

    .line 16
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, " has not been registered."

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    const-string p1, "DeviceIdleController"

    .line 33
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 37
    :cond_0
    iget-boolean p1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 39
    if-eq p2, p1, :cond_4

    .line 41
    iget-boolean p1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 43
    if-eqz p1, :cond_4

    .line 45
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 47
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 49
    if-eqz p2, :cond_1

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

    .line 57
    if-nez p1, :cond_4

    .line 59
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 61
    if-nez p1, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-wide p1, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 69
    const-wide/16 v1, 0x0

    .line 71
    cmp-long v1, p1, v1

    .line 73
    if-eqz v1, :cond_3

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 78
    move-result-wide v1

    .line 79
    cmp-long p1, p1, v1

    .line 81
    if-gez p1, :cond_4

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo p2, "s:"

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 103
    :cond_4
    :goto_1
    return-void
.end method

.method public final onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    const-string/jumbo v4, "mIsOffBody: "

    .line 10
    const-string/jumbo v5, "mForceModeManagerOffBodyState: "

    .line 13
    const-string/jumbo v6, "mModeManagerRequestedQuickDoze: "

    .line 16
    const-string/jumbo v7, "mForceModeManagerQuickDozeRequest: "

    .line 19
    const-string v8, "- history count : "

    .line 21
    const-string v9, "Unknown idle mode: "

    .line 23
    const-string v10, "Unknown idle mode: "

    .line 25
    const-string v11, "Unknown idle mode: "

    .line 27
    const-string v12, "-disabled"

    .line 29
    const-string v13, "Unknown get option: "

    .line 31
    const-string/jumbo v14, "mForceModeManagerOffBodyState: "

    .line 34
    const-string/jumbo v15, "mForceModeManagerQuickDozeRequest: "

    .line 37
    move-object/from16 v16, v4

    .line 39
    const-string v4, "Unknown idle mode: "

    .line 41
    move-object/from16 v17, v5

    .line 43
    const-string v5, "Unknown idle mode: "

    .line 45
    move-object/from16 v18, v6

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 50
    move-result-object v6

    .line 51
    move-object/from16 v19, v7

    .line 53
    const-string/jumbo v7, "step"

    .line 56
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v7

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v20

    .line 65
    const/4 v2, 0x0

    .line 66
    if-eqz v7, :cond_3

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v3

    .line 72
    const-string v4, "android.permission.DEVICE_POWER"

    .line 74
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 81
    move-result-wide v2

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 85
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    if-eqz v4, :cond_2

    .line 88
    :try_start_1
    const-string/jumbo v7, "deep"

    .line 91
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_0

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const-string/jumbo v7, "light"

    .line 101
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_1

    .line 107
    const-string/jumbo v4, "s:shell"

    .line 110
    invoke-virtual {v1, v4}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 113
    const-string v4, "Stepped to light: "

    .line 115
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 120
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    :goto_0
    const-string/jumbo v4, "s:shell"

    .line 142
    invoke-virtual {v1, v4}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 145
    const-string v4, "Stepped to deep: "

    .line 147
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 152
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :goto_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    monitor-exit p0

    .line 163
    :goto_2
    const/4 v12, 0x0

    .line 164
    goto/16 :goto_44

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

    .line 178
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v5

    .line 182
    const/4 v7, 0x1

    .line 183
    if-eqz v5, :cond_4

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 188
    move-result-object v3

    .line 189
    const-string v4, "android.permission.DEVICE_POWER"

    .line 191
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    monitor-enter p0

    .line 195
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 198
    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 199
    :try_start_4
    iput-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 201
    const-string v4, "active"

    .line 203
    iput-object v4, v1, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 205
    const-string/jumbo v4, "force-active"

    .line 208
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 211
    move-result v5

    .line 212
    invoke-virtual {v1, v5, v4}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 215
    const-string v4, "Light state: "

    .line 217
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 222
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    const-string v4, ", deep state: "

    .line 231
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 236
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 243
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 262
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v5

    .line 266
    const/4 v7, 0x4

    .line 267
    const/16 v22, -0x1

    .line 269
    if-eqz v5, :cond_d

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 274
    move-result-object v3

    .line 275
    const-string v5, "android.permission.DEVICE_POWER"

    .line 277
    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    monitor-enter p0

    .line 281
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 284
    move-result-wide v2

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 288
    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 289
    if-eqz v5, :cond_9

    .line 291
    :try_start_7
    const-string/jumbo v8, "deep"

    .line 294
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    move-result v8

    .line 298
    if-eqz v8, :cond_5

    .line 300
    goto :goto_7

    .line 301
    :cond_5
    const-string/jumbo v8, "light"

    .line 304
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    move-result v8

    .line 308
    if-eqz v8, :cond_8

    .line 310
    const/4 v8, 0x1

    .line 311
    iput-boolean v8, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 313
    const-string/jumbo v4, "idle-light"

    .line 316
    iput-object v4, v1, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 321
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 323
    :goto_6
    if-eq v4, v7, :cond_7

    .line 325
    const-string/jumbo v5, "s:shell"

    .line 328
    invoke-virtual {v1, v5}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 331
    iget v5, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 333
    if-ne v4, v5, :cond_6

    .line 335
    const-string v4, "Unable to go light idle; stopped at "

    .line 337
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 342
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 352
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 367
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    goto :goto_9

    .line 371
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    goto :goto_9

    .line 379
    :cond_9
    :goto_7
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 381
    if-nez v4, :cond_a

    .line 383
    const-string v4, "Unable to go deep idle; not enabled"

    .line 385
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 388
    :try_start_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 396
    const-string/jumbo v4, "idle-deep"

    .line 399
    iput-object v4, v1, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 404
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 406
    const/4 v5, 0x5

    .line 407
    :goto_8
    if-eq v4, v5, :cond_c

    .line 409
    const-string/jumbo v7, "s:shell"

    .line 412
    invoke-virtual {v1, v7}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 415
    iget v7, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 417
    if-ne v4, v7, :cond_b

    .line 419
    const-string v4, "Unable to go deep idle; stopped at "

    .line 421
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 426
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 429
    move-result-object v4

    .line 430
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 436
    :try_start_c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 445
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 448
    :goto_9
    :try_start_e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    monitor-exit p0

    .line 452
    goto/16 :goto_2

    .line 454
    :goto_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 464
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    move-result v4

    .line 468
    if-eqz v4, :cond_e

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 473
    move-result-object v3

    .line 474
    const-string v4, "android.permission.DEVICE_POWER"

    .line 476
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    monitor-enter p0

    .line 480
    :try_start_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 483
    move-result-wide v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 484
    const/4 v4, 0x1

    .line 485
    :try_start_10
    iput-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 487
    const-string/jumbo v4, "inactive"

    .line 490
    iput-object v4, v1, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 495
    const-string v4, "Light state: "

    .line 497
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 502
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 505
    move-result-object v4

    .line 506
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    const-string v4, ", deep state: "

    .line 511
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 514
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 516
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 519
    move-result-object v4

    .line 520
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 523
    :try_start_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 526
    monitor-exit p0

    .line 527
    goto/16 :goto_2

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

    .line 543
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 546
    move-result v4

    .line 547
    if-eqz v4, :cond_f

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 552
    move-result-object v3

    .line 553
    const-string v4, "android.permission.DEVICE_POWER"

    .line 555
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    monitor-enter p0

    .line 559
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 562
    move-result-wide v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 563
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 566
    const-string v4, "Light state: "

    .line 568
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 573
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 576
    move-result-object v4

    .line 577
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    const-string v4, ", deep state: "

    .line 582
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 587
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 590
    move-result-object v4

    .line 591
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const/4 v4, 0x0

    .line 595
    iput-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    .line 599
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    move-result-object v4

    .line 611
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const/4 v4, 0x0

    .line 615
    iput-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    .line 619
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    .line 624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    move-result-object v4

    .line 631
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 634
    :try_start_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 637
    monitor-exit p0

    .line 638
    goto/16 :goto_2

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

    .line 654
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    move-result v4

    .line 658
    const/4 v14, 0x7

    .line 659
    const/16 v15, 0x9

    .line 661
    const/4 v5, 0x2

    .line 662
    if-eqz v4, :cond_12

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 667
    move-result-object v3

    .line 668
    const-string v4, "android.permission.DEVICE_POWER"

    .line 670
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    monitor-enter p0

    .line 674
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 677
    move-result-object v2

    .line 678
    if-eqz v2, :cond_11

    .line 680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 683
    move-result-wide v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 684
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 687
    move-result v8

    .line 688
    sparse-switch v8, :sswitch_data_0

    .line 691
    goto/16 :goto_e

    .line 693
    :sswitch_0
    const-string/jumbo v5, "network"

    .line 696
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    move-result v5

    .line 700
    if-eqz v5, :cond_10

    .line 702
    const/4 v5, 0x6

    .line 703
    goto/16 :goto_f

    .line 705
    :catchall_a
    move-exception v0

    .line 706
    move-object v2, v0

    .line 707
    goto/16 :goto_11

    .line 709
    :sswitch_1
    const-string/jumbo v5, "forceoffbody"

    .line 712
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 715
    move-result v5

    .line 716
    if-eqz v5, :cond_10

    .line 718
    const/16 v5, 0xa

    .line 720
    goto/16 :goto_f

    .line 722
    :sswitch_2
    const-string/jumbo v5, "charging"

    .line 725
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 728
    move-result v5

    .line 729
    if-eqz v5, :cond_10

    .line 731
    const/4 v5, 0x5

    .line 732
    goto :goto_f

    .line 733
    :sswitch_3
    const-string/jumbo v5, "quick"

    .line 736
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    move-result v5

    .line 740
    if-eqz v5, :cond_10

    .line 742
    const/4 v5, 0x3

    .line 743
    goto :goto_f

    .line 744
    :sswitch_4
    const-string/jumbo v5, "light"

    .line 747
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 750
    move-result v5

    .line 751
    if-eqz v5, :cond_10

    .line 753
    const/4 v5, 0x0

    .line 754
    goto :goto_f

    .line 755
    :sswitch_5
    const-string/jumbo v7, "force"

    .line 758
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 761
    move-result v7

    .line 762
    if-eqz v7, :cond_10

    .line 764
    goto :goto_f

    .line 765
    :sswitch_6
    const-string/jumbo v5, "deep"

    .line 768
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 771
    move-result v5

    .line 772
    if-eqz v5, :cond_10

    .line 774
    const/4 v5, 0x1

    .line 775
    goto :goto_f

    .line 776
    :sswitch_7
    const-string/jumbo v5, "screen"

    .line 779
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 782
    move-result v5

    .line 783
    if-eqz v5, :cond_10

    .line 785
    move v5, v7

    .line 786
    goto :goto_f

    .line 787
    :sswitch_8
    const-string/jumbo v5, "offbody"

    .line 790
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 793
    move-result v5

    .line 794
    if-eqz v5, :cond_10

    .line 796
    move v5, v15

    .line 797
    goto :goto_f

    .line 798
    :sswitch_9
    const-string/jumbo v5, "modemanagerquick"

    .line 801
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 804
    move-result v5

    .line 805
    if-eqz v5, :cond_10

    .line 807
    move v5, v14

    .line 808
    goto :goto_f

    .line 809
    :sswitch_a
    const-string/jumbo v5, "forcemodemanagerquick"

    .line 812
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    move-result v5

    .line 816
    if-eqz v5, :cond_10

    .line 818
    const/16 v5, 0x8

    .line 820
    goto :goto_f

    .line 821
    :cond_10
    :goto_e
    move/from16 v5, v22

    .line 823
    :goto_f
    packed-switch v5, :pswitch_data_0

    .line 826
    invoke-virtual {v13, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 829
    move-result-object v2

    .line 830
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    goto :goto_10

    .line 834
    :pswitch_0
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    .line 836
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 839
    goto :goto_10

    .line 840
    :pswitch_1
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mIsOffBody:Z

    .line 842
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 845
    goto :goto_10

    .line 846
    :pswitch_2
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 848
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 851
    goto :goto_10

    .line 852
    :pswitch_3
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 854
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 857
    goto :goto_10

    .line 858
    :pswitch_4
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 860
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 863
    goto :goto_10

    .line 864
    :pswitch_5
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 866
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 869
    goto :goto_10

    .line 870
    :pswitch_6
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 872
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 875
    goto :goto_10

    .line 876
    :pswitch_7
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mQuickDozeActivated:Z

    .line 878
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 881
    goto :goto_10

    .line 882
    :pswitch_8
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 884
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 887
    goto :goto_10

    .line 888
    :pswitch_9
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 890
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 893
    move-result-object v2

    .line 894
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    goto :goto_10

    .line 898
    :pswitch_a
    iget v2, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 900
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 903
    move-result-object v2

    .line 904
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 907
    :goto_10
    :try_start_17
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 917
    throw v2

    .line 918
    :cond_11
    const-string v2, "Argument required"

    .line 920
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    :goto_12
    monitor-exit p0

    .line 924
    goto/16 :goto_2

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

    .line 931
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    move-result v4

    .line 935
    if-eqz v4, :cond_1c

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 940
    move-result-object v3

    .line 941
    const-string v4, "android.permission.DEVICE_POWER"

    .line 943
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    monitor-enter p0

    .line 947
    :try_start_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 950
    move-result-wide v2

    .line 951
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 954
    move-result-object v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 955
    if-eqz v4, :cond_14

    .line 957
    :try_start_19
    const-string/jumbo v5, "deep"

    .line 960
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 963
    move-result v5

    .line 964
    if-nez v5, :cond_14

    .line 966
    const-string v5, "all"

    .line 968
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 971
    move-result v5

    .line 972
    if-eqz v5, :cond_13

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

    .line 982
    :cond_14
    :goto_15
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 984
    if-eqz v5, :cond_15

    .line 986
    const/4 v5, 0x0

    .line 987
    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 989
    const-string v5, "Deep idle mode disabled"

    .line 991
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 1001
    const-string/jumbo v8, "light"

    .line 1004
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1007
    move-result v8

    .line 1008
    if-nez v8, :cond_17

    .line 1010
    const-string v8, "all"

    .line 1012
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1015
    move-result v8

    .line 1016
    if-eqz v8, :cond_16

    .line 1018
    goto :goto_17

    .line 1019
    :cond_16
    move/from16 v21, v5

    .line 1021
    goto :goto_18

    .line 1022
    :cond_17
    :goto_17
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1024
    if-eqz v5, :cond_18

    .line 1026
    const/4 v5, 0x0

    .line 1027
    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1029
    const-string v5, "Light idle mode disabled"

    .line 1031
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    const/4 v7, 0x1

    .line 1035
    :cond_18
    const/16 v21, 0x1

    .line 1037
    :goto_18
    if-eqz v7, :cond_1a

    .line 1039
    if-nez v4, :cond_19

    .line 1041
    const-string v5, "all"

    .line 1043
    goto :goto_19

    .line 1044
    :cond_19
    move-object v5, v4

    .line 1045
    :goto_19
    invoke-virtual {v5, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1048
    move-result-object v5

    .line 1049
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 1052
    move-result v7

    .line 1053
    invoke-virtual {v1, v7, v5}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 1056
    :cond_1a
    if-nez v21, :cond_1b

    .line 1058
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1060
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    move-result-object v4

    .line 1070
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 1073
    :cond_1b
    :try_start_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1076
    monitor-exit p0

    .line 1077
    goto/16 :goto_2

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

    .line 1091
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1094
    move-result v4

    .line 1095
    if-eqz v4, :cond_25

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1100
    move-result-object v3

    .line 1101
    const-string v4, "android.permission.DEVICE_POWER"

    .line 1103
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    monitor-enter p0

    .line 1107
    :try_start_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1110
    move-result-wide v2

    .line 1111
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1114
    move-result-object v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    .line 1115
    if-eqz v4, :cond_1e

    .line 1117
    :try_start_1c
    const-string/jumbo v5, "deep"

    .line 1120
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1123
    move-result v5

    .line 1124
    if-nez v5, :cond_1e

    .line 1126
    const-string v5, "all"

    .line 1128
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1131
    move-result v5

    .line 1132
    if-eqz v5, :cond_1d

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

    .line 1143
    if-nez v5, :cond_1f

    .line 1145
    const/4 v5, 0x1

    .line 1146
    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 1148
    const-string v5, "Deep idle mode enabled"

    .line 1150
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 1160
    const-string/jumbo v8, "light"

    .line 1163
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1166
    move-result v8

    .line 1167
    if-nez v8, :cond_21

    .line 1169
    const-string v8, "all"

    .line 1171
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1174
    move-result v8

    .line 1175
    if-eqz v8, :cond_20

    .line 1177
    goto :goto_1f

    .line 1178
    :cond_20
    move/from16 v21, v7

    .line 1180
    move v7, v5

    .line 1181
    goto :goto_21

    .line 1182
    :cond_21
    :goto_1f
    iget-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1184
    if-nez v7, :cond_22

    .line 1186
    const/4 v7, 0x1

    .line 1187
    iput-boolean v7, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1189
    const-string v5, "Light idle mode enable"

    .line 1191
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    const/4 v7, 0x1

    .line 1195
    :goto_20
    const/16 v21, 0x1

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

    .line 1202
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1205
    :cond_23
    if-nez v21, :cond_24

    .line 1207
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1209
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1218
    move-result-object v4

    .line 1219
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    .line 1222
    :cond_24
    :try_start_1d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1225
    monitor-exit p0

    .line 1226
    goto/16 :goto_2

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

    .line 1240
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1243
    move-result v4

    .line 1244
    if-eqz v4, :cond_2d

    .line 1246
    monitor-enter p0

    .line 1247
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1250
    move-result-object v2

    .line 1251
    if-eqz v2, :cond_2b

    .line 1253
    const-string v3, "all"

    .line 1255
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1258
    move-result v3

    .line 1259
    if-eqz v3, :cond_26

    .line 1261
    goto :goto_25

    .line 1262
    :cond_26
    const-string/jumbo v3, "deep"

    .line 1265
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1268
    move-result v3

    .line 1269
    if-eqz v3, :cond_28

    .line 1271
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 1273
    if-eqz v2, :cond_27

    .line 1275
    const-string v20, "1"

    .line 1277
    :cond_27
    move-object/from16 v2, v20

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

    .line 1286
    goto :goto_26

    .line 1287
    :cond_28
    const-string/jumbo v3, "light"

    .line 1290
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1293
    move-result v3

    .line 1294
    if-eqz v3, :cond_2a

    .line 1296
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1298
    if-eqz v2, :cond_29

    .line 1300
    const-string v20, "1"

    .line 1302
    :cond_29
    move-object/from16 v2, v20

    .line 1304
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1307
    goto :goto_26

    .line 1308
    :cond_2a
    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1311
    move-result-object v2

    .line 1312
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    goto :goto_26

    .line 1316
    :cond_2b
    :goto_25
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 1318
    if-eqz v2, :cond_2c

    .line 1320
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1322
    if-eqz v2, :cond_2c

    .line 1324
    const-string v20, "1"

    .line 1326
    :cond_2c
    move-object/from16 v2, v20

    .line 1328
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1331
    :goto_26
    monitor-exit p0

    .line 1332
    goto/16 :goto_2

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

    .line 1339
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1342
    move-result v4

    .line 1343
    const/16 v9, 0x3d

    .line 1345
    const/16 v10, 0x2d

    .line 1347
    const/16 v11, 0x2b

    .line 1349
    if-eqz v4, :cond_39

    .line 1351
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1354
    move-result-object v3

    .line 1355
    if-eqz v3, :cond_34

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1360
    move-result-object v4

    .line 1361
    const-string v8, "android.permission.DEVICE_POWER"

    .line 1363
    invoke-virtual {v4, v8, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1369
    move-result-wide v12

    .line 1370
    :cond_2e
    :try_start_1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1373
    move-result v4

    .line 1374
    const/4 v8, 0x1

    .line 1375
    if-lt v4, v8, :cond_33

    .line 1377
    const/4 v4, 0x0

    .line 1378
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 1381
    move-result v8

    .line 1382
    if-eq v8, v10, :cond_2f

    .line 1384
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 1387
    move-result v8

    .line 1388
    if-eq v8, v11, :cond_2f

    .line 1390
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 1393
    move-result v8

    .line 1394
    if-eq v8, v9, :cond_2f

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

    .line 1403
    move-result v8

    .line 1404
    const/4 v14, 0x1

    .line 1405
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1408
    move-result-object v3

    .line 1409
    if-ne v8, v11, :cond_30

    .line 1411
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 1414
    move-result-object v8

    .line 1415
    invoke-virtual {v1, v8, v5, v2}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppsInternal(Ljava/util/List;ILcom/android/server/DeviceIdleController$TargetPkg;)I

    .line 1418
    move-result v8

    .line 1419
    if-ne v8, v14, :cond_32

    .line 1421
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1423
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1426
    const-string v14, "Added: "

    .line 1428
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1437
    move-result-object v3

    .line 1438
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1441
    goto :goto_28

    .line 1442
    :cond_30
    if-ne v8, v10, :cond_31

    .line 1444
    invoke-virtual {v1, v3, v7, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z

    .line 1447
    move-result v8

    .line 1448
    if-eqz v8, :cond_32

    .line 1450
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1452
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1455
    const-string v14, "Removed: "

    .line 1457
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1466
    move-result-object v3

    .line 1467
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    goto :goto_28

    .line 1471
    :cond_31
    invoke-virtual {v1, v3}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    .line 1474
    move-result v3

    .line 1475
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1478
    :cond_32
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1481
    move-result-object v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    .line 1482
    if-nez v3, :cond_2e

    .line 1484
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1487
    goto/16 :goto_2e

    .line 1489
    :cond_33
    :goto_29
    :try_start_20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1491
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1494
    const-string v2, "Package must be prefixed with +, -, or =: "

    .line 1496
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1505
    move-result-object v1

    .line 1506
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    .line 1509
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1512
    return v22

    .line 1513
    :goto_2a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1516
    throw v1

    .line 1517
    :cond_34
    const/4 v4, 0x0

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1521
    move-result-object v2

    .line 1522
    const-string v3, "DeviceIdleController"

    .line 1524
    invoke-static {v2, v3, v6}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 1527
    move-result v2

    .line 1528
    if-nez v2, :cond_35

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

    .line 1535
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1538
    move-result v3

    .line 1539
    if-ge v2, v3, :cond_36

    .line 1541
    const-string/jumbo v3, "system-excidle,"

    .line 1544
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1547
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 1549
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1552
    move-result-object v3

    .line 1553
    check-cast v3, Ljava/lang/String;

    .line 1555
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1558
    const-string v3, ","

    .line 1560
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1563
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 1565
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1568
    move-result-object v3

    .line 1569
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1572
    add-int/lit8 v2, v2, 0x1

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

    .line 1581
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1584
    move-result v3

    .line 1585
    if-ge v2, v3, :cond_37

    .line 1587
    const-string/jumbo v3, "system,"

    .line 1590
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1593
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 1595
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1598
    move-result-object v3

    .line 1599
    check-cast v3, Ljava/lang/String;

    .line 1601
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1604
    const-string v3, ","

    .line 1606
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1609
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 1611
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1614
    move-result-object v3

    .line 1615
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1618
    add-int/lit8 v2, v2, 0x1

    .line 1620
    goto :goto_2c

    .line 1621
    :cond_37
    move v2, v4

    .line 1622
    :goto_2d
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 1624
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1627
    move-result v3

    .line 1628
    if-ge v2, v3, :cond_38

    .line 1630
    const-string/jumbo v3, "user,"

    .line 1633
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1636
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 1638
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1641
    move-result-object v3

    .line 1642
    check-cast v3, Ljava/lang/String;

    .line 1644
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1647
    const-string v3, ","

    .line 1649
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1652
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 1654
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1657
    move-result-object v3

    .line 1658
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1661
    add-int/lit8 v2, v2, 0x1

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

    .line 1674
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1677
    move-result v5

    .line 1678
    if-eqz v5, :cond_3b

    .line 1680
    monitor-enter p0

    .line 1681
    :try_start_22
    iget-object v2, v1, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 1683
    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 1686
    move-result v2

    .line 1687
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1689
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1695
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1698
    move-result-object v3

    .line 1699
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 1704
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 1707
    move-result-object v3

    .line 1708
    check-cast v3, [Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 1710
    move v5, v4

    .line 1711
    :goto_30
    if-ge v5, v2, :cond_3a

    .line 1713
    aget-object v7, v3, v5

    .line 1715
    invoke-virtual {v7}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->toString()Ljava/lang/String;

    .line 1718
    move-result-object v7

    .line 1719
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    add-int/lit8 v5, v5, 0x1

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

    .line 1735
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1738
    move-result v5

    .line 1739
    if-eqz v5, :cond_3c

    .line 1741
    monitor-enter p0

    .line 1742
    :try_start_23
    const-string v2, "  Doze Allowlist Gatekeeper: false"

    .line 1744
    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 1756
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1759
    move-result v5

    .line 1760
    if-eqz v5, :cond_47

    .line 1762
    const-wide/16 v2, 0x2710

    .line 1764
    move-wide v7, v2

    .line 1765
    move v2, v4

    .line 1766
    :goto_32
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 1769
    move-result-object v3

    .line 1770
    if-eqz v3, :cond_42

    .line 1772
    const-string v5, "-u"

    .line 1774
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1777
    move-result v5

    .line 1778
    if-eqz v5, :cond_3e

    .line 1780
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1783
    move-result-object v3

    .line 1784
    if-nez v3, :cond_3d

    .line 1786
    const-string v1, "-u requires a user number"

    .line 1788
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1791
    return v22

    .line 1792
    :cond_3d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1795
    move-result v3

    .line 1796
    move v12, v4

    .line 1797
    move-object/from16 v4, p1

    .line 1799
    iput v3, v4, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 1801
    goto :goto_33

    .line 1802
    :cond_3e
    move v12, v4

    .line 1803
    move-object/from16 v4, p1

    .line 1805
    const-string v5, "-d"

    .line 1807
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1810
    move-result v5

    .line 1811
    if-eqz v5, :cond_41

    .line 1813
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1816
    move-result-object v3

    .line 1817
    if-nez v3, :cond_3f

    .line 1819
    const-string v1, "-d requires a duration"

    .line 1821
    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1824
    return v22

    .line 1825
    :cond_3f
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

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

    .line 1833
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1836
    move-result v3

    .line 1837
    if-eqz v3, :cond_40

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

    .line 1845
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1848
    move-result-object v5

    .line 1849
    if-eqz v5, :cond_44

    .line 1851
    if-eqz v2, :cond_43

    .line 1853
    :try_start_24
    iget v2, v4, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 1855
    invoke-virtual {v1, v2, v5}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempAllowlistAppChecked(ILjava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0

    .line 1858
    goto/16 :goto_44

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

    .line 1866
    const-string/jumbo v9, "shell"
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_2

    .line 1869
    const/16 v3, 0x13c

    .line 1871
    move-object/from16 v1, p0

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

    .line 1880
    goto/16 :goto_44

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

    .line 1890
    const-string v3, "Failed: "

    .line 1892
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1898
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1901
    move-result-object v1

    .line 1902
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    return v22

    .line 1906
    :cond_44
    move-object v13, v6

    .line 1907
    if-eqz v2, :cond_45

    .line 1909
    const-string v1, "[-r] requires a package name"

    .line 1911
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    return v22

    .line 1915
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1918
    move-result-object v2

    .line 1919
    const-string v3, "DeviceIdleController"

    .line 1921
    invoke-static {v2, v3, v13}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 1924
    move-result v2

    .line 1925
    if-nez v2, :cond_46

    .line 1927
    return v22

    .line 1928
    :cond_46
    monitor-enter p0

    .line 1929
    :try_start_27
    invoke-virtual {v1, v13, v12}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistScheduleLocked(Ljava/io/PrintWriter;Z)V

    .line 1932
    monitor-exit p0

    .line 1933
    goto/16 :goto_44

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

    .line 1943
    const-string/jumbo v5, "except-idle-whitelist"

    .line 1946
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1949
    move-result v5

    .line 1950
    if-eqz v5, :cond_4f

    .line 1952
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1955
    move-result-object v3

    .line 1956
    const-string v5, "android.permission.DEVICE_POWER"

    .line 1958
    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1964
    move-result-wide v2

    .line 1965
    :try_start_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1968
    move-result-object v5

    .line 1969
    if-nez v5, :cond_48

    .line 1971
    const-string v1, "No arguments given"

    .line 1973
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_16

    .line 1976
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1979
    return v22

    .line 1980
    :catchall_16
    move-exception v0

    .line 1981
    move-object v1, v0

    .line 1982
    goto/16 :goto_39

    .line 1984
    :cond_48
    :try_start_29
    const-string/jumbo v6, "reset"

    .line 1987
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1990
    move-result v6

    .line 1991
    if-eqz v6, :cond_49

    .line 1993
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V

    .line 1996
    goto :goto_37

    .line 1997
    :cond_49
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 2000
    move-result v6

    .line 2001
    const/4 v7, 0x1

    .line 2002
    if-lt v6, v7, :cond_4e

    .line 2004
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 2007
    move-result v6

    .line 2008
    if-eq v6, v10, :cond_4a

    .line 2010
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 2013
    move-result v6

    .line 2014
    if-eq v6, v11, :cond_4a

    .line 2016
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 2019
    move-result v6

    .line 2020
    if-eq v6, v9, :cond_4a

    .line 2022
    goto :goto_38

    .line 2023
    :cond_4a
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    .line 2026
    move-result v6

    .line 2027
    const/4 v7, 0x1

    .line 2028
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2031
    move-result-object v8

    .line 2032
    if-ne v6, v11, :cond_4c

    .line 2034
    invoke-virtual {v1, v8}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    .line 2037
    move-result v5

    .line 2038
    if-eqz v5, :cond_4b

    .line 2040
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2042
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2045
    const-string v6, "Added: "

    .line 2047
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2056
    move-result-object v5

    .line 2057
    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2060
    goto :goto_36

    .line 2061
    :cond_4b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2063
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2066
    const-string v6, "Unknown package: "

    .line 2068
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2077
    move-result-object v5

    .line 2078
    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    goto :goto_36

    .line 2082
    :cond_4c
    if-ne v6, v9, :cond_4d

    .line 2084
    invoke-virtual {v1, v8}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    .line 2087
    move-result v5

    .line 2088
    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2091
    :goto_36
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2094
    move-result-object v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_16

    .line 2095
    if-nez v5, :cond_49

    .line 2097
    :goto_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2100
    goto/16 :goto_44

    .line 2102
    :cond_4d
    :try_start_2a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2107
    const-string v4, "Unknown argument: "

    .line 2109
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2118
    move-result-object v1

    .line 2119
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    .line 2122
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2125
    return v22

    .line 2126
    :cond_4e
    :goto_38
    :try_start_2b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2131
    const-string v4, "Package must be prefixed with +, -, or =: "

    .line 2133
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2142
    move-result-object v1

    .line 2143
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    .line 2146
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2149
    return v22

    .line 2150
    :goto_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2153
    throw v1

    .line 2154
    :cond_4f
    const-string/jumbo v5, "sys-whitelist"

    .line 2157
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2160
    move-result v5

    .line 2161
    if-eqz v5, :cond_59

    .line 2163
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2166
    move-result-object v3

    .line 2167
    if-eqz v3, :cond_56

    .line 2169
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2172
    move-result-object v5

    .line 2173
    const-string v6, "android.permission.DEVICE_POWER"

    .line 2175
    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2181
    move-result-wide v5

    .line 2182
    :try_start_2c
    const-string/jumbo v7, "reset"

    .line 2185
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2188
    move-result v7

    .line 2189
    if-eqz v7, :cond_50

    .line 2191
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetSystemPowerWhitelistInternal()V

    .line 2194
    goto :goto_3b

    .line 2195
    :catchall_17
    move-exception v0

    .line 2196
    move-object v1, v0

    .line 2197
    goto/16 :goto_3d

    .line 2199
    :cond_50
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 2202
    move-result v7

    .line 2203
    const/4 v8, 0x1

    .line 2204
    if-lt v7, v8, :cond_55

    .line 2206
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 2209
    move-result v7

    .line 2210
    if-eq v7, v10, :cond_51

    .line 2212
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 2215
    move-result v7

    .line 2216
    if-eq v7, v11, :cond_51

    .line 2218
    goto :goto_3c

    .line 2219
    :cond_51
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 2222
    move-result v7

    .line 2223
    const/4 v8, 0x1

    .line 2224
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2227
    move-result-object v3

    .line 2228
    if-eq v7, v11, :cond_53

    .line 2230
    if-eq v7, v10, :cond_52

    .line 2232
    goto :goto_3a

    .line 2233
    :cond_52
    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z

    .line 2236
    move-result v7

    .line 2237
    if-eqz v7, :cond_54

    .line 2239
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2241
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2244
    const-string v8, "Removed "

    .line 2246
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2255
    move-result-object v3

    .line 2256
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    goto :goto_3a

    .line 2260
    :cond_53
    invoke-virtual {v1, v3, v14, v2}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z

    .line 2263
    move-result v7

    .line 2264
    if-eqz v7, :cond_54

    .line 2266
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2268
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2271
    const-string v8, "Restored "

    .line 2273
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2282
    move-result-object v3

    .line 2283
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2286
    :cond_54
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2289
    move-result-object v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_17

    .line 2290
    if-nez v3, :cond_50

    .line 2292
    :goto_3b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2295
    goto/16 :goto_44

    .line 2297
    :cond_55
    :goto_3c
    :try_start_2d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2299
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2302
    const-string v2, "Package must be prefixed with + or - "

    .line 2304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2313
    move-result-object v1

    .line 2314
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_17

    .line 2317
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2320
    return v22

    .line 2321
    :goto_3d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2324
    throw v1

    .line 2325
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2328
    move-result-object v2

    .line 2329
    const-string v3, "DeviceIdleController"

    .line 2331
    invoke-static {v2, v3, v13}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 2334
    move-result v2

    .line 2335
    if-nez v2, :cond_57

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

    .line 2342
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 2345
    move-result v3

    .line 2346
    if-ge v2, v3, :cond_58

    .line 2348
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 2350
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 2353
    move-result-object v3

    .line 2354
    check-cast v3, Ljava/lang/String;

    .line 2356
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2359
    const-string v3, ","

    .line 2361
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2364
    iget-object v3, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 2366
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 2369
    move-result-object v3

    .line 2370
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2373
    add-int/lit8 v2, v2, 0x1

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

    .line 2387
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2390
    move-result v5

    .line 2391
    if-eqz v5, :cond_5a

    .line 2393
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2396
    move-result-object v3

    .line 2397
    const-string v4, "android.permission.DEVICE_POWER"

    .line 2399
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    monitor-enter p0

    .line 2403
    :try_start_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2406
    move-result-wide v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    .line 2407
    :try_start_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 2410
    const-string v4, "Light state: "

    .line 2412
    invoke-virtual {v13, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2415
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2417
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 2420
    move-result-object v4

    .line 2421
    invoke-virtual {v13, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    const-string v4, ", deep state: "

    .line 2426
    invoke-virtual {v13, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2429
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2431
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 2434
    move-result-object v4

    .line 2435
    invoke-virtual {v13, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1a

    .line 2438
    :try_start_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2441
    monitor-exit p0

    .line 2442
    goto/16 :goto_44

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

    .line 2458
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2461
    move-result v5

    .line 2462
    if-eqz v5, :cond_5d

    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2467
    move-result-object v3

    .line 2468
    const-string v5, "android.permission.DEVICE_POWER"

    .line 2470
    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2476
    move-result-object v2

    .line 2477
    const-string/jumbo v3, "true"

    .line 2480
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2483
    move-result v3

    .line 2484
    if-nez v3, :cond_5c

    .line 2486
    const-string/jumbo v3, "false"

    .line 2489
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2492
    move-result v3

    .line 2493
    if-eqz v3, :cond_5b

    .line 2495
    goto :goto_41

    .line 2496
    :cond_5b
    const-string v1, "Provide true or false argument after force-modemanager-quickdoze"

    .line 2498
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2501
    return v22

    .line 2502
    :cond_5c
    :goto_41
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2505
    move-result v2

    .line 2506
    monitor-enter p0

    .line 2507
    :try_start_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2510
    move-result-wide v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1b

    .line 2511
    const/4 v5, 0x1

    .line 2512
    :try_start_33
    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 2514
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2516
    move-object/from16 v6, v19

    .line 2518
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2521
    iget-boolean v6, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 2523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2526
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2529
    move-result-object v5

    .line 2530
    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2533
    iput-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 2535
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2537
    move-object/from16 v5, v18

    .line 2539
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2542
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 2544
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2547
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2550
    move-result-object v2

    .line 2551
    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2554
    iget-object v2, v1, Lcom/android/server/DeviceIdleController;->mModeManagerQuickDozeRequestConsumer:Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;

    .line 2556
    invoke-static {v2}, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->-$$Nest$monModeManagerRequestChangedLocked(Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1c

    .line 2559
    :try_start_34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2562
    monitor-exit p0

    .line 2563
    goto/16 :goto_44

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

    .line 2579
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2582
    move-result v5

    .line 2583
    if-eqz v5, :cond_60

    .line 2585
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2588
    move-result-object v3

    .line 2589
    const-string v5, "android.permission.DEVICE_POWER"

    .line 2591
    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2597
    move-result-object v2

    .line 2598
    const-string/jumbo v3, "true"

    .line 2601
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2604
    move-result v3

    .line 2605
    if-nez v3, :cond_5f

    .line 2607
    const-string/jumbo v3, "false"

    .line 2610
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2613
    move-result v3

    .line 2614
    if-eqz v3, :cond_5e

    .line 2616
    goto :goto_43

    .line 2617
    :cond_5e
    const-string v1, "Provide true or false argument after force-modemanager-offbody"

    .line 2619
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2622
    return v22

    .line 2623
    :cond_5f
    :goto_43
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2626
    move-result v2

    .line 2627
    monitor-enter p0

    .line 2628
    :try_start_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2631
    move-result-wide v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1d

    .line 2632
    const/4 v5, 0x1

    .line 2633
    :try_start_36
    iput-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    .line 2635
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2637
    move-object/from16 v6, v17

    .line 2639
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2642
    iget-boolean v6, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    .line 2644
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2647
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2650
    move-result-object v5

    .line 2651
    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2654
    iput-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mIsOffBody:Z

    .line 2656
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2658
    move-object/from16 v5, v16

    .line 2660
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2663
    iget-boolean v5, v1, Lcom/android/server/DeviceIdleController;->mIsOffBody:Z

    .line 2665
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2668
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2671
    move-result-object v2

    .line 2672
    invoke-virtual {v13, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2675
    iget-object v2, v1, Lcom/android/server/DeviceIdleController;->mModeManagerOffBodyStateConsumer:Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;

    .line 2677
    invoke-static {v2}, Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;->-$$Nest$monModeManagerOffBodyChangedLocked(Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1e

    .line 2680
    :try_start_37
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 18
    const v2, 0x1110167

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 24
    move-result v1

    .line 25
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 29
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 32
    move-result-object v1

    .line 33
    iget-object v2, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 35
    const/4 v3, 0x0

    .line 36
    move v4, v3

    .line 37
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 40
    move-result v5

    .line 41
    const/4 v6, 0x1

    .line 42
    const/high16 v7, 0x100000

    .line 44
    if-ge v4, v5, :cond_0

    .line 46
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-virtual {v0, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 55
    move-result-object v5

    .line 56
    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 58
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    .line 61
    move-result v7

    .line 62
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 64
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 66
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v8, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 75
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_3

    .line 82
    :catch_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    :try_start_2
    iget-object v1, v1, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 87
    move v2, v3

    .line 88
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 91
    move-result v4

    .line 92
    if-ge v2, v4, :cond_1

    .line 94
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :try_start_3
    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 103
    move-result-object v4

    .line 104
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 106
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 109
    move-result v5

    .line 110
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 112
    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 123
    invoke-virtual {v8, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 126
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 128
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 130
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v8, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 139
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    :catch_1
    add-int/lit8 v2, v2, 0x1

    .line 144
    goto :goto_2

    .line 145
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 147
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 149
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 156
    move-result-object v2

    .line 157
    iget-object v4, v0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 159
    if-nez v4, :cond_2

    .line 161
    new-instance v4, Lcom/android/server/DeviceIdleController$Constants;

    .line 163
    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 166
    iput-object v4, v0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 168
    :cond_2
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 170
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 172
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 175
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 178
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 180
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 182
    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 184
    iput-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 186
    const-string/jumbo v0, "boot"

    .line 189
    invoke-virtual {p0, v3, v0}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 192
    const-string/jumbo v0, "boot"

    .line 195
    invoke-virtual {p0, v3, v0}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 200
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 202
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 204
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    new-instance v0, Lcom/android/server/DeviceIdleController$BinderService;

    .line 207
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 210
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 212
    const-string/jumbo v1, "deviceidle"

    .line 215
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 218
    new-instance v0, Lcom/android/server/DeviceIdleController$LocalService;

    .line 220
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 223
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 225
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 228
    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    .line 230
    new-instance v1, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;

    .line 232
    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

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

    .line 3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 5
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 7
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 9
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 14
    iget-object v5, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 16
    iput-object v1, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 18
    iput-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 20
    iput-object v2, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 22
    invoke-static {v4, v1}, Lcom/android/server/AppStateTrackerImpl;->isAnyAppIdUnexempt([I[I)Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    iget-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

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

    .line 46
    invoke-static {v4, p0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_1

    .line 52
    iget-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 54
    const/4 v1, 0x5

    .line 55
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 65
    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 67
    invoke-static {v5, p0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_2

    .line 73
    iget-object p0, v0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 75
    const/4 v0, 0x6

    .line 76
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "postTempActiveTimeoutMessage: uid="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", delay="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "DeviceIdleController"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    const/4 v0, 0x6

    .line 34
    const/4 v1, 0x0

    .line 35
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 37
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

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

    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "Generic location: "

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "DeviceIdleController"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_1
    new-instance v0, Landroid/location/Location;

    .line 35
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 38
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 40
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 43
    move-result p1

    .line 44
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 46
    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 48
    cmpl-float p1, p1, v0

    .line 50
    if-lez p1, :cond_2

    .line 52
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 54
    if-eqz p1, :cond_2

    .line 56
    return-void

    .line 57
    :cond_2
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 60
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 62
    if-eqz p1, :cond_3

    .line 64
    const-string/jumbo p1, "s:location"

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 70
    :cond_3
    return-void
.end method

.method public final receivedGpsLocationLocked(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "GPS location: "

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "DeviceIdleController"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_1
    new-instance v0, Landroid/location/Location;

    .line 35
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 38
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 40
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 43
    move-result p1

    .line 44
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 46
    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 48
    cmpl-float p1, p1, v0

    .line 50
    if-lez p1, :cond_2

    .line 52
    return-void

    .line 53
    :cond_2
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 56
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 58
    if-eqz p1, :cond_3

    .line 60
    const-string/jumbo p1, "s:gps"

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

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

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

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

    .line 16
    const/4 v1, 0x7

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 24
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 26
    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 28
    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 36
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 38
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 41
    move-result p1

    .line 42
    const/4 v0, 0x1

    .line 43
    if-ne p1, v0, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

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

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    .line 7
    const-string v2, "No permission to change device idle whitelist"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    move-result v5

    .line 16
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 19
    move-result-object v3

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 23
    move-result v4

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const-string/jumbo v9, "removePowerSaveTempWhitelistApp"

    .line 29
    const/4 v10, 0x0

    .line 30
    move v6, p1

    .line 31
    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 34
    move-result p1

    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 38
    move-result-wide v0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppDirectInternal(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    throw p0

    .line 60
    :catch_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    return-void
.end method

.method public final removePowerSaveTempWhitelistAppDirectInternal(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 4
    move-result v0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 11
    move-result v0

    .line 12
    if-gez v0, :cond_0

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

    .line 20
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/util/Pair;

    .line 26
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

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

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    move-result-object v0

    .line 19
    const/high16 v2, 0x400000

    .line 21
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 27
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

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

    .line 36
    const-string v2, "Tried to get uid from package name but failed"

    .line 38
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    new-instance v0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 43
    new-instance v2, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 45
    invoke-direct {v2, v1, p1}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(ILjava/lang/String;)V

    .line 48
    invoke-direct {v0, p2, p3, v2}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;-><init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V

    .line 51
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 62
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 65
    const-string p1, "battery.value_app_removed_from_power_allowlist"

    .line 67
    invoke-static {p1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

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

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

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

    .line 17
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    move-result-object v0

    .line 36
    const/high16 v2, 0x100000

    .line 38
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 41
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 44
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

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

    .line 51
    const-string v2, "Tried to get uid from package name but failed"

    .line 53
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    new-instance v0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 58
    new-instance v2, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 60
    invoke-direct {v2, v1, p1}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(ILjava/lang/String;)V

    .line 63
    invoke-direct {v0, p2, p3, v2}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;-><init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V

    .line 66
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 74
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

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

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistChangedIntent:Landroid/content/Intent;

    .line 7
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistChangedOptions:Landroid/os/Bundle;

    .line 12
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    return-void
.end method

.method public final resetIdleManagementLocked()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 5
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mQuickDozeActivatedWhileIdling:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 13
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 19
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->maybeStopMonitoringMotionLocked()V

    .line 22
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 24
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 27
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

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

    .line 4
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 15
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 17
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 19
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 27
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 29
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 32
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

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

    .line 4
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 9
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 14
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 17
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 20
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

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

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

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

    .line 17
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    move-result-object v0

    .line 36
    const/high16 v2, 0x100000

    .line 38
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 41
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 44
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

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

    .line 51
    const-string v2, "Tried to get uid from package name but failed"

    .line 53
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    new-instance v0, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 58
    new-instance v2, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 60
    invoke-direct {v2, v1, p1}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(ILjava/lang/String;)V

    .line 63
    invoke-direct {v0, p2, p3, v2}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;-><init>(ILcom/android/server/DeviceIdleController$TargetPkg;Lcom/android/server/DeviceIdleController$TargetPkg;)V

    .line 66
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 74
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

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

    .line 3
    move-wide/from16 v1, p1

    .line 5
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 7
    const-string/jumbo v4, "scheduleAlarmLocked("

    .line 10
    const-string v5, "DeviceIdleController"

    .line 12
    if-eqz v3, :cond_0

    .line 14
    const-string v3, ", "

    .line 16
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v3

    .line 20
    iget v6, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 22
    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v6, ")"

    .line 31
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iget-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 43
    const/4 v6, 0x5

    .line 44
    if-eqz v3, :cond_1

    .line 46
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 48
    if-nez v3, :cond_1

    .line 50
    iget v3, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 52
    const/4 v7, 0x7

    .line 53
    if-eq v3, v7, :cond_1

    .line 55
    if-eq v3, v6, :cond_1

    .line 57
    const/4 v7, 0x6

    .line 58
    if-eq v3, v7, :cond_1

    .line 60
    return-void

    .line 61
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    move-result-wide v7

    .line 65
    add-long v11, v7, v1

    .line 67
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 69
    iget v3, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 71
    if-ne v3, v6, :cond_2

    .line 73
    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 75
    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 77
    iget-object v15, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 79
    const/4 v10, 0x2

    .line 80
    const-string v13, "DeviceIdleController.deep.maintenance"

    .line 82
    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v6, 0x4

    .line 87
    if-ne v3, v6, :cond_3

    .line 89
    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 91
    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 93
    iget-object v15, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 95
    const/4 v10, 0x2

    .line 96
    const-string v13, "DeviceIdleController.deep.idle"

    .line 98
    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 104
    iget-boolean v6, v3, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 106
    if-eqz v6, :cond_4

    .line 108
    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 110
    iget-wide v13, v3, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 112
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 114
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 116
    const/4 v10, 0x2

    .line 117
    const-string v15, "DeviceIdleController.deep.progression"

    .line 119
    move-object/from16 v16, v3

    .line 121
    move-object/from16 v17, v6

    .line 123
    invoke-virtual/range {v9 .. v17}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 126
    const/4 v3, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 130
    iget-object v14, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 132
    iget-object v15, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 134
    const/4 v10, 0x2

    .line 135
    const-string v13, "DeviceIdleController.deep.progression"

    .line 137
    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 140
    :goto_0
    const/4 v3, 0x0

    .line 141
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    if-eqz v3, :cond_5

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    const-string v2, "/"

    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 160
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 162
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    goto :goto_2

    .line 170
    :cond_5
    const-string v0, ""

    .line 172
    :goto_2
    const-string v1, ", wakeup=true)"

    .line 174
    invoke-static {v6, v0, v1, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public final scheduleLightAlarmLocked(JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v1, p1

    .line 4
    move/from16 v3, p5

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v5, "scheduleLightAlarmLocked("

    .line 11
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 19
    iget-boolean v5, v5, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 21
    if-eqz v5, :cond_0

    .line 23
    const-string v5, "/"

    .line 25
    move-wide/from16 v10, p3

    .line 27
    invoke-static {v10, v11, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-wide/from16 v10, p3

    .line 34
    const-string v5, ""

    .line 36
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v5, ", wakeup="

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    const-string v5, ")"

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    const-string v5, "DeviceIdleController"

    .line 58
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 63
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 69
    move-result-wide v4

    .line 70
    add-long v8, v4, v1

    .line 72
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 74
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 76
    iget-boolean v1, v1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 78
    const/4 v2, 0x3

    .line 79
    const/4 v4, 0x2

    .line 80
    if-eqz v1, :cond_2

    .line 82
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 84
    if-eqz v3, :cond_1

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

    .line 91
    const-string v12, "DeviceIdleController.light"

    .line 93
    iget-object v13, v0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 95
    move-wide/from16 v10, p3

    .line 97
    invoke-virtual/range {v6 .. v14}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 100
    goto :goto_3

    .line 101
    :cond_2
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 103
    if-eqz v3, :cond_3

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

    .line 110
    const-string v10, "DeviceIdleController.light"

    .line 112
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 114
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 117
    :goto_3
    return-void
.end method

.method public final scheduleMotionTimeoutAlarmLocked()V
    .locals 14

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "DeviceIdleController"

    .line 7
    const-string/jumbo v1, "scheduleMotionAlarmLocked"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 24
    iget-wide v3, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 26
    add-long v7, v0, v3

    .line 28
    iget-boolean v0, v2, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 34
    iget-wide v9, v2, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 36
    const/4 v6, 0x2

    .line 37
    const-string v11, "DeviceIdleController.motion"

    .line 39
    iget-object v12, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 41
    iget-object v13, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 43
    invoke-virtual/range {v5 .. v13}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 49
    const/4 v6, 0x2

    .line 50
    const-string v9, "DeviceIdleController.motion"

    .line 52
    iget-object v10, p0, Lcom/android/server/DeviceIdleController;->mMotionTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 54
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 56
    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

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

    .line 5
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 9
    iget-boolean v1, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 11
    if-eq v1, p2, :cond_0

    .line 13
    iput-boolean p2, v0, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateActiveConstraintsLocked()V

    .line 18
    const/4 v0, -0x1

    .line 19
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 21
    const/16 v1, 0xa

    .line 23
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

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

    .line 4
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getBatteryLevelRaw()F

    .line 7
    move-result v1

    .line 8
    iput v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 10
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 18
    const-string v0, "DeviceIdleController"

    .line 20
    const-string v1, "[LIGHT] %s to %s, battery=%s(%s/%d)"

    .line 22
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 24
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 34
    iget v4, v4, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 36
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 42
    iget v6, v5, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 44
    iget v5, v5, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 46
    invoke-static {v6, v5}, Lcom/android/server/DeviceIdleController;->getBatteryLevelDiff(FF)F

    .line 49
    move-result v5

    .line 50
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->floatToString(F)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 56
    iget-wide v7, v6, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 58
    iget-wide v9, v6, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 60
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/DeviceIdleController;->getDuration(JJ)J

    .line 63
    move-result-wide v6

    .line 64
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    move-result-object v6

    .line 68
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightBatteryLevel:Lcom/android/server/DeviceIdleController$BatteryLevel;

    .line 81
    iget v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 83
    iput v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 85
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 87
    iput-wide v1, v0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 89
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

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

    .line 4
    const-string v1, "DeviceIdleController"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 15
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 17
    if-nez v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 21
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 23
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x2

    .line 28
    if-ne v0, v2, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 32
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 34
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 36
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 38
    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 45
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 47
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 49
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 55
    move-result v0

    .line 56
    :goto_0
    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 61
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 63
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 71
    move-result-wide v0

    .line 72
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    const-string v2, "Unable to register for "

    .line 79
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 84
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    :goto_1
    return-void
.end method

.method public stepIdleStateLocked(Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 7
    if-eqz v2, :cond_0

    .line 9
    const-string v3, "DeviceIdleController"

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v5, "stepIdleStateLocked: mState="

    .line 16
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 21
    invoke-static {v4, v5, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    new-array v4, v3, [Ljava/lang/Object;

    .line 27
    const v5, 0x84d1

    .line 30
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 33
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 35
    iget-boolean v4, v4, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 37
    if-eqz v4, :cond_2

    .line 39
    const-string v1, "DeviceIdleController"

    .line 41
    const-string/jumbo v2, "stepIdleStateLocked called when emergency call is active"

    .line 44
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 49
    if-eqz v1, :cond_1

    .line 51
    const-string/jumbo v1, "emergency"

    .line 54
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 61
    :cond_1
    return-void

    .line 62
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->isUpcomingAlarmClock()Z

    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_4

    .line 68
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 70
    if-eqz v1, :cond_3

    .line 72
    const-string v1, "alarm"

    .line 74
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 77
    move-result v2

    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 84
    :cond_3
    return-void

    .line 85
    :cond_4
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 87
    if-eqz v4, :cond_6

    .line 89
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 91
    if-nez v4, :cond_6

    .line 93
    if-eqz v2, :cond_5

    .line 95
    const-string v1, "DeviceIdleController"

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    const-string v3, "Cannot step idle state. Blocked by: "

    .line 101
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 106
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 113
    move-result-object v0

    .line 114
    new-instance v3, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda10;

    .line 116
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 122
    move-result-object v0

    .line 123
    new-instance v3, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda11;

    .line 125
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 131
    move-result-object v0

    .line 132
    const-string v3, ","

    .line 134
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_5
    return-void

    .line 148
    :cond_6
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 150
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 152
    iget-boolean v6, v5, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    .line 154
    iget-boolean v5, v5, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

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

    .line 162
    if-eq v4, v7, :cond_7

    .line 164
    goto :goto_1

    .line 165
    :cond_7
    if-eqz v5, :cond_a

    .line 167
    :goto_0
    move v4, v9

    .line 168
    goto :goto_1

    .line 169
    :cond_8
    if-eqz v6, :cond_9

    .line 171
    if-eqz v5, :cond_9

    .line 173
    goto :goto_0

    .line 174
    :cond_9
    if-eqz v6, :cond_a

    .line 176
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

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

    .line 184
    goto/16 :goto_8

    .line 186
    :pswitch_0
    iput v10, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 188
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 190
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 193
    const/4 v3, 0x6

    .line 194
    invoke-virtual {v0, v3, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 197
    iget-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 199
    invoke-virtual {v0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 202
    if-eqz v2, :cond_b

    .line 204
    const-string v1, "DeviceIdleController"

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    const-string v3, "Moved from STATE_IDLE to STATE_IDLE_MAINTENANCE. Next alarm in "

    .line 210
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    iget-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 215
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, " ms."

    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v2

    .line 227
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 233
    move-result-wide v1

    .line 234
    iput-wide v1, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 236
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 238
    iget-wide v2, v1, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 240
    iget-wide v7, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 242
    long-to-float v4, v7

    .line 243
    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 245
    mul-float/2addr v4, v1

    .line 246
    float-to-long v7, v4

    .line 247
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 250
    move-result-wide v1

    .line 251
    iput-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 253
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 255
    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 257
    cmp-long v1, v1, v3

    .line 259
    if-gez v1, :cond_c

    .line 261
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 263
    :cond_c
    invoke-virtual {v0, v5, v6}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 266
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 268
    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    goto/16 :goto_8

    .line 273
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 276
    iput-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 278
    iput-object v6, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 280
    iput-object v6, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 282
    invoke-virtual {v0, v7, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 285
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 287
    if-eqz v4, :cond_12

    .line 289
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 291
    iget-object v4, v4, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    .line 293
    if-eqz v4, :cond_12

    .line 295
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 297
    iget-wide v1, v1, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    .line 301
    const-string/jumbo v5, "scheduleSensingTimeoutAlarmLocked("

    .line 304
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 310
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 312
    iget-boolean v5, v5, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 314
    if-eqz v5, :cond_d

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    .line 318
    const-string v7, "/"

    .line 320
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    iget-object v7, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 325
    iget-wide v7, v7, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 327
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object v5

    .line 334
    goto :goto_2

    .line 335
    :cond_d
    const-string v5, ""

    .line 337
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v5, ", wakeup=true)"

    .line 342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object v4

    .line 349
    const-string v5, "DeviceIdleController"

    .line 351
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 357
    move-result-wide v4

    .line 358
    add-long v13, v4, v1

    .line 360
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 362
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 364
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 366
    if-eqz v2, :cond_e

    .line 368
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 370
    iget-wide v1, v1, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 372
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$2;

    .line 374
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 376
    const/4 v12, 0x2

    .line 377
    const-string v17, "DeviceIdleController.sensing"

    .line 379
    move-wide v15, v1

    .line 380
    move-object/from16 v18, v4

    .line 382
    move-object/from16 v19, v5

    .line 384
    invoke-virtual/range {v11 .. v19}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 387
    goto :goto_3

    .line 388
    :cond_e
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 390
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Lcom/android/server/DeviceIdleController$2;

    .line 392
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 394
    const/4 v12, 0x2

    .line 395
    const-string v15, "DeviceIdleController.sensing"

    .line 397
    move-object/from16 v16, v1

    .line 399
    move-object/from16 v17, v2

    .line 401
    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 404
    :goto_3
    iput-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 406
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 408
    const-string/jumbo v1, "checkForAnyMotion(). mState = "

    .line 411
    iget-object v4, v0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    .line 413
    monitor-enter v4

    .line 414
    :try_start_0
    sget-boolean v2, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    .line 416
    if-eqz v2, :cond_f

    .line 418
    const-string v3, "AnyMotionDetector"

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    iget v1, v0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 427
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object v1

    .line 434
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 442
    if-eq v1, v10, :cond_11

    .line 444
    iput v10, v0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 446
    if-eqz v2, :cond_10

    .line 448
    const-string v1, "AnyMotionDetector"

    .line 450
    const-string v2, "Moved from STATE_INACTIVE to STATE_ACTIVE."

    .line 452
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_10
    iput-object v6, v0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 457
    iput-object v6, v0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 459
    iget-object v1, v0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 461
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 464
    iget-object v1, v0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 466
    iget-object v2, v0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 468
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 471
    move-result-object v1

    .line 472
    iget-object v2, v0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 474
    const-wide/16 v5, 0x7530

    .line 476
    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 479
    iput-boolean v10, v0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 481
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V

    .line 484
    :cond_11
    monitor-exit v4

    .line 485
    goto/16 :goto_8

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

    .line 491
    if-eqz v4, :cond_13

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 496
    goto/16 :goto_8

    .line 498
    :cond_13
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 500
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 503
    invoke-virtual {v0, v9, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 506
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mIsLocationPrefetchEnabled:Z

    .line 508
    if-eqz v4, :cond_17

    .line 510
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 512
    iget-wide v11, v4, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 514
    invoke-virtual {v0, v11, v12}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 517
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mInjector:Lcom/android/server/DeviceIdleController$Injector;

    .line 519
    iget-object v7, v4, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 521
    if-nez v7, :cond_14

    .line 523
    iget-object v7, v4, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 525
    const-class v11, Landroid/location/LocationManager;

    .line 527
    invoke-virtual {v7, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 530
    move-result-object v7

    .line 531
    check-cast v7, Landroid/location/LocationManager;

    .line 533
    iput-object v7, v4, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 535
    :cond_14
    iget-object v11, v4, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 537
    if-eqz v11, :cond_15

    .line 539
    const-string/jumbo v4, "fused"

    .line 542
    invoke-virtual {v11, v4}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    .line 545
    move-result-object v4

    .line 546
    if-eqz v4, :cond_15

    .line 548
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasFusedLocation:Z

    .line 550
    const-string/jumbo v4, "fused"

    .line 553
    iget-object v7, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 555
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 558
    move-result-object v12

    .line 559
    iget-object v13, v0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Lcom/android/server/DeviceIdleController$6;

    .line 561
    invoke-virtual {v11, v4, v7, v12, v13}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 564
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 566
    goto :goto_6

    .line 567
    :cond_15
    iput-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mHasFusedLocation:Z

    .line 569
    :goto_6
    if-eqz v11, :cond_16

    .line 571
    const-string/jumbo v4, "gps"

    .line 574
    invoke-virtual {v11, v4}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    .line 577
    move-result-object v4

    .line 578
    if-eqz v4, :cond_16

    .line 580
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 582
    const-string/jumbo v12, "gps"

    .line 585
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Lcom/android/server/DeviceIdleController$6;

    .line 587
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 589
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 592
    move-result-object v17

    .line 593
    const-wide/16 v13, 0x3e8

    .line 595
    const/high16 v15, 0x40a00000    # 5.0f

    .line 597
    move-object/from16 v16, v3

    .line 599
    invoke-virtual/range {v11 .. v17}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 602
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 604
    goto :goto_7

    .line 605
    :cond_16
    iput-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 607
    :goto_7
    iget-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 609
    if-eqz v3, :cond_18

    .line 611
    goto/16 :goto_8

    .line 613
    :cond_17
    iput-boolean v3, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 615
    :cond_18
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 621
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 623
    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 626
    :pswitch_4
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 628
    iget-wide v10, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 630
    iput-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 632
    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 634
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 636
    :pswitch_5
    invoke-virtual {v0, v5, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

    .line 639
    iget-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 641
    invoke-virtual {v0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 644
    if-eqz v2, :cond_19

    .line 646
    const-string v1, "DeviceIdleController"

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    .line 650
    const-string v4, "Moved to STATE_IDLE. Next alarm in "

    .line 652
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 657
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 660
    const-string v4, " ms."

    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    move-result-object v3

    .line 669
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_19
    iget-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 674
    long-to-float v1, v3

    .line 675
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 677
    iget v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 679
    mul-float/2addr v1, v3

    .line 680
    float-to-long v3, v1

    .line 681
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 683
    if-eqz v2, :cond_1a

    .line 685
    const-string v1, "DeviceIdleController"

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    .line 689
    const-string v3, "Setting mNextIdleDelay = "

    .line 691
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    iget-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 696
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 699
    :cond_1a
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 701
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 703
    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 705
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 708
    move-result-wide v1

    .line 709
    iput-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 711
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 713
    iget-wide v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 715
    cmp-long v1, v1, v3

    .line 717
    if-gez v1, :cond_1b

    .line 719
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 721
    :cond_1b
    iget v1, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 723
    const/4 v2, 0x7

    .line 724
    if-eq v1, v2, :cond_1c

    .line 726
    const-string/jumbo v1, "deep"

    .line 729
    invoke-virtual {v0, v2, v1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 732
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 734
    const-wide/16 v3, 0x0

    .line 736
    cmp-long v1, v1, v3

    .line 738
    if-eqz v1, :cond_1c

    .line 740
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 742
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 744
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;

    .line 746
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 749
    :cond_1c
    invoke-virtual {v0, v9, v6}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 752
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 754
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 757
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 759
    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 762
    goto :goto_8

    .line 763
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 766
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 768
    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 770
    invoke-virtual {v0, v2, v3}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(J)V

    .line 773
    invoke-virtual {v0, v8, v1}, Lcom/android/server/DeviceIdleController;->moveToStateLocked(ILjava/lang/String;)V

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

    .line 3
    if-eqz v0, :cond_e

    .line 5
    const/4 v1, 0x7

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    goto/16 :goto_4

    .line 10
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 12
    const-string v1, "DeviceIdleController"

    .line 14
    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v2, "stepLightIdleStateLocked: mLightState="

    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 26
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    const v2, 0x84da

    .line 46
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 49
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 51
    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 53
    if-eqz v0, :cond_3

    .line 55
    const-string/jumbo v0, "stepLightIdleStateLocked called when emergency call is active"

    .line 58
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 63
    if-eqz v0, :cond_2

    .line 65
    const-string/jumbo v0, "emergency"

    .line 68
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 71
    move-result v1

    .line 72
    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 75
    :cond_2
    return-void

    .line 76
    :cond_3
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x3

    .line 80
    const/4 v1, 0x1

    .line 81
    const-wide/16 v2, 0x0

    .line 83
    const/4 v8, 0x4

    .line 84
    if-eq v0, v1, :cond_9

    .line 86
    const/4 v9, 0x6

    .line 87
    const/4 v10, 0x5

    .line 88
    if-eq v0, v8, :cond_4

    .line 90
    if-eq v0, v10, :cond_4

    .line 92
    if-eq v0, v9, :cond_a

    .line 94
    goto/16 :goto_4

    .line 96
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 98
    if-nez v2, :cond_6

    .line 100
    if-ne v0, v10, :cond_5

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 105
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 107
    const-wide/16 v6, 0x2

    .line 109
    div-long/2addr v3, v6

    .line 110
    const/4 v5, 0x1

    .line 111
    move-object v0, p0

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJZ)V

    .line 115
    invoke-virtual {p0, v10, p1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 118
    goto/16 :goto_4

    .line 120
    :cond_6
    :goto_0
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 122
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 124
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 130
    move-result-wide v0

    .line 131
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 133
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 135
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 137
    iget-wide v3, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 139
    cmp-long v5, v0, v3

    .line 141
    if-gez v5, :cond_7

    .line 143
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 145
    goto :goto_1

    .line 146
    :cond_7
    iget-wide v3, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 148
    cmp-long v0, v0, v3

    .line 150
    if-lez v0, :cond_8

    .line 152
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 154
    :cond_8
    :goto_1
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 156
    iget-wide v10, v2, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

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

    .line 165
    invoke-virtual {p0, v9, p1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 168
    invoke-virtual {p0, v7, v6}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 173
    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    goto/16 :goto_4

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 180
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 182
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 184
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 186
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 188
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 190
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 192
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 194
    :cond_a
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 196
    cmp-long v0, v0, v2

    .line 198
    if-eqz v0, :cond_c

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 203
    move-result-wide v0

    .line 204
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 206
    sub-long/2addr v0, v4

    .line 207
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 209
    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 211
    cmp-long v9, v0, v4

    .line 213
    if-gez v9, :cond_b

    .line 215
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 217
    sub-long/2addr v4, v0

    .line 218
    add-long/2addr v4, v9

    .line 219
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 221
    goto :goto_2

    .line 222
    :cond_b
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 224
    sub-long/2addr v0, v4

    .line 225
    sub-long/2addr v9, v0

    .line 226
    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 228
    :cond_c
    :goto_2
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 230
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 232
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 234
    const/4 v5, 0x0

    .line 235
    move-object v0, p0

    .line 236
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(JJZ)V

    .line 239
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 241
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 243
    if-nez v1, :cond_d

    .line 245
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 247
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 249
    long-to-float v3, v3

    .line 250
    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 252
    mul-float/2addr v3, v0

    .line 253
    float-to-long v3, v3

    .line 254
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 257
    move-result-wide v0

    .line 258
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 260
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 262
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 264
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 266
    long-to-float v3, v3

    .line 267
    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 269
    mul-float/2addr v3, v0

    .line 270
    float-to-long v3, v3

    .line 271
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 274
    move-result-wide v0

    .line 275
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 277
    goto :goto_3

    .line 278
    :cond_d
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 280
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 282
    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 284
    add-long/2addr v3, v9

    .line 285
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 288
    move-result-wide v0

    .line 289
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 291
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 293
    iget-wide v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 295
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 297
    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 299
    add-long/2addr v3, v9

    .line 300
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 303
    move-result-wide v0

    .line 304
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 306
    :goto_3
    invoke-virtual {p0, v8, p1}, Lcom/android/server/DeviceIdleController;->moveToLightStateLocked(ILjava/lang/String;)V

    .line 309
    const/4 v0, 0x2

    .line 310
    invoke-virtual {p0, v0, v6}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 315
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 318
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 320
    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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

    .line 4
    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 21
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 23
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 29
    iget v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    .line 31
    iget v5, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 33
    const/4 v6, 0x1

    .line 34
    if-ne v4, v5, :cond_0

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

    .line 41
    if-eq v4, v5, :cond_1

    .line 43
    invoke-virtual {p0, v2, v4}, Lcom/android/server/DeviceIdleController;->setConstraintMonitoringLocked(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 46
    iput-boolean v4, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 48
    :cond_1
    iget-boolean v2, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->monitoring:Z

    .line 50
    if-eqz v2, :cond_2

    .line 52
    iget-boolean v2, v3, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 54
    if-eqz v2, :cond_2

    .line 56
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 58
    add-int/2addr v2, v6

    .line 59
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mNumBlockingConstraints:I

    .line 61
    :cond_2
    add-int/lit8 v1, v1, 0x1

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "updateChargingLocked: charging="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "DeviceIdleController"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 27
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 29
    if-eqz v0, :cond_1

    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 34
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 36
    if-nez p1, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eqz p1, :cond_2

    .line 44
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 46
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 48
    if-nez p1, :cond_2

    .line 50
    const-string/jumbo p1, "charging"

    .line 53
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

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

    .line 4
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 10
    const-class v2, Landroid/net/ConnectivityManager;

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 18
    iput-object v1, v0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 20
    :cond_0
    iget-object v0, v0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    if-nez v0, :cond_1

    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 29
    move-result-object v0

    .line 30
    monitor-enter p0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-nez p1, :cond_3

    .line 37
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

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

    .line 47
    const/4 v3, -0x1

    .line 48
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 55
    move-result v0

    .line 56
    if-eq v0, v2, :cond_4

    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :cond_4
    const-string/jumbo v0, "noConnectivity"

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 66
    move-result p1

    .line 67
    xor-int/lit8 v1, p1, 0x1

    .line 69
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 71
    if-eq v1, p1, :cond_5

    .line 73
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 75
    if-eqz v1, :cond_5

    .line 77
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 79
    const/4 v0, 0x5

    .line 80
    if-ne p1, v0, :cond_5

    .line 82
    const-string/jumbo p1, "network"

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

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

    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 6
    move-result v0

    .line 7
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const-string/jumbo v1, "updateInteractivityLocked: screenOn="

    .line 14
    const-string v2, "DeviceIdleController"

    .line 16
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    :cond_0
    if-nez v0, :cond_1

    .line 21
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 23
    if-eqz v1, :cond_1

    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 28
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 30
    if-nez v0, :cond_3

    .line 32
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-eqz v0, :cond_3

    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 41
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 43
    if-nez v0, :cond_3

    .line 45
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 47
    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 51
    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 53
    if-nez v0, :cond_3

    .line 55
    :cond_2
    const-string/jumbo v0, "screen"

    .line 58
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0, v1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

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

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 10
    array-length v2, v2

    .line 11
    if-eq v2, v1, :cond_0

    .line 13
    new-array v2, v1, [I

    .line 15
    iput-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 22
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    move-result v4

    .line 28
    aput v4, v3, v2

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 35
    const-string v2, "DeviceIdleController"

    .line 37
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 39
    if-eqz v1, :cond_3

    .line 41
    if-eqz v3, :cond_2

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    const-string v4, "Setting activity manager temp whitelist to "

    .line 47
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 52
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 68
    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 70
    move v6, p1

    .line 71
    move/from16 v7, p5

    .line 73
    move-wide/from16 v8, p2

    .line 75
    move/from16 v10, p4

    .line 77
    move/from16 v11, p6

    .line 79
    move-object/from16 v12, p7

    .line 81
    move/from16 v13, p8

    .line 83
    invoke-virtual/range {v4 .. v13}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V

    .line 86
    :cond_3
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 88
    if-eqz v1, :cond_5

    .line 90
    if-eqz v3, :cond_4

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    const-string v3, "Setting wakelock temp whitelist to "

    .line 96
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 101
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_4
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 117
    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 119
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 125
    return-void
.end method

.method public final updateWhitelistAppIdsLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 5
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 13
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 15
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 17
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 19
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 25
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 27
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 36
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 38
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 42
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleAllowlist([I[I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 49
    if-eqz v0, :cond_2

    .line 51
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 53
    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "Setting wakelock whitelist to "

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    const-string v1, "DeviceIdleController"

    .line 77
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 82
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

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
