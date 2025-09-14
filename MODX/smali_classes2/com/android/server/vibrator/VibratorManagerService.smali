.class public Lcom/android/server/vibrator/VibratorManagerService;
.super Landroid/os/IVibratorManagerService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mAlwaysOnEffects:Landroid/util/SparseArray;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field public final mCapabilities:J

.field public mCombinedVibratorInfo:Landroid/os/VibratorInfo;

.field public mComposed:Landroid/os/VibrationEffect$Composed;

.field public final mContext:Landroid/content/Context;

.field public mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

.field public mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field public final mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field public mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

.field public final mHandler:Landroid/os/Handler;

.field public mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

.field public mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

.field public final mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

.field public final mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

.field public final mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

.field public final mIntentReceiver:Lcom/android/server/vibrator/VibratorManagerService$1;

.field public final mLock:Ljava/lang/Object;

.field public mMotorTypeSetFlag:Z

.field public final mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

.field public mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mSamsungReceiver:Lcom/android/server/vibrator/VibratorManagerService$1;

.field public mServiceReady:Z

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field public final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

.field public final mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

.field public final mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

.field public final mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

.field public final mVibratorIds:[I

.field public final mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

.field public final mVibrators:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mreportFinishedVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Reporting vibration "

    .line 5
    .line 6
    const-string/jumbo v1, "reportFinishVibrationLocked"

    .line 7
    .line 8
    .line 9
    const-wide/32 v2, 0x800000

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "vibration"

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 25
    .line 26
    const-string v5, "VibratorManagerService"

    .line 27
    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-wide v7, v1, Lcom/android/server/vibrator/Vibration;->id:J

    .line 34
    .line 35
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " finished with "

    .line 39
    .line 40
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 54
    .line 55
    .line 56
    iget-object p1, v1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 59
    .line 60
    iget v0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 63
    .line 64
    const/4 v1, 0x3

    .line 65
    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public static -$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 16
    .line 17
    iget-wide v2, p1, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 23
    .line 24
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/os/PowerManagerInternal;->getLastGoToSleep()Landroid/os/PowerManager$SleepData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-wide v4, p1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    .line 32
    .line 33
    cmp-long v2, v4, v2

    .line 34
    .line 35
    if-ltz v2, :cond_1

    .line 36
    .line 37
    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    .line 38
    .line 39
    iget v3, p1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v2, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    :cond_1
    const-string p0, "VibrationSettings"

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "Ignoring screen off event triggered at uptime "

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-wide v2, p1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " for reason "

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget p1, p1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 73
    .line 74
    invoke-static {p1}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    sget-object p1, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 90
    .line 91
    iget-object v2, v1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast p1, Ljava/util/HashSet;

    .line 102
    .line 103
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    const/4 v2, 0x1

    .line 108
    if-nez p1, :cond_3

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    iget p1, v1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 112
    .line 113
    const/16 v3, 0x3e8

    .line 114
    .line 115
    if-eq p1, v3, :cond_4

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    .line 120
    .line 121
    iget-object p1, v1, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-nez p0, :cond_4

    .line 128
    .line 129
    :goto_0
    move v0, v2

    .line 130
    :cond_4
    :goto_1
    return v0

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/os/IVibratorManagerService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v7, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 12
    .line 13
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p0, v7, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 19
    .line 20
    new-instance v0, Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$1;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Lcom/android/server/vibrator/VibratorManagerService$1;

    .line 34
    .line 35
    new-instance v0, Lcom/samsung/android/server/vibrator/VibratorHqmData;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, v0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$1;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;I)V

    .line 53
    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    iput-boolean v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mMotorTypeSetFlag:Z

    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

    .line 61
    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance p2, Landroid/os/Handler;

    .line 70
    .line 71
    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    .line 73
    .line 74
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 75
    .line 76
    new-instance v5, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 77
    .line 78
    const/16 v1, 0xa

    .line 79
    .line 80
    const/16 v2, 0x12c

    .line 81
    .line 82
    invoke-direct {v5, p2, v1, v2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;-><init>(Landroid/os/Handler;II)V

    .line 83
    .line 84
    .line 85
    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 86
    .line 87
    new-instance v4, Lcom/android/server/vibrator/VibrationSettings;

    .line 88
    .line 89
    new-instance v1, Landroid/os/vibrator/VibrationConfig;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-direct {v1, v2}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v4, p1, p2, v1, p0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 99
    .line 100
    .line 101
    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 102
    .line 103
    sget-object v1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 104
    .line 105
    if-nez v1, :cond_0

    .line 106
    .line 107
    new-instance v1, Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 108
    .line 109
    invoke-direct {v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;-><init>()V

    .line 110
    .line 111
    .line 112
    sput-object v1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 113
    .line 114
    :cond_0
    sget-object v1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 115
    .line 116
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 117
    .line 118
    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 119
    .line 120
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 121
    .line 122
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 123
    .line 124
    const-string v9, "com.sec.media.action.VIBRTOR_LOGGING"

    .line 125
    .line 126
    const-string v10, "com.android.launcher3.quickstep.closeall"

    .line 127
    .line 128
    invoke-static {v1, v2, v3, v9, v10}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const/4 v9, 0x4

    .line 133
    invoke-virtual {p1, v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerInternal;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 142
    .line 143
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    const-class v1, Lcom/android/server/vibrator/VibratorManagerInternal;

    .line 147
    .line 148
    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    new-instance v3, Lcom/android/server/vibrator/VibrationScaler;

    .line 152
    .line 153
    invoke-direct {v3, p1, v4}, Lcom/android/server/vibrator/VibrationScaler;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V

    .line 154
    .line 155
    .line 156
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 157
    .line 158
    new-instance v10, Lcom/android/server/vibrator/VibratorControlService;

    .line 159
    .line 160
    new-instance v2, Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 161
    .line 162
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 163
    .line 164
    .line 165
    move-object v0, v10

    .line 166
    move-object v1, p1

    .line 167
    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorControlService;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorControllerHolder;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iput-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    .line 171
    .line 172
    new-instance v0, Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 173
    .line 174
    invoke-direct {v0, p1, p2}, Lcom/android/server/vibrator/InputDeviceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 175
    .line 176
    .line 177
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 178
    .line 179
    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 180
    .line 181
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 185
    .line 186
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iput-object v0, p2, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 190
    .line 191
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 192
    .line 193
    invoke-direct {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 197
    .line 198
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->init(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const v2, 0x10e011c

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    const v3, 0x10e0118

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    const v4, 0x10e0117

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 235
    .line 236
    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;-><init>(III)V

    .line 237
    .line 238
    .line 239
    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 240
    .line 241
    const-string v1, "batterystats"

    .line 242
    .line 243
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 252
    .line 253
    const-class v1, Landroid/app/AppOpsManager;

    .line 254
    .line 255
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Landroid/app/AppOpsManager;

    .line 260
    .line 261
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 262
    .line 263
    const-class v1, Landroid/os/PowerManager;

    .line 264
    .line 265
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Landroid/os/PowerManager;

    .line 270
    .line 271
    const-string v2, "*vibrator*"

    .line 272
    .line 273
    const/4 v3, 0x1

    .line 274
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 279
    .line 280
    .line 281
    new-instance v2, Lcom/android/server/vibrator/VibrationThread;

    .line 282
    .line 283
    invoke-direct {v2, v1, v7}, Lcom/android/server/vibrator/VibrationThread;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;)V

    .line 284
    .line 285
    .line 286
    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 289
    .line 290
    .line 291
    iget-wide v1, v0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 292
    .line 293
    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetCapabilities(J)J

    .line 294
    .line 295
    .line 296
    move-result-wide v1

    .line 297
    iput-wide v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    .line 298
    .line 299
    iget-wide v0, v0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 300
    .line 301
    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetVibratorIds(J)[I

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-nez v0, :cond_1

    .line 306
    .line 307
    new-array p2, v8, [I

    .line 308
    .line 309
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 310
    .line 311
    new-instance p2, Landroid/util/SparseArray;

    .line 312
    .line 313
    invoke-direct {p2, v8}, Landroid/util/SparseArray;-><init>(I)V

    .line 314
    .line 315
    .line 316
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_1
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 320
    .line 321
    new-instance v1, Landroid/util/SparseArray;

    .line 322
    .line 323
    array-length v2, v0

    .line 324
    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 325
    .line 326
    .line 327
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 328
    .line 329
    array-length v1, v0

    .line 330
    move v2, v8

    .line 331
    :goto_0
    if-ge v2, v1, :cond_2

    .line 332
    .line 333
    aget v3, v0, v2

    .line 334
    .line 335
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 336
    .line 337
    new-instance v5, Lcom/android/server/vibrator/VibratorController;

    .line 338
    .line 339
    new-instance v6, Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 340
    .line 341
    invoke-direct {v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-direct {v5, v3, p2, v6}, Lcom/android/server/vibrator/VibratorController;-><init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    add-int/lit8 v2, v2, 0x1

    .line 351
    .line 352
    goto :goto_0

    .line 353
    :cond_2
    :goto_1
    new-instance p2, Lcom/android/server/vibrator/DeviceAdapter;

    .line 354
    .line 355
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 356
    .line 357
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 358
    .line 359
    invoke-direct {p2, v0, v1}, Lcom/android/server/vibrator/DeviceAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V

    .line 360
    .line 361
    .line 362
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 363
    .line 364
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 365
    .line 366
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    .line 367
    .line 368
    .line 369
    move p2, v8

    .line 370
    :goto_2
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 371
    .line 372
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-ge p2, v0, :cond_3

    .line 377
    .line 378
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 379
    .line 380
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 385
    .line 386
    invoke-virtual {v0, v8}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->off()V

    .line 390
    .line 391
    .line 392
    add-int/lit8 p2, p2, 0x1

    .line 393
    .line 394
    goto :goto_2

    .line 395
    :cond_3
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 396
    .line 397
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 398
    .line 399
    .line 400
    move-result-object p2

    .line 401
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Lcom/android/server/vibrator/VibratorManagerService$1;

    .line 402
    .line 403
    invoke-virtual {p1, v0, p2, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 404
    .line 405
    .line 406
    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    .line 407
    .line 408
    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 409
    .line 410
    .line 411
    const-string p2, "external_vibrator_service"

    .line 412
    .line 413
    invoke-static {p2, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 414
    .line 415
    .line 416
    const-string p1, "android.frameworks.vibrator.IVibratorControlService/default"

    .line 417
    .line 418
    invoke-static {p1}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 419
    .line 420
    .line 421
    move-result p2

    .line 422
    if-eqz p2, :cond_4

    .line 423
    .line 424
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    .line 425
    .line 426
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 427
    .line 428
    .line 429
    :cond_4
    return-void
.end method

.method public static getVibrationImportance(Lcom/android/server/vibrator/Vibration;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x21

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v0, 0x12

    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    const/4 p0, 0x6

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    const/4 v2, 0x3

    .line 32
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 33
    .line 34
    if-eq v0, v1, :cond_5

    .line 35
    .line 36
    const/16 v1, 0x22

    .line 37
    .line 38
    if-eq v0, v1, :cond_4

    .line 39
    .line 40
    const/16 v1, 0x31

    .line 41
    .line 42
    if-eq v0, v1, :cond_3

    .line 43
    .line 44
    const/16 p0, 0x32

    .line 45
    .line 46
    if-eq v0, p0, :cond_4

    .line 47
    .line 48
    const/16 p0, 0x41

    .line 49
    .line 50
    if-eq v0, p0, :cond_4

    .line 51
    .line 52
    const/16 p0, 0x42

    .line 53
    .line 54
    if-eq v0, p0, :cond_4

    .line 55
    .line 56
    packed-switch v0, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    goto :goto_2

    .line 61
    :pswitch_0
    const/4 p0, 0x4

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 64
    .line 65
    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 66
    .line 67
    const-string v0, "com.nttdocomo.android.phonemotion"

    .line 68
    .line 69
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    const/4 p0, 0x7

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    :goto_1
    :pswitch_1
    move p0, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 80
    .line 81
    const-string v1, "android"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 90
    .line 91
    const-string v0, "VIBRATE_CALL"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_6

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    const/4 p0, 0x5

    .line 101
    :goto_2
    return p0

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static native nativeCancelSynced(J)V
.end method

.method public static native nativeGetCapabilities(J)J
.end method

.method public static native nativeGetFinalizer()J
.end method

.method public static native nativeGetVibratorIds(J)[I
.end method

.method public static native nativeInit(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)J
.end method

.method public static native nativePrepareSynced(J[I)Z
.end method

.method public static native nativeTriggerSynced(JJ)Z
.end method

.method public static shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    if-ne p1, p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :cond_1
    :goto_0
    return v1

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    and-int/2addr p1, v0

    .line 22
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-ne p1, p0, :cond_3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    move v1, v2

    .line 30
    :goto_1
    return v1
.end method

.method public static shouldIgnoreVibrationForOngoing(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getVibrationImportance(Lcom/android/server/vibrator/Vibration;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->getVibrationImportance(Lcom/android/server/vibrator/Vibration;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    iget-object v3, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 14
    .line 15
    if-le v1, v0, :cond_1

    .line 16
    .line 17
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 18
    .line 19
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/Vibration$Status;

    .line 20
    .line 21
    invoke-direct {p0, p1, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 38
    .line 39
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    .line 40
    .line 41
    invoke-direct {p0, p1, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    return-object v2
.end method


# virtual methods
.method public final addCustomDump()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\nVibrator information\n  Motor type : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedMotorType()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getMotorTypeToString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "\n  Motor group : "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedVibratorGroup()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v1, v2, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq v1, v2, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    const-string v1, "SEM_SUPPORTED_VIBRATION_NONE"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v1, "SEM_SUPPORTED_VIBRATION_TYPE_D"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "SEM_SUPPORTED_VIBRATION_TYPE_C"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v1, "SEM_SUPPORTED_VIBRATION_TYPE_B"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const-string v1, "SEM_SUPPORTED_VIBRATION_TYPE_A"

    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "\n    prebakedHapticPattern : "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 78
    .line 79
    iget-boolean v1, v1, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move v1, v2

    .line 83
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, "\n    hapticEngine : "

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 106
    .line 107
    iget-boolean v1, v1, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    move v1, v2

    .line 111
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, "\n    enhancedSamsungHapticPattern : "

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 134
    .line 135
    iget-boolean v1, v1, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    move v1, v2

    .line 139
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, "\n    intensityControl : "

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_7

    .line 154
    .line 155
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 162
    .line 163
    iget-boolean v1, v1, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_7
    move v1, v2

    .line 167
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, "\n    indexWideBand : "

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    if-eqz v1, :cond_8

    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 190
    .line 191
    iget-boolean v2, v1, Lcom/android/server/vibrator/VibratorController;->mSupportIndexWideBand:Z

    .line 192
    .line 193
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, "\n  SUPPORT_ACH : "

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, "\n\n"

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 212
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v2, "VibrationSettings information\n  mIsHapticSupported = "

    .line 216
    .line 217
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 221
    .line 222
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v2, "\n  mIsEnableIntensity = "

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v2, "\n  mCallMagnitude = "

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v2, "\n  mNotiMagnitude = "

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v2, "\n  mTouchMagnitude = "

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v2, "\n  mMediaMagnitude = "

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v2, "\n  mForceMagnitude = "

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mForceMagnitude:I

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v2, "\n  LEVEL_TO_MAGNITUDE = "

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    .line 293
    .line 294
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v2, "\n  LEVEL_TO_TOUCH_MAGNITUDE = "

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    .line 307
    .line 308
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string p0, "\n"

    .line 316
    .line 317
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    return-object p0
.end method

.method public final cancelCurrentVibration()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/Vibration$Status;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v3, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 9
    .line 10
    invoke-direct {v3, v0, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1, v3}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationAndWriteStatsLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/ExternalVibration;->mute()Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0, v3, v1}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 38
    .line 39
    invoke-direct {v1, v0, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final cancelVibrate(ILandroid/os/IBinder;)V
    .locals 9

    .line 1
    const-string v0, "cancelVibrate"

    .line 2
    .line 3
    const-wide/32 v1, 0x800000

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v3, "android.permission.VIBRATE"

    .line 12
    .line 13
    const-string v4, "cancelVibrate"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21
    :try_start_1
    const-string v3, "VibratorManagerService"

    .line 22
    .line 23
    const-string v4, "Canceling vibration"

    .line 24
    .line 25
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 29
    .line 30
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v3, v4, v5}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :try_start_2
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 41
    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 45
    .line 46
    iget-object v7, v6, Lcom/android/server/vibrator/Vibration;->callerToken:Landroid/os/IBinder;

    .line 47
    .line 48
    if-ne v7, p2, :cond_0

    .line 49
    .line 50
    iget-object v6, v6, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 51
    .line 52
    iget-object v6, v6, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 53
    .line 54
    invoke-static {v6, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    if-eqz v6, :cond_1

    .line 70
    .line 71
    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 72
    .line 73
    iget-object v8, v6, Lcom/android/server/vibrator/Vibration;->callerToken:Landroid/os/IBinder;

    .line 74
    .line 75
    if-ne v8, p2, :cond_1

    .line 76
    .line 77
    iget-object p2, v6, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 78
    .line 79
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 80
    .line 81
    invoke-static {p2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_1

    .line 86
    .line 87
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 88
    .line 89
    invoke-virtual {p2, v3, v7}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 93
    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    iget-object p2, p2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {p2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    const-string p0, "VibratorManagerService"

    .line 119
    .line 120
    const-string p1, "Keeping repeating external vibration"

    .line 121
    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .line 124
    .line 125
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    :try_start_4
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->mute()Z

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v3, v7}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    .line 144
    .line 145
    :cond_3
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :goto_1
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 159
    :catchall_2
    move-exception p0

    .line 160
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 161
    .line 162
    .line 163
    throw p0
.end method

.method public final clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Dropping pending vibration "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 15
    .line 16
    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " with end info: "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "VibratorManagerService"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationStepConductor;
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/vibrator/Flags;->adaptiveHapticsEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 11
    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_7

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v4

    .line 33
    :try_start_0
    iget-object v5, v0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 34
    .line 35
    iget-object v5, v5, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 36
    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    monitor-exit v4

    .line 40
    const/4 v0, 0x0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorControlService;->mRequestVibrationParamsForUsages:[I

    .line 46
    .line 47
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_0
    if-eqz v0, :cond_7

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    .line 55
    .line 56
    iget-object v3, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 57
    .line 58
    iget v4, v3, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 59
    .line 60
    iget-object v3, v3, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 67
    .line 68
    iget-object v5, v5, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 69
    .line 70
    invoke-virtual {v5}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsTimeoutMs()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    const-string v6, "Unable to request vibration params. The provided usage "

    .line 75
    .line 76
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 77
    .line 78
    monitor-enter v7

    .line 79
    :try_start_1
    iget-object v8, v0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 80
    .line 81
    iget-object v8, v8, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 82
    .line 83
    if-nez v8, :cond_1

    .line 84
    .line 85
    const-string v0, "VibratorControlService"

    .line 86
    .line 87
    const-string v2, "Unable to request vibration params. There is no registered IVibrationController."

    .line 88
    .line 89
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    monitor-exit v7

    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :catchall_1
    move-exception p0

    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_1
    const/4 v9, -0x1

    .line 99
    const/4 v10, 0x1

    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    const/16 v11, 0x21

    .line 103
    .line 104
    if-eq v3, v11, :cond_4

    .line 105
    .line 106
    const/16 v11, 0x22

    .line 107
    .line 108
    if-eq v3, v11, :cond_3

    .line 109
    .line 110
    const/16 v11, 0x31

    .line 111
    .line 112
    if-eq v3, v11, :cond_2

    .line 113
    .line 114
    const/16 v11, 0x32

    .line 115
    .line 116
    if-eq v3, v11, :cond_3

    .line 117
    .line 118
    const/16 v11, 0x41

    .line 119
    .line 120
    if-eq v3, v11, :cond_2

    .line 121
    .line 122
    const/16 v11, 0x42

    .line 123
    .line 124
    if-eq v3, v11, :cond_3

    .line 125
    .line 126
    packed-switch v3, :pswitch_data_0

    .line 127
    .line 128
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v11, "Unrecognized vibration usage "

    .line 132
    .line 133
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const-string v11, "VibratorControlService"

    .line 144
    .line 145
    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move v2, v9

    .line 149
    goto :goto_1

    .line 150
    :pswitch_0
    move v2, v10

    .line 151
    goto :goto_1

    .line 152
    :cond_2
    const/4 v2, 0x2

    .line 153
    goto :goto_1

    .line 154
    :cond_3
    :pswitch_1
    const/16 v2, 0x8

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    const/4 v2, 0x4

    .line 158
    :cond_5
    :goto_1
    :pswitch_2
    if-ne v2, v9, :cond_6

    .line 159
    .line 160
    const-string v0, "VibratorControlService"

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v3, " is unrecognized."

    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    goto :goto_2

    .line 184
    :cond_6
    :try_start_2
    invoke-virtual {v0, v10}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 185
    .line 186
    .line 187
    new-instance v3, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 188
    .line 189
    invoke-direct {v3, v4}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;-><init>(I)V

    .line 190
    .line 191
    .line 192
    iput-object v3, v0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 193
    .line 194
    int-to-long v4, v5

    .line 195
    iget-object v3, v3, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    .line 196
    .line 197
    check-cast v8, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 198
    .line 199
    invoke-virtual {v8, v3, v4, v5, v2}, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->requestVibrationParams(Landroid/os/IBinder;JI)V

    .line 200
    .line 201
    .line 202
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 203
    .line 204
    iget-object v1, v2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    .line 206
    :try_start_3
    monitor-exit v7

    .line 207
    goto :goto_2

    .line 208
    :catch_0
    move-exception v2

    .line 209
    const-string v3, "VibratorControlService"

    .line 210
    .line 211
    const-string v4, "Failed to request vibration params."

    .line 212
    .line 213
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v10}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    .line 217
    .line 218
    .line 219
    monitor-exit v7

    .line 220
    :cond_7
    :goto_2
    move-object v11, v1

    .line 221
    goto :goto_5

    .line 222
    :goto_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    throw p0

    .line 224
    :goto_4
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    throw p0

    .line 226
    :goto_5
    new-instance v0, Lcom/android/server/vibrator/VibrationStepConductor;

    .line 227
    .line 228
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 229
    .line 230
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 231
    .line 232
    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 233
    .line 234
    iget-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 235
    .line 236
    iget-object v12, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 237
    .line 238
    move-object v5, v0

    .line 239
    move-object v6, p1

    .line 240
    invoke-direct/range {v5 .. v12}, Lcom/android/server/vibrator/VibrationStepConductor;-><init>(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceAdapter;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/util/concurrent/CompletableFuture;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;)V

    .line 241
    .line 242
    .line 243
    return-object v0

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "VibratorManagerService"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    array-length v2, p3

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    .line 21
    aget-object v5, p3, v3

    .line 22
    .line 23
    const-string v6, "--proto"

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-eqz v4, :cond_3

    .line 36
    .line 37
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->dumpText(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "VibratorManagerService"

    .line 7
    .line 8
    const-string v1, "Dumping vibrator manager service to proto..."

    .line 9
    .line 10
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 22
    .line 23
    iget v1, v1, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    .line 24
    .line 25
    const-wide v2, 0x1050000001aL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/server/vibrator/HalVibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-wide v2, 0x10b00000002L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-wide v2, 0x10b00000004L

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 69
    .line 70
    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    move v2, v1

    .line 73
    move v3, v2

    .line 74
    move v4, v3

    .line 75
    :goto_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-ge v2, v5, :cond_2

    .line 82
    .line 83
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    const-wide v6, 0x20500000001L

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 95
    .line 96
    .line 97
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    .line 104
    .line 105
    iget-boolean v5, v5, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 106
    .line 107
    or-int/2addr v3, v5

    .line 108
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 109
    .line 110
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    .line 115
    .line 116
    iget-boolean v5, v5, Lcom/android/server/vibrator/VibratorController;->mIsUnderExternalControl:Z

    .line 117
    .line 118
    or-int/2addr v4, v5

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    const-wide v5, 0x10800000003L

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 128
    .line 129
    .line 130
    const-wide v2, 0x10800000005L

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 136
    .line 137
    .line 138
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 140
    .line 141
    monitor-enter p1

    .line 142
    :try_start_1
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 145
    .line 146
    .line 147
    monitor-exit p1

    .line 148
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 151
    .line 152
    monitor-enter v2

    .line 153
    :try_start_2
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 156
    .line 157
    if-eqz p1, :cond_3

    .line 158
    .line 159
    const/4 v1, 0x1

    .line 160
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    const-wide v2, 0x1050000001bL

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 167
    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :catchall_1
    move-exception p0

    .line 179
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    throw p0

    .line 181
    :catchall_2
    move-exception p0

    .line 182
    monitor-exit p1

    .line 183
    throw p0

    .line 184
    :goto_2
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    throw p0
.end method

.method public final dumpText(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string v0, "VibratorManagerService"

    .line 2
    .line 3
    const-string v1, "Dumping vibrator manager service to text..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 9
    .line 10
    const-string v1, "  "

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    const-string v1, "VibratorManagerService:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationScaler;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 40
    .line 41
    .line 42
    const-string v1, "Vibrators:"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    move v2, v1

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-ge v2, v3, :cond_0

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Lcom/android/server/vibrator/VibratorController;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 81
    .line 82
    .line 83
    const-string v2, "CurrentVibration:"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 92
    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    iget-object v2, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/android/server/vibrator/HalVibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    const-string/jumbo v2, "null"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 115
    .line 116
    .line 117
    const-string v2, "NextVibration:"

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 126
    .line 127
    if-eqz v2, :cond_2

    .line 128
    .line 129
    iget-object v2, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/android/server/vibrator/HalVibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    const-string/jumbo v2, "null"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 149
    .line 150
    .line 151
    const-string v2, "CurrentExternalVibration:"

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 160
    .line 161
    if-eqz v2, :cond_3

    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_3
    const-string/jumbo v2, "null"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_3
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 178
    .line 179
    .line 180
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 188
    .line 189
    monitor-enter p1

    .line 190
    :try_start_1
    const-string v2, "Recent vibrations:"

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 196
    .line 197
    .line 198
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 199
    .line 200
    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 210
    .line 211
    .line 212
    const-string v2, "Aggregated vibration history:"

    .line 213
    .line 214
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 218
    .line 219
    .line 220
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 221
    .line 222
    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 226
    .line 227
    .line 228
    monitor-exit p1

    .line 229
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 233
    .line 234
    .line 235
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    .line 236
    .line 237
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    .line 238
    .line 239
    monitor-enter v2

    .line 240
    :try_start_2
    iget-object v3, p1, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    .line 241
    .line 242
    iget-object v3, v3, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 243
    .line 244
    const/4 v4, 0x1

    .line 245
    if-eqz v3, :cond_4

    .line 246
    .line 247
    move v3, v4

    .line 248
    goto :goto_4

    .line 249
    :cond_4
    move v3, v1

    .line 250
    :goto_4
    iget-object v5, p1, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    .line 251
    .line 252
    if-eqz v5, :cond_5

    .line 253
    .line 254
    move v1, v4

    .line 255
    :cond_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 256
    const-string v2, "VibratorControlService:"

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 262
    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v4, "isVibratorControllerRegistered = "

    .line 267
    .line 268
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v3, "hasPendingVibrationParamsRequest = "

    .line 284
    .line 285
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 299
    .line 300
    .line 301
    const-string v1, "Vibration parameters update history:"

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 307
    .line 308
    .line 309
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->addCustomDump()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :catchall_1
    move-exception p0

    .line 329
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 330
    throw p0

    .line 331
    :catchall_2
    move-exception p0

    .line 332
    monitor-exit p1

    .line 333
    throw p0

    .line 334
    :goto_5
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 335
    throw p0
.end method

.method public final endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V
    .locals 4

    .line 1
    const-wide/32 v0, 0x800000

    .line 2
    .line 3
    .line 4
    const-string v2, "endExternalVibrateLocked"

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    iget-object v3, v2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 20
    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 25
    .line 26
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, v2, p2}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 36
    .line 37
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationAndWriteStatsLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final endVibrationAndWriteStatsLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p2, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    .line 9
    .line 10
    iput-object v0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibrationStats;->reportEnded(Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 17
    .line 18
    .line 19
    iget-wide v1, v0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    cmp-long p2, v1, v3

    .line 24
    .line 25
    if-lez p2, :cond_1

    .line 26
    .line 27
    iget-wide v5, v0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    .line 28
    .line 29
    sub-long/2addr v5, v1

    .line 30
    iget p2, v0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    .line 31
    .line 32
    add-int/lit8 p2, p2, 0x1

    .line 33
    .line 34
    iput p2, v0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    .line 35
    .line 36
    cmp-long p2, v5, v3

    .line 37
    .line 38
    if-lez p2, :cond_1

    .line 39
    .line 40
    iget p2, v0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 41
    .line 42
    long-to-int v1, v5

    .line 43
    add-int/2addr p2, v1

    .line 44
    iput p2, v0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 45
    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/Vibration$DebugInfo;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    new-instance p2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    .line 60
    .line 61
    iget-object v0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getUid()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget-object v0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iget-object v4, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 78
    .line 79
    iget-object v5, p1, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 80
    .line 81
    const/4 v2, 0x3

    .line 82
    move-object v0, p2

    .line 83
    invoke-direct/range {v0 .. v7}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;-><init>(IIILcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->writeVibrationReportedAsync(Lcom/android/server/vibrator/VibrationStats$StatsInfo;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final endVibrationLocked(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/Vibration$EndInfo;Z)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p2, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    .line 9
    .line 10
    iput-object v0, p1, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibrationStats;->reportEnded(Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p1, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/HalVibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/Vibration$DebugInfo;)V

    .line 29
    .line 30
    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    invoke-virtual {p1}, Lcom/android/server/vibrator/HalVibration;->isRepeating()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    const/4 p2, 0x2

    .line 46
    :goto_1
    move v2, p2

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const/4 p2, 0x1

    .line 49
    goto :goto_1

    .line 50
    :goto_2
    new-instance p2, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    .line 51
    .line 52
    iget-object p3, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 53
    .line 54
    iget v1, p3, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 55
    .line 56
    iget-object p3, p3, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget-object v4, p1, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 63
    .line 64
    iget-object v5, p1, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 65
    .line 66
    move-object v0, p2

    .line 67
    invoke-direct/range {v0 .. v7}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;-><init>(IIILcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->writeVibrationReportedAsync(Lcom/android/server/vibrator/VibrationStats$StatsInfo;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public final executeVibrationDebugCommand(Lcom/samsung/android/vibrator/VibrationDebugInfo;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/vibrator/VibrationDebugInfo;->getCommand()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, -0x1

    .line 9
    const-string v3, "fail"

    .line 10
    .line 11
    if-eq v0, v1, :cond_6

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const-string/jumbo v4, "success"

    .line 15
    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mChangedPatternHash:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 61
    .line 62
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mChangedPatternHash:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 69
    .line 70
    .line 71
    return-object v4

    .line 72
    :cond_2
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/vibrator/VibrationDebugInfo;->getDuration()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 79
    .line 80
    if-eq v0, v2, :cond_5

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->copyPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mChangedPatternHash:Ljava/util/HashMap;

    .line 90
    .line 91
    iget v2, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 92
    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-nez v1, :cond_4

    .line 102
    .line 103
    iget-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mChangedPatternHash:Ljava/util/HashMap;

    .line 104
    .line 105
    iget v2, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_4
    iget v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->copyPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    .line 121
    .line 122
    iget-object p1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 123
    .line 124
    iget p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 125
    .line 126
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-object v3, v4

    .line 134
    :cond_5
    :goto_1
    return-object v3

    .line 135
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/vibrator/VibrationDebugInfo;->getIndex()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const v1, 0xc368

    .line 140
    .line 141
    .line 142
    add-int/2addr v0, v1

    .line 143
    invoke-static {v0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/samsung/android/vibrator/VibrationDebugInfo;->getIndex()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    iput p1, v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 158
    .line 159
    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 160
    .line 161
    if-eq p1, v2, :cond_8

    .line 162
    .line 163
    iget-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_7

    .line 174
    .line 175
    iget-object p1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 176
    .line 177
    iget v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 178
    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lcom/samsung/android/server/vibrator/PatternInfo;

    .line 188
    .line 189
    iget p1, p1, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_7
    const/16 p1, 0x1388

    .line 193
    .line 194
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v2, "Sep index : "

    .line 197
    .line 198
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget v2, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 202
    .line 203
    add-int/2addr v2, v1

    .line 204
    invoke-static {v2}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->getPatternTitle(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v1, "("

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    .line 217
    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p0, ")\nduration : "

    .line 222
    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    :cond_8
    return-object v3

    .line 234
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->addCustomDump()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    return-object p0
.end method

.method public final fillVibrationFallbacks(Lcom/android/server/vibrator/HalVibration;Landroid/os/CombinedVibration;)V
    .locals 2

    .line 1
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/HalVibration;Landroid/os/VibrationEffect;)V

    goto :goto_2

    .line 3
    :cond_0
    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Landroid/os/CombinedVibration$Stereo;

    .line 5
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p2

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/HalVibration;Landroid/os/VibrationEffect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    instance-of v0, p2, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_2

    .line 9
    check-cast p2, Landroid/os/CombinedVibration$Sequential;

    .line 10
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object p2

    .line 11
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 12
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/HalVibration;Landroid/os/CombinedVibration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final fillVibrationFallbacks(Lcom/android/server/vibrator/HalVibration;Landroid/os/VibrationEffect;)V
    .locals 5

    .line 13
    check-cast p2, Landroid/os/VibrationEffect$Composed;

    .line 14
    invoke-virtual {p2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    invoke-virtual {p2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 16
    instance-of v3, v2, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v3, :cond_0

    .line 17
    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    .line 18
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 19
    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v4

    .line 20
    iget-object v3, v3, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    .line 22
    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    .line 24
    iget-object v4, p1, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;
    .locals 11

    .line 1
    const-string v0, "fixupAlwaysOnEffectsLocked"

    .line 2
    .line 3
    const-wide/32 v1, 0x800000

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Landroid/os/CombinedVibration$Mono;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 30
    .line 31
    .line 32
    move v5, v3

    .line 33
    :goto_0
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ge v5, v6, :cond_1

    .line 40
    .line 41
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Lcom/android/server/vibrator/VibratorController;

    .line 54
    .line 55
    invoke-virtual {v0, v6, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_1
    new-instance p1, Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 77
    .line 78
    .line 79
    move v5, v3

    .line 80
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-ge v5, v6, :cond_5

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Landroid/os/VibrationEffect;

    .line 91
    .line 92
    instance-of v7, v6, Landroid/os/VibrationEffect$Composed;

    .line 93
    .line 94
    if-eqz v7, :cond_2

    .line 95
    .line 96
    check-cast v6, Landroid/os/VibrationEffect$Composed;

    .line 97
    .line 98
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    const/4 v8, 0x1

    .line 107
    if-ne v7, v8, :cond_2

    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    .line 118
    .line 119
    instance-of v7, v6, Landroid/os/vibrator/PrebakedSegment;

    .line 120
    .line 121
    if-eqz v7, :cond_2

    .line 122
    .line 123
    check-cast v6, Landroid/os/vibrator/PrebakedSegment;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    move-object v6, v4

    .line 127
    :goto_2
    if-nez v6, :cond_3

    .line 128
    .line 129
    const-string p0, "VibratorManagerService"

    .line 130
    .line 131
    const-string p1, "Only prebaked effects supported for always-on."

    .line 132
    .line 133
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 137
    .line 138
    .line 139
    return-object v4

    .line 140
    :cond_3
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 145
    .line 146
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    check-cast v8, Lcom/android/server/vibrator/VibratorController;

    .line 151
    .line 152
    if-eqz v8, :cond_4

    .line 153
    .line 154
    iget-object v8, v8, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 155
    .line 156
    const-wide/16 v9, 0x40

    .line 157
    .line 158
    invoke-virtual {v8, v9, v10}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-eqz v8, :cond_4

    .line 163
    .line 164
    invoke-virtual {p1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 171
    .line 172
    .line 173
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    if-nez p0, :cond_6

    .line 175
    .line 176
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 177
    .line 178
    .line 179
    return-object v4

    .line 180
    :cond_6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 181
    .line 182
    .line 183
    return-object p1

    .line 184
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 185
    .line 186
    .line 187
    return-object v4

    .line 188
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 189
    .line 190
    .line 191
    throw p0
.end method

.method public final fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/os/CombinedVibration;->isHapticFeedbackCandidate()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x12

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    and-int/lit8 v1, p2, 0x13

    .line 26
    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    and-int/lit8 p2, p2, -0x14

    .line 63
    .line 64
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-ne v0, p0, :cond_6

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-ne p2, p0, :cond_6

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_6
    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    .line 78
    .line 79
    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {p0, p2, p1}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method

.method public final getCombinedVibratorInfo()Landroid/os/VibratorInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    sget-object v1, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :cond_1
    array-length v1, v1

    .line 24
    new-array v1, v1, [Landroid/os/VibratorInfo;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 28
    .line 29
    array-length v4, v3

    .line 30
    if-ge v2, v4, :cond_3

    .line 31
    .line 32
    aget v3, v3, v2

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->getVibratorInfo(I)Landroid/os/VibratorInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :cond_2
    aput-object v3, v1, v2

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 v2, -0x1

    .line 49
    invoke-static {v2, v1}, Landroid/os/vibrator/VibratorInfoFactory;->create(I[Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-object v1

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getMagnitudeByUsage(Landroid/os/VibrationAttributes;)I
    .locals 2

    .line 1
    const-string v0, "INTENSITY_MAX"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    const-string v0, "INTENSITY_MIN"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMinMagnitude:I

    .line 29
    .line 30
    return p0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, -0x1

    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentMagnitude(I)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    :goto_0
    return p0
.end method

.method public final getSupportedMotorType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->getMotorType()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    return v1
.end method

.method public final getSupportedVibratorGroup()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorGroup:I

    .line 19
    .line 20
    return p0

    .line 21
    :cond_0
    return v1
.end method

.method public final getVibratorIds()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getVibratorInfo(I)Landroid/os/VibratorInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v1, p1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    monitor-exit v2

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-boolean p0, p1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :cond_2
    return-object v0

    .line 33
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method public final isVibrating(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->isVibrating_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public final logAndRecordVibration(Lcom/android/server/vibrator/Vibration$DebugInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 4
    .line 5
    iget v1, v1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v0, p1, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAdaptiveScale:F

    .line 11
    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    sget-object v2, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 21
    .line 22
    invoke-virtual {v2, v1, v0}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 26
    .line 27
    iget v1, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 30
    .line 31
    iget-object v2, p1, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const-string v4, "VibratorManagerService"

    .line 38
    .line 39
    const/16 v5, 0xb

    .line 40
    .line 41
    if-eq v3, v5, :cond_4

    .line 42
    .line 43
    const/16 v5, 0x10

    .line 44
    .line 45
    if-eq v3, v5, :cond_3

    .line 46
    .line 47
    const/16 v5, 0x17

    .line 48
    .line 49
    if-eq v3, v5, :cond_2

    .line 50
    .line 51
    const/16 v5, 0x1a

    .line 52
    .line 53
    if-eq v3, v5, :cond_1

    .line 54
    .line 55
    packed-switch v3, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v5, "Vibration for uid="

    .line 61
    .line 62
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " and with attrs="

    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, " ended with status "

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_0
    const-string v0, "Ignoring incoming vibration in favor of repeating vibration"

    .line 93
    .line 94
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_1
    const-string v0, "Ignoring incoming vibration in favor of ongoing vibration with higher importance"

    .line 99
    .line 100
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_2
    const-string v0, "Ignoring incoming vibration for current external vibration"

    .line 105
    .line 106
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, "Ignoring incoming vibration because it came from a virtual device, attrs= "

    .line 113
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v2, "Ignoring incoming vibration because of ringer mode, attrs="

    .line 131
    .line 132
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v3, "Ignoring incoming vibration as process with uid= "

    .line 149
    .line 150
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, " is background, attrs= "

    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_4
    const-string v0, "Would be an error: vibrate from uid "

    .line 173
    .line 174
    invoke-static {v1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 178
    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 181
    .line 182
    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    .line 183
    .line 184
    invoke-direct {v1, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;-><init>(Lcom/android/server/vibrator/Vibration$DebugInfo;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_5

    .line 192
    .line 193
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    .line 196
    .line 197
    check-cast p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    .line 198
    .line 199
    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :catchall_0
    move-exception p1

    .line 204
    goto :goto_2

    .line 205
    :cond_5
    :goto_1
    monitor-exit p0

    .line 206
    return-void

    .line 207
    :goto_2
    monitor-exit p0

    .line 208
    throw p1

    .line 209
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCustomSystemReady()V
    .locals 8

    .line 1
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v7

    .line 12
    const/4 v4, 0x4

    .line 13
    const/16 v5, 0x14

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const v3, 0x1070183

    .line 17
    .line 18
    .line 19
    move-object v0, v6

    .line 20
    move-object v2, v7

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 22
    .line 23
    .line 24
    const/16 v5, 0x1e

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    const v3, 0x1070184

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    const/16 v5, 0x64

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    const v3, 0x1070185

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    const/16 v5, 0xb4

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    const v3, 0x1070186

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    const/16 v5, 0xbc

    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    const v3, 0x1070187

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x4

    .line 64
    const/16 v5, 0x14

    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    const v3, 0x1070188

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 71
    .line 72
    .line 73
    const/4 v4, 0x2

    .line 74
    const/16 v5, 0x1db

    .line 75
    .line 76
    const/4 v1, 0x7

    .line 77
    const v3, 0x1070189

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    const/16 v5, 0x29e

    .line 85
    .line 86
    const/16 v1, 0x8

    .line 87
    .line 88
    const v3, 0x107018a

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 92
    .line 93
    .line 94
    const/16 v5, 0x5dc

    .line 95
    .line 96
    const/16 v1, 0x9

    .line 97
    .line 98
    const v3, 0x107018b

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 102
    .line 103
    .line 104
    const/16 v5, 0x3e8

    .line 105
    .line 106
    const/16 v1, 0xa

    .line 107
    .line 108
    const v3, 0x107018c

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 112
    .line 113
    .line 114
    const/16 v5, 0xdac

    .line 115
    .line 116
    const/16 v1, 0xb

    .line 117
    .line 118
    const v3, 0x107018d

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 122
    .line 123
    .line 124
    const/16 v5, 0x7d0

    .line 125
    .line 126
    const/16 v1, 0xc

    .line 127
    .line 128
    const v3, 0x107018e

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 132
    .line 133
    .line 134
    const/16 v5, 0x640

    .line 135
    .line 136
    const/16 v1, 0xd

    .line 137
    .line 138
    const v3, 0x107018f

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 142
    .line 143
    .line 144
    const/16 v5, 0x1e

    .line 145
    .line 146
    const/16 v1, 0xe

    .line 147
    .line 148
    const v3, 0x1070190

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 152
    .line 153
    .line 154
    const/16 v1, 0xf

    .line 155
    .line 156
    const v3, 0x1070191

    .line 157
    .line 158
    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 160
    .line 161
    .line 162
    const/16 v1, 0x10

    .line 163
    .line 164
    const v3, 0x1070192

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 168
    .line 169
    .line 170
    const/16 v5, 0xbb8

    .line 171
    .line 172
    const/16 v1, 0x11

    .line 173
    .line 174
    const v3, 0x1070193

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 178
    .line 179
    .line 180
    const/16 v5, 0xc1c

    .line 181
    .line 182
    const/16 v1, 0x12

    .line 183
    .line 184
    const v3, 0x1070194

    .line 185
    .line 186
    .line 187
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 188
    .line 189
    .line 190
    const/16 v5, 0x125c

    .line 191
    .line 192
    const/16 v1, 0x13

    .line 193
    .line 194
    const v3, 0x1070195

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 198
    .line 199
    .line 200
    const/16 v5, 0xc1c

    .line 201
    .line 202
    const/16 v1, 0x14

    .line 203
    .line 204
    const v3, 0x1070196

    .line 205
    .line 206
    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 208
    .line 209
    .line 210
    const/16 v5, 0xcbc

    .line 211
    .line 212
    const/16 v1, 0x15

    .line 213
    .line 214
    const v3, 0x1070197

    .line 215
    .line 216
    .line 217
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 218
    .line 219
    .line 220
    const/16 v5, 0x19

    .line 221
    .line 222
    const/16 v1, 0x16

    .line 223
    .line 224
    const v3, 0x10701a3

    .line 225
    .line 226
    .line 227
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 228
    .line 229
    .line 230
    const/16 v5, 0x14

    .line 231
    .line 232
    const/16 v1, 0x17

    .line 233
    .line 234
    const v3, 0x10701a4

    .line 235
    .line 236
    .line 237
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 238
    .line 239
    .line 240
    const/16 v1, 0x18

    .line 241
    .line 242
    const v3, 0x10701a5

    .line 243
    .line 244
    .line 245
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 246
    .line 247
    .line 248
    const/4 v5, 0x0

    .line 249
    const/16 v1, 0x19

    .line 250
    .line 251
    const v3, 0x10701a6

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 255
    .line 256
    .line 257
    const/16 v5, 0x14

    .line 258
    .line 259
    const/16 v1, 0x1a

    .line 260
    .line 261
    const v3, 0x10701a7

    .line 262
    .line 263
    .line 264
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 265
    .line 266
    .line 267
    const/16 v5, 0x8c

    .line 268
    .line 269
    const/16 v1, 0x1b

    .line 270
    .line 271
    const v3, 0x10701a8

    .line 272
    .line 273
    .line 274
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 275
    .line 276
    .line 277
    const/4 v5, 0x0

    .line 278
    const/16 v1, 0x1c

    .line 279
    .line 280
    const v3, 0x10701a9

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 284
    .line 285
    .line 286
    const/16 v1, 0x1d

    .line 287
    .line 288
    const v3, 0x10701aa

    .line 289
    .line 290
    .line 291
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 292
    .line 293
    .line 294
    const/16 v1, 0x1e

    .line 295
    .line 296
    const v3, 0x10701ab

    .line 297
    .line 298
    .line 299
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 300
    .line 301
    .line 302
    const/16 v1, 0x1f

    .line 303
    .line 304
    const v3, 0x10701ac

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 308
    .line 309
    .line 310
    const/16 v5, 0x19

    .line 311
    .line 312
    const/16 v1, 0x20

    .line 313
    .line 314
    const v3, 0x10701ad

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 318
    .line 319
    .line 320
    const/16 v5, 0x14

    .line 321
    .line 322
    const/16 v1, 0x21

    .line 323
    .line 324
    const v3, 0x10701ae

    .line 325
    .line 326
    .line 327
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 328
    .line 329
    .line 330
    const/16 v5, 0xc8

    .line 331
    .line 332
    const/16 v1, 0x22

    .line 333
    .line 334
    const v3, 0x10701af

    .line 335
    .line 336
    .line 337
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 338
    .line 339
    .line 340
    const/4 v5, 0x0

    .line 341
    const/16 v1, 0x23

    .line 342
    .line 343
    const v3, 0x10701b0

    .line 344
    .line 345
    .line 346
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 347
    .line 348
    .line 349
    const/16 v1, 0x24

    .line 350
    .line 351
    const v3, 0x10701b1

    .line 352
    .line 353
    .line 354
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 355
    .line 356
    .line 357
    const/16 v5, 0x14

    .line 358
    .line 359
    const/16 v1, 0x25

    .line 360
    .line 361
    const v3, 0x10701b2

    .line 362
    .line 363
    .line 364
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 365
    .line 366
    .line 367
    const/16 v1, 0x26

    .line 368
    .line 369
    const v3, 0x10701b3

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 373
    .line 374
    .line 375
    const/16 v5, 0x1e

    .line 376
    .line 377
    const/16 v1, 0x27

    .line 378
    .line 379
    const v3, 0x10701b4

    .line 380
    .line 381
    .line 382
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 383
    .line 384
    .line 385
    const/16 v5, 0x14

    .line 386
    .line 387
    const/16 v1, 0x28

    .line 388
    .line 389
    const v3, 0x10701b5

    .line 390
    .line 391
    .line 392
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 393
    .line 394
    .line 395
    const/16 v5, 0xa

    .line 396
    .line 397
    const/16 v1, 0x29

    .line 398
    .line 399
    const v3, 0x10701b6

    .line 400
    .line 401
    .line 402
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 403
    .line 404
    .line 405
    const/16 v5, 0x14

    .line 406
    .line 407
    const/16 v1, 0x2a

    .line 408
    .line 409
    const v3, 0x10701b7

    .line 410
    .line 411
    .line 412
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 413
    .line 414
    .line 415
    const/16 v1, 0x2b

    .line 416
    .line 417
    const v3, 0x10701b8

    .line 418
    .line 419
    .line 420
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 421
    .line 422
    .line 423
    const/16 v1, 0x2c

    .line 424
    .line 425
    const v3, 0x10701b9

    .line 426
    .line 427
    .line 428
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 429
    .line 430
    .line 431
    const/16 v5, 0x9b

    .line 432
    .line 433
    const/16 v1, 0x2d

    .line 434
    .line 435
    const v3, 0x10701ba

    .line 436
    .line 437
    .line 438
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 439
    .line 440
    .line 441
    const/16 v5, 0xbe

    .line 442
    .line 443
    const/16 v1, 0x2e

    .line 444
    .line 445
    const v3, 0x10701bb

    .line 446
    .line 447
    .line 448
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 449
    .line 450
    .line 451
    const/16 v5, 0x8c

    .line 452
    .line 453
    const/16 v1, 0x2f

    .line 454
    .line 455
    const v3, 0x10701bc

    .line 456
    .line 457
    .line 458
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 459
    .line 460
    .line 461
    const/16 v5, 0x1f4

    .line 462
    .line 463
    const/16 v1, 0x30

    .line 464
    .line 465
    const v3, 0x10701bd

    .line 466
    .line 467
    .line 468
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 469
    .line 470
    .line 471
    const/16 v5, 0x14

    .line 472
    .line 473
    const/16 v1, 0x31

    .line 474
    .line 475
    const v3, 0x10701be

    .line 476
    .line 477
    .line 478
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 479
    .line 480
    .line 481
    const/16 v5, 0xa

    .line 482
    .line 483
    const/16 v1, 0x32

    .line 484
    .line 485
    const v3, 0x10701bf

    .line 486
    .line 487
    .line 488
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 489
    .line 490
    .line 491
    const/16 v5, 0x1e

    .line 492
    .line 493
    const/16 v1, 0x33

    .line 494
    .line 495
    const v3, 0x10701c0

    .line 496
    .line 497
    .line 498
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 499
    .line 500
    .line 501
    const/16 v1, 0x34

    .line 502
    .line 503
    const v3, 0x10701c1

    .line 504
    .line 505
    .line 506
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 507
    .line 508
    .line 509
    const/16 v5, 0x7d0

    .line 510
    .line 511
    const/16 v1, 0x38

    .line 512
    .line 513
    const v3, 0x10701c2

    .line 514
    .line 515
    .line 516
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 517
    .line 518
    .line 519
    const/16 v1, 0x39

    .line 520
    .line 521
    const v3, 0x10701c3

    .line 522
    .line 523
    .line 524
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 525
    .line 526
    .line 527
    const/16 v1, 0x3a

    .line 528
    .line 529
    const v3, 0x10701c4

    .line 530
    .line 531
    .line 532
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 533
    .line 534
    .line 535
    const/16 v1, 0x3b

    .line 536
    .line 537
    const v3, 0x10701c5

    .line 538
    .line 539
    .line 540
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 541
    .line 542
    .line 543
    const/4 v5, 0x0

    .line 544
    const/16 v1, 0x3c

    .line 545
    .line 546
    const v3, 0x10701c6

    .line 547
    .line 548
    .line 549
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 550
    .line 551
    .line 552
    const/16 v5, 0x320

    .line 553
    .line 554
    const/16 v1, 0x54

    .line 555
    .line 556
    const v3, 0x10701c7

    .line 557
    .line 558
    .line 559
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 560
    .line 561
    .line 562
    const/16 v1, 0x55

    .line 563
    .line 564
    const v3, 0x10701c8

    .line 565
    .line 566
    .line 567
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 568
    .line 569
    .line 570
    const/16 v1, 0x56

    .line 571
    .line 572
    const v3, 0x10701c9

    .line 573
    .line 574
    .line 575
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 576
    .line 577
    .line 578
    const/16 v5, 0x258

    .line 579
    .line 580
    const/16 v1, 0x57

    .line 581
    .line 582
    const v3, 0x10701ca

    .line 583
    .line 584
    .line 585
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 586
    .line 587
    .line 588
    const/16 v5, 0x140

    .line 589
    .line 590
    const/16 v1, 0x58

    .line 591
    .line 592
    const v3, 0x10701cb

    .line 593
    .line 594
    .line 595
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 596
    .line 597
    .line 598
    const/16 v5, 0x28a

    .line 599
    .line 600
    const/16 v1, 0x59

    .line 601
    .line 602
    const v3, 0x10701cc

    .line 603
    .line 604
    .line 605
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 606
    .line 607
    .line 608
    const/16 v5, 0x2ee

    .line 609
    .line 610
    const/16 v1, 0x5a

    .line 611
    .line 612
    const v3, 0x10701cd

    .line 613
    .line 614
    .line 615
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 616
    .line 617
    .line 618
    const/16 v5, 0xbea

    .line 619
    .line 620
    const/16 v1, 0x5b

    .line 621
    .line 622
    const v3, 0x10701ce

    .line 623
    .line 624
    .line 625
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 626
    .line 627
    .line 628
    const/16 v5, 0xcb2

    .line 629
    .line 630
    const/16 v1, 0x5c

    .line 631
    .line 632
    const v3, 0x10701cf

    .line 633
    .line 634
    .line 635
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 636
    .line 637
    .line 638
    const/16 v5, 0x19

    .line 639
    .line 640
    const/16 v1, 0x6c

    .line 641
    .line 642
    const v3, 0x1070198

    .line 643
    .line 644
    .line 645
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 646
    .line 647
    .line 648
    const/16 v1, 0x6d

    .line 649
    .line 650
    const v3, 0x1070199

    .line 651
    .line 652
    .line 653
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 654
    .line 655
    .line 656
    const/16 v5, 0x8c

    .line 657
    .line 658
    const/16 v1, 0x6e

    .line 659
    .line 660
    const v3, 0x107019a

    .line 661
    .line 662
    .line 663
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 664
    .line 665
    .line 666
    const/16 v5, 0xd7

    .line 667
    .line 668
    const/16 v1, 0x6f

    .line 669
    .line 670
    const v3, 0x107019b

    .line 671
    .line 672
    .line 673
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 674
    .line 675
    .line 676
    const/16 v5, 0x1c7

    .line 677
    .line 678
    const/16 v1, 0x70

    .line 679
    .line 680
    const v3, 0x107019c

    .line 681
    .line 682
    .line 683
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 684
    .line 685
    .line 686
    const/16 v5, 0xbe

    .line 687
    .line 688
    const/16 v1, 0x71

    .line 689
    .line 690
    const v3, 0x107019d

    .line 691
    .line 692
    .line 693
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 694
    .line 695
    .line 696
    const/16 v5, 0x1e0

    .line 697
    .line 698
    const/16 v1, 0x72

    .line 699
    .line 700
    const v3, 0x107019e

    .line 701
    .line 702
    .line 703
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 704
    .line 705
    .line 706
    const/16 v5, 0x14

    .line 707
    .line 708
    const/16 v1, 0x77

    .line 709
    .line 710
    const v3, 0x107019f

    .line 711
    .line 712
    .line 713
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 714
    .line 715
    .line 716
    const/16 v5, 0x226

    .line 717
    .line 718
    const/16 v1, 0x7d

    .line 719
    .line 720
    const v3, 0x10701a0

    .line 721
    .line 722
    .line 723
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 724
    .line 725
    .line 726
    const/16 v5, 0xc8

    .line 727
    .line 728
    const/16 v1, 0x7e

    .line 729
    .line 730
    const v3, 0x10701a1

    .line 731
    .line 732
    .line 733
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 734
    .line 735
    .line 736
    const/16 v1, 0x7f

    .line 737
    .line 738
    const v3, 0x10701a2

    .line 739
    .line 740
    .line 741
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    .line 742
    .line 743
    .line 744
    const/16 v0, 0x40

    .line 745
    .line 746
    const/16 v1, 0x640

    .line 747
    .line 748
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 749
    .line 750
    .line 751
    const/16 v0, 0x41

    .line 752
    .line 753
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 754
    .line 755
    .line 756
    const/16 v0, 0x42

    .line 757
    .line 758
    const/16 v1, 0x1e

    .line 759
    .line 760
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 761
    .line 762
    .line 763
    const/16 v0, 0x44

    .line 764
    .line 765
    const/16 v1, 0x32

    .line 766
    .line 767
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 768
    .line 769
    .line 770
    const/16 v0, 0x45

    .line 771
    .line 772
    const/16 v1, 0x7d

    .line 773
    .line 774
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 775
    .line 776
    .line 777
    const/16 v0, 0x46

    .line 778
    .line 779
    const/16 v1, 0xfa

    .line 780
    .line 781
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 782
    .line 783
    .line 784
    const/16 v0, 0x47

    .line 785
    .line 786
    const/16 v1, 0x1f4

    .line 787
    .line 788
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 789
    .line 790
    .line 791
    const/16 v0, 0x48

    .line 792
    .line 793
    const/16 v1, 0x16

    .line 794
    .line 795
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 796
    .line 797
    .line 798
    const/16 v0, 0x49

    .line 799
    .line 800
    const/16 v1, 0x145

    .line 801
    .line 802
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 803
    .line 804
    .line 805
    const/16 v0, 0x4a

    .line 806
    .line 807
    const/16 v1, 0xe1

    .line 808
    .line 809
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 810
    .line 811
    .line 812
    const/16 v0, 0x4b

    .line 813
    .line 814
    const/16 v1, 0x7d

    .line 815
    .line 816
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 817
    .line 818
    .line 819
    const/16 v0, 0x4c

    .line 820
    .line 821
    const/16 v1, 0x145

    .line 822
    .line 823
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 824
    .line 825
    .line 826
    const/16 v0, 0x4d

    .line 827
    .line 828
    const/16 v1, 0xe1

    .line 829
    .line 830
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 831
    .line 832
    .line 833
    const/16 v0, 0x4e

    .line 834
    .line 835
    const/16 v1, 0xaf

    .line 836
    .line 837
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 838
    .line 839
    .line 840
    const/16 v0, 0x4f

    .line 841
    .line 842
    const/16 v1, 0x1e

    .line 843
    .line 844
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 845
    .line 846
    .line 847
    const/16 v0, 0x50

    .line 848
    .line 849
    const/16 v1, 0x2d

    .line 850
    .line 851
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 852
    .line 853
    .line 854
    const/16 v0, 0x51

    .line 855
    .line 856
    const/16 v1, 0xaa

    .line 857
    .line 858
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 859
    .line 860
    .line 861
    const/16 v0, 0x52

    .line 862
    .line 863
    const/16 v1, 0x3e8

    .line 864
    .line 865
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 866
    .line 867
    .line 868
    const/16 v0, 0x53

    .line 869
    .line 870
    const/16 v1, 0x1e

    .line 871
    .line 872
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 873
    .line 874
    .line 875
    const/16 v0, 0x5d

    .line 876
    .line 877
    const/16 v1, 0x294

    .line 878
    .line 879
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 880
    .line 881
    .line 882
    const/16 v0, 0x5e

    .line 883
    .line 884
    const/16 v1, 0xdc

    .line 885
    .line 886
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 887
    .line 888
    .line 889
    const/16 v0, 0x5f

    .line 890
    .line 891
    const/16 v1, 0x2ee

    .line 892
    .line 893
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 894
    .line 895
    .line 896
    const/16 v0, 0x60

    .line 897
    .line 898
    const/16 v1, 0x163

    .line 899
    .line 900
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 901
    .line 902
    .line 903
    const/16 v0, 0x61

    .line 904
    .line 905
    const/16 v1, 0x2d0

    .line 906
    .line 907
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 908
    .line 909
    .line 910
    const/16 v0, 0x62

    .line 911
    .line 912
    const/16 v1, 0x3f7

    .line 913
    .line 914
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 915
    .line 916
    .line 917
    const/16 v0, 0x63

    .line 918
    .line 919
    const/16 v1, 0x1f4

    .line 920
    .line 921
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 922
    .line 923
    .line 924
    const/16 v0, 0x65

    .line 925
    .line 926
    const/16 v1, 0xded

    .line 927
    .line 928
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 929
    .line 930
    .line 931
    const/16 v0, 0x66

    .line 932
    .line 933
    const/16 v1, 0xdc5

    .line 934
    .line 935
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 936
    .line 937
    .line 938
    const/16 v0, 0x67

    .line 939
    .line 940
    const/16 v1, 0xe1a

    .line 941
    .line 942
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 943
    .line 944
    .line 945
    const/16 v0, 0x68

    .line 946
    .line 947
    const/16 v1, 0xeb0

    .line 948
    .line 949
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 950
    .line 951
    .line 952
    const/16 v0, 0x69

    .line 953
    .line 954
    const/16 v1, 0x1540

    .line 955
    .line 956
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 957
    .line 958
    .line 959
    const/16 v0, 0x6a

    .line 960
    .line 961
    const/16 v1, 0xf46

    .line 962
    .line 963
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 964
    .line 965
    .line 966
    const/16 v0, 0x6b

    .line 967
    .line 968
    const/16 v1, 0xdc5

    .line 969
    .line 970
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 971
    .line 972
    .line 973
    const/16 v0, 0x73

    .line 974
    .line 975
    const/16 v1, 0x6a4

    .line 976
    .line 977
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 978
    .line 979
    .line 980
    const/16 v0, 0x74

    .line 981
    .line 982
    const/16 v1, 0x514

    .line 983
    .line 984
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 985
    .line 986
    .line 987
    const/16 v0, 0x75

    .line 988
    .line 989
    const/16 v1, 0x9c4

    .line 990
    .line 991
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 992
    .line 993
    .line 994
    const/16 v0, 0x76

    .line 995
    .line 996
    const/16 v1, 0xbb8

    .line 997
    .line 998
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 999
    .line 1000
    .line 1001
    const/16 v0, 0x78

    .line 1002
    .line 1003
    const/16 v1, 0x64

    .line 1004
    .line 1005
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 1006
    .line 1007
    .line 1008
    const/16 v0, 0x79

    .line 1009
    .line 1010
    const/16 v1, 0x96

    .line 1011
    .line 1012
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 1013
    .line 1014
    .line 1015
    const/16 v0, 0x7a

    .line 1016
    .line 1017
    const/16 v1, 0x1f4

    .line 1018
    .line 1019
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 1020
    .line 1021
    .line 1022
    const/16 v0, 0x7b

    .line 1023
    .line 1024
    const/16 v1, 0x82

    .line 1025
    .line 1026
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 1027
    .line 1028
    .line 1029
    const/16 v0, 0x7c

    .line 1030
    .line 1031
    const/16 v1, 0x12c

    .line 1032
    .line 1033
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    .line 1034
    .line 1035
    .line 1036
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 1037
    .line 1038
    const/4 v1, 0x0

    .line 1039
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    if-eqz v0, :cond_0

    .line 1044
    .line 1045
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 1046
    .line 1047
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 1052
    .line 1053
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 1054
    .line 1055
    const-string v2, "HYBRID_PATTERN_COMMON_INPUTFF"

    .line 1056
    .line 1057
    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->hasFeature(Ljava/lang/String;)Z

    .line 1058
    .line 1059
    .line 1060
    move-result v0

    .line 1061
    goto :goto_0

    .line 1062
    :cond_0
    move v0, v1

    .line 1063
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/vibrator/VibRune;->SET_HYBRID_HAPTIC(Z)V

    .line 1064
    .line 1065
    .line 1066
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 1067
    .line 1068
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    if-eqz v0, :cond_1

    .line 1073
    .line 1074
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 1075
    .line 1076
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 1081
    .line 1082
    iget-boolean v0, v0, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    .line 1083
    .line 1084
    goto :goto_1

    .line 1085
    :cond_1
    move v0, v1

    .line 1086
    :goto_1
    sput-boolean v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sIsFrequencySupported:Z

    .line 1087
    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    const-string v2, "frequency supported is : "

    .line 1091
    .line 1092
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    sget-boolean v2, Lcom/samsung/android/server/vibrator/VibratorHelper;->sIsFrequencySupported:Z

    .line 1096
    .line 1097
    const-string v3, "VibratorManagerService"

    .line 1098
    .line 1099
    invoke-static {v3, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1100
    .line 1101
    .line 1102
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 1103
    .line 1104
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    if-eqz v0, :cond_2

    .line 1109
    .line 1110
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 1111
    .line 1112
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    .line 1117
    .line 1118
    iget-boolean v1, v0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    .line 1119
    .line 1120
    :cond_2
    sput-boolean v1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sIsHapticEngineSupported:Z

    .line 1121
    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    const-string v1, "haptic engine supported is : "

    .line 1125
    .line 1126
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    sget-boolean v1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sIsHapticEngineSupported:Z

    .line 1130
    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v0

    .line 1138
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedMotorType()I

    .line 1142
    .line 1143
    .line 1144
    move-result p0

    .line 1145
    sput p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sMotorType:I

    .line 1146
    .line 1147
    new-instance p0, Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    const-string/jumbo v0, "vibrator motor type is : "

    .line 1150
    .line 1151
    .line 1152
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    sget v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sMotorType:I

    .line 1156
    .line 1157
    invoke-static {v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getMotorTypeToString(I)Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object p0

    .line 1168
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    .line 1170
    .line 1171
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    .line 2
    .line 3
    invoke-virtual {p5}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move-object v5, p4

    .line 15
    move-object v6, p5

    .line 16
    move-object v7, p6

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final performHapticFeedback(IILjava/lang/String;IZLjava/lang/String;Z)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p5

    .line 7
    move-object v6, p6

    .line 8
    move-object v7, p0

    .line 9
    move/from16 v8, p7

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackInternal(IILjava/lang/String;IZLjava/lang/String;Landroid/os/IBinder;Z)Lcom/android/server/vibrator/HalVibration;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public performHapticFeedbackInternal(IILjava/lang/String;IZLjava/lang/String;Landroid/os/IBinder;Z)Lcom/android/server/vibrator/HalVibration;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v1, p4

    .line 3
    move/from16 v2, p5

    .line 4
    .line 5
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v3

    .line 8
    :try_start_0
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    monitor-exit v3

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getCombinedVibratorInfo()Landroid/os/VibratorInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    monitor-exit v3

    .line 25
    move-object v4, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService;->mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

    .line 28
    .line 29
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v6, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 39
    .line 40
    invoke-direct {v6, v7, v4}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V

    .line 41
    .line 42
    .line 43
    iput-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 44
    .line 45
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    move-object v4, v6

    .line 47
    :goto_0
    if-nez v4, :cond_2

    .line 48
    .line 49
    const-string v0, "VibratorManagerService"

    .line 50
    .line 51
    const-string/jumbo v1, "performHapticFeedback; haptic vibration provider not ready."

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-object v5

    .line 58
    :cond_2
    iget-boolean v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mMotorTypeSetFlag:Z

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedVibratorGroup()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-ne v3, v6, :cond_3

    .line 68
    .line 69
    move v3, v6

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v3, 0x0

    .line 72
    :goto_1
    iput-boolean v3, v4, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mIsDcMotor:Z

    .line 73
    .line 74
    iput-boolean v6, v0, Lcom/android/server/vibrator/VibratorManagerService;->mMotorTypeSetFlag:Z

    .line 75
    .line 76
    :cond_4
    const/16 v3, 0x2714

    .line 77
    .line 78
    if-eq v1, v3, :cond_5

    .line 79
    .line 80
    const/16 v3, 0x2715

    .line 81
    .line 82
    if-eq v1, v3, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    const-string v3, "android.permission.VIBRATE_SYSTEM_CONSTANTS"

    .line 86
    .line 87
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v7, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_f

    .line 94
    .line 95
    :goto_2
    if-nez v2, :cond_6

    .line 96
    .line 97
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 98
    .line 99
    iget-object v7, v3, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v7

    .line 102
    :try_start_1
    iget-boolean v3, v3, Lcom/android/server/vibrator/VibrationSettings;->mHapticFeedbackEnabled:Z

    .line 103
    .line 104
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    if-nez v3, :cond_6

    .line 106
    .line 107
    const-string v0, "VibratorManagerService"

    .line 108
    .line 109
    const-string/jumbo v1, "performHapticFeedback; haptic feedback is disabled"

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    return-object v5

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    throw v0

    .line 119
    :cond_6
    sget-boolean v3, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 120
    .line 121
    const/4 v7, -0x1

    .line 122
    if-eqz v3, :cond_9

    .line 123
    .line 124
    iget-boolean v3, v4, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mIsDcMotor:Z

    .line 125
    .line 126
    if-eqz v3, :cond_9

    .line 127
    .line 128
    if-eqz v1, :cond_8

    .line 129
    .line 130
    const v3, 0xc3d4

    .line 131
    .line 132
    .line 133
    if-ne v1, v3, :cond_7

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    move v3, v7

    .line 137
    goto :goto_4

    .line 138
    :cond_8
    :goto_3
    const/16 v3, 0x64

    .line 139
    .line 140
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    goto :goto_4

    .line 145
    :cond_9
    if-eqz v1, :cond_b

    .line 146
    .line 147
    if-eq v1, v6, :cond_a

    .line 148
    .line 149
    packed-switch v1, :pswitch_data_0

    .line 150
    .line 151
    .line 152
    packed-switch v1, :pswitch_data_1

    .line 153
    .line 154
    .line 155
    packed-switch v1, :pswitch_data_2

    .line 156
    .line 157
    .line 158
    packed-switch v1, :pswitch_data_3

    .line 159
    .line 160
    .line 161
    invoke-static {p4}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_7

    .line 166
    .line 167
    move v3, v1

    .line 168
    goto :goto_4

    .line 169
    :pswitch_0
    const/16 v3, 0x6d

    .line 170
    .line 171
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    goto :goto_4

    .line 176
    :pswitch_1
    const/16 v3, 0x6c

    .line 177
    .line 178
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    goto :goto_4

    .line 183
    :pswitch_2
    const/16 v3, 0x1b

    .line 184
    .line 185
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    goto :goto_4

    .line 190
    :pswitch_3
    const/4 v3, 0x5

    .line 191
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    goto :goto_4

    .line 196
    :pswitch_4
    const/16 v3, 0x29

    .line 197
    .line 198
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    goto :goto_4

    .line 203
    :cond_a
    :pswitch_5
    const/16 v3, 0xe

    .line 204
    .line 205
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    goto :goto_4

    .line 210
    :cond_b
    :pswitch_6
    invoke-static {v6}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    :goto_4
    if-eq v3, v7, :cond_c

    .line 215
    .line 216
    invoke-static {v3, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    goto :goto_5

    .line 221
    :cond_c
    move-object v3, v5

    .line 222
    :goto_5
    if-nez v3, :cond_d

    .line 223
    .line 224
    const-string v0, "VibratorManagerService"

    .line 225
    .line 226
    const-string/jumbo v2, "performHapticFeedback; vibration absent for constant "

    .line 227
    .line 228
    .line 229
    invoke-static {p4, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    return-object v5

    .line 233
    :cond_d
    invoke-static {v3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    move/from16 v3, p8

    .line 238
    .line 239
    invoke-virtual {v4, p4, v2, v3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesForHapticFeedback(IZZ)Landroid/os/VibrationAttributes;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    const-string/jumbo v2, "performHapticFeedback(constant="

    .line 244
    .line 245
    .line 246
    const-string v3, "): "

    .line 247
    .line 248
    move-object/from16 v4, p6

    .line 249
    .line 250
    invoke-static {p4, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    sget-object v2, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

    .line 255
    .line 256
    const/4 v2, 0x3

    .line 257
    if-eq v1, v2, :cond_e

    .line 258
    .line 259
    const/4 v2, 0x7

    .line 260
    if-eq v1, v2, :cond_e

    .line 261
    .line 262
    move v2, p1

    .line 263
    goto :goto_6

    .line 264
    :cond_e
    const-string/jumbo v1, "vibrator.value_perform_haptic_feedback_keyboard"

    .line 265
    .line 266
    .line 267
    move v2, p1

    .line 268
    invoke-static {v1, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string/jumbo v3, "vibrate no perm check, reason = "

    .line 274
    .line 275
    .line 276
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    const-wide/32 v9, 0x800000

    .line 287
    .line 288
    .line 289
    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    move-object v1, p0

    .line 293
    move v2, p1

    .line 294
    move v3, p2

    .line 295
    move-object v4, p3

    .line 296
    move-object/from16 v8, p7

    .line 297
    .line 298
    :try_start_3
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    .line 299
    .line 300
    .line 301
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 302
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 303
    .line 304
    .line 305
    return-object v0

    .line 306
    :catchall_2
    move-exception v0

    .line 307
    move-object v1, v0

    .line 308
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 309
    .line 310
    .line 311
    throw v1

    .line 312
    :cond_f
    const-string v0, "VibratorManagerService"

    .line 313
    .line 314
    const-string/jumbo v2, "performHapticFeedback; no permission for system constant "

    .line 315
    .line 316
    .line 317
    invoke-static {p4, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return-object v5

    .line 321
    :goto_7
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    throw v0

    .line 323
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :pswitch_data_2
    .packed-switch 0x15
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :pswitch_data_3
    .packed-switch 0x2713
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public final registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->registerVibratorStateListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 24
    .line 25
    invoke-virtual {v3, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :try_start_2
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController;->mIsVibrating:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    :try_start_3
    invoke-interface {p2, p0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    :try_start_4
    const-string p1, "VibratorController"

    .line 46
    .line 47
    const-string p2, "Vibrator state listener failed to call"

    .line 48
    .line 49
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    :goto_1
    return p1

    .line 58
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 59
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public final reportVibrationInfo(Lcom/android/server/vibrator/HalVibration;Landroid/os/VibrationAttributes;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x12

    .line 6
    .line 7
    if-eq v1, v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const-string v1, "VibratorService"

    .line 14
    .line 15
    iget-object v2, v0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v2

    .line 28
    :goto_0
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->reason:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/16 v3, 0x31

    .line 47
    .line 48
    if-eq v0, v3, :cond_1

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const/16 v3, 0x21

    .line 53
    .line 54
    if-ne v0, v3, :cond_2

    .line 55
    .line 56
    :cond_1
    const-string/jumbo v0, "reason: Notification ("

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const/16 v0, 0x28

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    const/16 v3, 0x29

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, " "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    aget-object v0, v0, v2

    .line 90
    .line 91
    :goto_1
    move-object v3, v0

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :goto_2
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    iget-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 101
    .line 102
    const-string/jumbo v2, "vibration"

    .line 103
    .line 104
    .line 105
    const-string v5, ""

    .line 106
    .line 107
    iget-object v6, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->reason:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void
.end method

.method public final semGetNumberOfSupportedPatterns()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p3

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    const-string/jumbo v3, "setAlwaysOnEffect"

    .line 7
    .line 8
    .line 9
    const-wide/32 v4, 0x800000

    .line 10
    .line 11
    .line 12
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v6, "android.permission.VIBRATE_ALWAYS_ON"

    .line 18
    .line 19
    const-string/jumbo v7, "setAlwaysOnEffect"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v6, 0x0

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-ge v6, v7, :cond_1

    .line 44
    .line 45
    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Lcom/android/server/vibrator/VibratorController;

    .line 52
    .line 53
    iget-object v8, v7, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 54
    .line 55
    const-wide/16 v9, 0x40

    .line 56
    .line 57
    invoke-virtual {v8, v9, v10}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_0

    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    invoke-virtual {v7, v1, v8}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 72
    .line 73
    .line 74
    return v3

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :try_start_3
    throw v0

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const-string v7, "VibratorManagerService"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    .line 82
    :try_start_4
    invoke-virtual/range {p4 .. p4}, Landroid/os/CombinedVibration;->validate()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    .line 84
    .line 85
    move-object/from16 v7, p5

    .line 86
    .line 87
    :try_start_5
    invoke-virtual {p0, v7, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    iget-object v13, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 92
    .line 93
    monitor-enter v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-nez v2, :cond_3

    .line 99
    .line 100
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 101
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 102
    .line 103
    .line 104
    return v6

    .line 105
    :catchall_2
    move-exception v0

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :try_start_7
    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    .line 108
    .line 109
    new-instance v14, Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v12, 0x0

    .line 113
    move-object v7, v14

    .line 114
    move/from16 v9, p1

    .line 115
    .line 116
    move-object/from16 v11, p2

    .line 117
    .line 118
    invoke-direct/range {v7 .. v12}, Lcom/android/server/vibrator/Vibration$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v6, v1, v14, v2}, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;-><init>(ILcom/android/server/vibrator/Vibration$CallerInfo;Landroid/util/SparseArray;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 125
    .line 126
    invoke-virtual {v2, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 130
    .line 131
    .line 132
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 133
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 134
    .line 135
    .line 136
    return v3

    .line 137
    :goto_1
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 138
    :try_start_9
    throw v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    move-object v1, v0

    .line 141
    const-string v0, "Encountered issue when verifying CombinedVibrationEffect."

    .line 142
    .line 143
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 144
    .line 145
    .line 146
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 147
    .line 148
    .line 149
    return v6

    .line 150
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 151
    .line 152
    .line 153
    throw v0
.end method

.method public final setExternalControl(ZLcom/android/server/vibrator/VibrationStats;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    .line 19
    .line 20
    .line 21
    iget v1, p2, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetExternalControlCount:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    iput v1, p2, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetExternalControlCount:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final shouldIgnoreVibrationForOngoingLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationForOngoing(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationForOngoing(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p0, :cond_6

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 31
    .line 32
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    .line 33
    .line 34
    if-eq v2, v3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-static {v3}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v2

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 52
    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    :goto_0
    return-object v0

    .line 60
    :cond_5
    invoke-static {p1, v1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationForOngoing(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_6
    return-object v0
.end method

.method public final shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/Vibration$CallerInfo;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 10

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v2, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string p0, "SPEG"

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Vibration is ignored for uid "

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget p1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 44
    .line 45
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    .line 46
    .line 47
    invoke-direct {p0, p1, v1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const-string v2, "Failed to call NotificationManager : "

    .line 57
    .line 58
    iget-object v3, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v4

    .line 67
    :try_start_0
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    .line 68
    .line 69
    iget v6, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 70
    .line 71
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    iget-object v7, v5, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    .line 73
    .line 74
    const/4 v8, 0x6

    .line 75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v7, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v9, 0x1

    .line 91
    if-gt v6, v8, :cond_1

    .line 92
    .line 93
    move v6, v9

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    move v6, v7

    .line 96
    :goto_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    const/4 v5, 0x2

    .line 98
    if-nez v6, :cond_3

    .line 99
    .line 100
    :try_start_2
    sget-object v6, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 101
    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v6, Ljava/util/HashSet;

    .line 107
    .line 108
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-nez v6, :cond_3

    .line 113
    .line 114
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 115
    .line 116
    const-string v2, "ALLOWED_IN_BACKGROUND_PROCESS"

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    monitor-exit v4

    .line 125
    :goto_1
    move-object v0, v1

    .line 126
    goto/16 :goto_3

    .line 127
    .line 128
    :catchall_0
    move-exception p0

    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :cond_2
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    .line 132
    .line 133
    monitor-exit v4

    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :cond_3
    iget v6, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->deviceId:I

    .line 137
    .line 138
    const/4 v8, -0x1

    .line 139
    if-eqz v6, :cond_4

    .line 140
    .line 141
    if-eq v6, v8, :cond_4

    .line 142
    .line 143
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/Vibration$Status;

    .line 144
    .line 145
    monitor-exit v4

    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :cond_4
    if-ne v6, v8, :cond_6

    .line 149
    .line 150
    iget v6, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 151
    .line 152
    iget-object v8, v0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 153
    .line 154
    if-nez v8, :cond_5

    .line 155
    .line 156
    const-class v8, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 157
    .line 158
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    check-cast v8, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 163
    .line 164
    iput-object v8, v0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 165
    .line 166
    :cond_5
    iget-object v8, v0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 167
    .line 168
    if-eqz v8, :cond_6

    .line 169
    .line 170
    invoke-virtual {v8, v6}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_6

    .line 175
    .line 176
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/Vibration$Status;

    .line 177
    .line 178
    monitor-exit v4

    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :cond_6
    iget-boolean v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    .line 182
    .line 183
    if-eqz v6, :cond_7

    .line 184
    .line 185
    sget-object v6, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 186
    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    check-cast v6, Ljava/util/HashSet;

    .line 192
    .line 193
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-nez v6, :cond_7

    .line 198
    .line 199
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    .line 200
    .line 201
    monitor-exit v4

    .line 202
    goto/16 :goto_3

    .line 203
    .line 204
    :cond_7
    iget-object v6, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 205
    .line 206
    invoke-virtual {v6, v5}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-nez v6, :cond_8

    .line 211
    .line 212
    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForUserSetting(Lcom/android/server/vibrator/Vibration$CallerInfo;)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-nez v6, :cond_8

    .line 217
    .line 218
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    .line 219
    .line 220
    monitor-exit v4

    .line 221
    goto :goto_3

    .line 222
    :cond_8
    iget-object v6, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 223
    .line 224
    invoke-virtual {v6, v9}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    const/16 v8, 0x31

    .line 229
    .line 230
    if-nez v6, :cond_c

    .line 231
    .line 232
    const/16 v6, 0x21

    .line 233
    .line 234
    if-eq v3, v6, :cond_9

    .line 235
    .line 236
    if-eq v3, v8, :cond_9

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_9
    iget v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 240
    .line 241
    if-eqz v6, :cond_a

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_a
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 245
    .line 246
    const-string v2, "VIBRATE_CALL"

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_b

    .line 253
    .line 254
    monitor-exit v4

    .line 255
    goto/16 :goto_1

    .line 256
    .line 257
    :cond_b
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/Vibration$Status;

    .line 258
    .line 259
    monitor-exit v4

    .line 260
    goto :goto_3

    .line 261
    :cond_c
    :goto_2
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 262
    .line 263
    invoke-virtual {v6}, Landroid/os/vibrator/VibrationConfig;->ignoreVibrationsOnWirelessCharger()Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_d

    .line 268
    .line 269
    iget-boolean v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    .line 270
    .line 271
    if-eqz v6, :cond_d

    .line 272
    .line 273
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/Vibration$Status;

    .line 274
    .line 275
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    goto :goto_3

    .line 277
    :cond_d
    :try_start_3
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings;->mNotificationManager:Landroid/app/INotificationManager;

    .line 278
    .line 279
    if-eqz v0, :cond_e

    .line 280
    .line 281
    if-ne v3, v8, :cond_e

    .line 282
    .line 283
    iget-object v3, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 284
    .line 285
    iget v6, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 286
    .line 287
    invoke-interface {v0, v3, v6}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_e

    .line 292
    .line 293
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_DISABLED_NOTIFICATION:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    .line 295
    :try_start_4
    monitor-exit v4

    .line 296
    goto :goto_3

    .line 297
    :catch_0
    move-exception v0

    .line 298
    const-string v3, "VibrationSettings"

    .line 299
    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    :cond_e
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    goto/16 :goto_1

    .line 317
    .line 318
    :goto_3
    if-eqz v0, :cond_f

    .line 319
    .line 320
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 321
    .line 322
    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 323
    .line 324
    .line 325
    return-object p0

    .line 326
    :cond_f
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 327
    .line 328
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 329
    .line 330
    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    iget-object v2, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 335
    .line 336
    iget v3, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 337
    .line 338
    const/4 v4, 0x3

    .line 339
    invoke-virtual {p0, v4, v0, v3, v2}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    .line 340
    .line 341
    .line 342
    move-result p0

    .line 343
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 344
    .line 345
    if-ne p0, v9, :cond_10

    .line 346
    .line 347
    invoke-virtual {p1, v9}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-eqz p1, :cond_10

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_10
    move v7, p0

    .line 355
    :goto_4
    if-eq p0, v7, :cond_11

    .line 356
    .line 357
    if-nez v7, :cond_11

    .line 358
    .line 359
    const-string p0, "Bypassing DND for vibrate from uid "

    .line 360
    .line 361
    const-string p1, "VibratorManagerService"

    .line 362
    .line 363
    invoke-static {v3, p0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_11
    if-eqz v7, :cond_13

    .line 367
    .line 368
    if-ne v7, v5, :cond_12

    .line 369
    .line 370
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 371
    .line 372
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    .line 373
    .line 374
    invoke-direct {p0, p1, v1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 375
    .line 376
    .line 377
    return-object p0

    .line 378
    :cond_12
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 379
    .line 380
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    .line 381
    .line 382
    invoke-direct {p0, p1, v1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 383
    .line 384
    .line 385
    return-object p0

    .line 386
    :cond_13
    return-object v1

    .line 387
    :catchall_1
    move-exception p0

    .line 388
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 389
    :try_start_6
    throw p0

    .line 390
    :goto_5
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 391
    throw p0
.end method

.method public final startVibrationLocked(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 5

    .line 1
    const-string/jumbo v0, "startVibrationLocked"

    .line 2
    .line 3
    .line 4
    const-wide/32 v1, 0x800000

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    iget-object v0, v0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnInputDevicesLocked(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/VibrationStepConductor;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    :try_start_4
    new-instance v3, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 56
    .line 57
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 60
    .line 61
    invoke-direct {v3, v4, p1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    .line 69
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return-object p0

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 77
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final startVibrationOnInputDevicesLocked(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 15
    .line 16
    iget v0, v0, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/HalVibration;->resolveEffects(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 26
    .line 27
    iget-object v7, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v7

    .line 30
    const/4 v1, 0x0

    .line 31
    move v8, v1

    .line 32
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge v8, v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/os/VibratorManager;

    .line 47
    .line 48
    iget v2, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 49
    .line 50
    iget-object v3, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v5, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->reason:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v6, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 55
    .line 56
    move-object v4, p1

    .line 57
    invoke-virtual/range {v1 .. v6}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v8, v8, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 68
    .line 69
    .line 70
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 72
    .line 73
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :goto_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final startVibrationOnThreadLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .locals 9

    .line 1
    const-string v0, "Start AppOpsManager operation errored for uid "

    .line 2
    .line 3
    const-string/jumbo v1, "startVibrationThreadLocked"

    .line 4
    .line 5
    .line 6
    const-wide/32 v2, 0x800000

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p1, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 13
    .line 14
    iget-object v4, v1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 17
    .line 18
    iget v6, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 19
    .line 20
    iget-object v7, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v8, 0x3

    .line 23
    invoke-virtual {v5, v8, v6, v7}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iget-object v4, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x1

    .line 31
    if-ne v5, v7, :cond_0

    .line 32
    .line 33
    invoke-virtual {v4, v7}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    move v5, v6

    .line 40
    :cond_0
    const/4 v4, 0x0

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    const/4 p0, 0x2

    .line 44
    if-eq v5, p0, :cond_1

    .line 45
    .line 46
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 47
    .line 48
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    .line 49
    .line 50
    invoke-direct {p0, p1, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :try_start_1
    const-string p0, "VibratorManagerService"

    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 67
    .line 68
    iget v0, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 81
    .line 82
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    .line 83
    .line 84
    invoke-direct {p0, p1, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_2
    :try_start_2
    const-string/jumbo v0, "vibration"

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v3, v0, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 100
    .line 101
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 102
    .line 103
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :try_start_3
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 105
    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    const-string p1, "VibrationThread"

    .line 109
    .line 110
    const-string v0, "Attempt to start vibration when one already running"

    .line 111
    .line 112
    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :try_start_4
    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 117
    .line 118
    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 119
    .line 120
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/Vibration$Status;

    .line 121
    .line 122
    invoke-direct {p0, p1, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    .line 124
    .line 125
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 126
    .line 127
    .line 128
    return-object p0

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    :try_start_5
    iput-object p1, v0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 132
    .line 133
    iget-object p0, v0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 136
    .line 137
    .line 138
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 139
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 140
    .line 141
    .line 142
    return-object v4

    .line 143
    :goto_0
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 144
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 145
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 146
    .line 147
    .line 148
    throw p0
.end method

.method public systemReady()V
    .locals 7

    .line 1
    const-string v0, "VibratorManagerService"

    .line 2
    .line 3
    const-string v1, "Initializing VibratorManager service..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "systemReady"

    .line 9
    .line 10
    .line 11
    const-wide/32 v1, 0x800000

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    const/4 v3, 0x1

    .line 19
    :try_start_0
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ge v0, v4, :cond_0

    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->reloadVibratorInfoIfNeeded()V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_3

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 49
    .line 50
    iget-object v4, v0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    iget-object v5, v0, Lcom/android/server/vibrator/InputDeviceDelegate;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-class v6, Landroid/hardware/input/InputManager;

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroid/hardware/input/InputManager;

    .line 62
    .line 63
    iput-object v5, v0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    .line 64
    .line 65
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 66
    :try_start_2
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 67
    .line 68
    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    invoke-direct {v4, p0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 71
    .line 72
    .line 73
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :try_start_3
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 77
    .line 78
    check-cast v6, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_1

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 87
    .line 88
    check-cast v0, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    goto :goto_2

    .line 96
    :cond_1
    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->onCustomSystemReady()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter v0

    .line 106
    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 107
    .line 108
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 109
    const-string p0, "VibratorManagerService"

    .line 110
    .line 111
    const-string v0, "VibratorManager service initialized"

    .line 112
    .line 113
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :catchall_2
    move-exception p0

    .line 121
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 122
    throw p0

    .line 123
    :goto_2
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 124
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 125
    :catchall_3
    move-exception v0

    .line 126
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 127
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 128
    :goto_3
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v4

    .line 131
    :try_start_b
    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 132
    .line 133
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 134
    const-string p0, "VibratorManagerService"

    .line 135
    .line 136
    const-string v3, "VibratorManager service initialized"

    .line 137
    .line 138
    invoke-static {p0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :catchall_4
    move-exception p0

    .line 146
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 147
    throw p0
.end method

.method public final unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->unregisterVibratorStateListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    return p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    iget-object v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/Vibration$CallerInfo;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v4, v3}, Lcom/android/server/vibrator/VibrationScaler;->getEffectStrength(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Landroid/os/vibrator/PrebakedSegment;->applyEffectStrength(I)Landroid/os/vibrator/PrebakedSegment;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v2, 0x0

    .line 61
    :goto_1
    iget v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method public updateServiceState()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "VibratorManagerService"

    .line 5
    .line 6
    const-string v2, "Updating device state..."

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 14
    .line 15
    iget-boolean v2, v2, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDeviceVibrators(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v3, v4, :cond_0

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :cond_1
    iget-object v3, v3, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 56
    .line 57
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/Vibration$CallerInfo;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    :cond_2
    const-string v4, "VibratorManagerService"

    .line 66
    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v6, "Canceling vibration because settings changed: "

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    const-string v1, "input devices changed"

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v1, v3, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    .line 83
    .line 84
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 95
    .line 96
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 97
    .line 98
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/Vibration$Status;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    invoke-direct {v1, v3, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v1, v2}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 105
    .line 106
    .line 107
    :cond_4
    monitor-exit v0

    .line 108
    return-void

    .line 109
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    throw p0
.end method

.method public final vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v5, p3

    .line 6
    .line 7
    move-object/from16 v7, p4

    .line 8
    .line 9
    move-object/from16 v1, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v8, p7

    .line 14
    .line 15
    const-string v9, "Pipelining vibration "

    .line 16
    .line 17
    const-string v10, "Starting vibrate for vibration "

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v8, :cond_0

    .line 21
    .line 22
    const-string v0, "VibratorManagerService"

    .line 23
    .line 24
    const-string/jumbo v1, "token must not be null"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    if-ne v4, v11, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    const-string v13, "android.permission.UPDATE_APP_OPS_STATS"

    .line 60
    .line 61
    invoke-virtual {v4, v13, v11, v12, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    const-string v4, "VibratorManagerService"

    .line 65
    .line 66
    if-nez v7, :cond_3

    .line 67
    .line 68
    const-string v0, "effect must not be null"

    .line 69
    .line 70
    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-object v1, v2

    .line 74
    goto/16 :goto_f

    .line 75
    .line 76
    :cond_3
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/os/CombinedVibration;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    const-string v4, "VibratorManagerService"

    .line 80
    .line 81
    const-string/jumbo v11, "vibrate - uid: "

    .line 82
    .line 83
    .line 84
    const-string v12, ", opPkg: "

    .line 85
    .line 86
    const-string v13, ", effect: "

    .line 87
    .line 88
    invoke-static {v3, v11, v12, v5, v13}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v12, ", attrs: "

    .line 96
    .line 97
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v12, ", reason: "

    .line 104
    .line 105
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v12, ", token: "

    .line 112
    .line 113
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    instance-of v4, v7, Landroid/os/CombinedVibration$Mono;

    .line 127
    .line 128
    const/4 v11, 0x0

    .line 129
    if-eqz v4, :cond_4

    .line 130
    .line 131
    move-object v4, v7

    .line 132
    check-cast v4, Landroid/os/CombinedVibration$Mono;

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Landroid/os/VibrationEffect$Composed;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    instance-of v4, v7, Landroid/os/CombinedVibration$Stereo;

    .line 142
    .line 143
    if-nez v4, :cond_6

    .line 144
    .line 145
    instance-of v4, v7, Landroid/os/CombinedVibration$Sequential;

    .line 146
    .line 147
    if-eqz v4, :cond_5

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    move-object v4, v2

    .line 151
    goto :goto_2

    .line 152
    :cond_6
    :goto_1
    move-object v4, v7

    .line 153
    check-cast v4, Landroid/os/CombinedVibration$Stereo;

    .line 154
    .line 155
    invoke-virtual {v4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Landroid/os/VibrationEffect$Composed;

    .line 164
    .line 165
    :goto_2
    iput-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 166
    .line 167
    const/4 v12, -0x1

    .line 168
    if-nez v4, :cond_7

    .line 169
    .line 170
    invoke-virtual {v0, v12, v8}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 171
    .line 172
    .line 173
    return-object v2

    .line 174
    :cond_7
    invoke-virtual/range {p5 .. p5}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    sget-object v13, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    .line 179
    .line 180
    iget-object v14, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 181
    .line 182
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Composed;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    invoke-virtual {v14}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    .line 187
    .line 188
    .line 189
    move-result v14

    .line 190
    aget v13, v13, v14

    .line 191
    .line 192
    const/4 v15, 0x4

    .line 193
    const/4 v2, 0x1

    .line 194
    if-eq v13, v2, :cond_b

    .line 195
    .line 196
    const/4 v14, 0x2

    .line 197
    if-eq v13, v14, :cond_a

    .line 198
    .line 199
    const/4 v14, 0x3

    .line 200
    if-eq v13, v14, :cond_9

    .line 201
    .line 202
    if-eq v13, v15, :cond_8

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_8
    if-nez v4, :cond_c

    .line 206
    .line 207
    const/16 v4, 0x13

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_9
    const/16 v4, 0x21

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_a
    const/16 v4, 0x31

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_b
    const/16 v4, 0x12

    .line 217
    .line 218
    :cond_c
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v14, "converted usage = "

    .line 221
    .line 222
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v4}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v14

    .line 229
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v14, "("

    .line 233
    .line 234
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v14, ")"

    .line 241
    .line 242
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    const-string v14, "VibratorManagerService"

    .line 250
    .line 251
    invoke-static {v14, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    iget-object v13, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 255
    .line 256
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Composed;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 257
    .line 258
    .line 259
    move-result-object v13

    .line 260
    sget-object v14, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 261
    .line 262
    if-ne v13, v14, :cond_d

    .line 263
    .line 264
    const-string v13, "INTENSITY_MAX"

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_d
    iget-object v13, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 268
    .line 269
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Composed;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    sget-object v14, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 274
    .line 275
    if-ne v13, v14, :cond_e

    .line 276
    .line 277
    const-string v13, "INTENSITY_MIN"

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_e
    const/4 v13, 0x0

    .line 281
    :goto_4
    if-eqz v13, :cond_f

    .line 282
    .line 283
    new-instance v14, Landroid/os/VibrationAttributes$Builder;

    .line 284
    .line 285
    invoke-direct {v14, v1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v14, v4}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v1, v13}, Landroid/os/VibrationAttributes$Builder;->semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    :goto_5
    move-object v13, v1

    .line 301
    goto :goto_6

    .line 302
    :cond_f
    new-instance v13, Landroid/os/VibrationAttributes$Builder;

    .line 303
    .line 304
    invoke-direct {v13, v1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v13, v4}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    goto :goto_5

    .line 316
    :goto_6
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 317
    .line 318
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    instance-of v1, v1, Landroid/os/vibrator/SemHapticSegment;

    .line 327
    .line 328
    if-eqz v1, :cond_16

    .line 329
    .line 330
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 331
    .line 332
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    check-cast v1, Landroid/os/vibrator/SemHapticSegment;

    .line 341
    .line 342
    new-instance v4, Lcom/android/server/vibrator/SemVibrationBundle;

    .line 343
    .line 344
    invoke-virtual {v1}, Landroid/os/vibrator/SemHapticSegment;->getType()I

    .line 345
    .line 346
    .line 347
    move-result v14

    .line 348
    iget-object v15, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 349
    .line 350
    invoke-virtual {v15}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 351
    .line 352
    .line 353
    move-result v15

    .line 354
    invoke-virtual {v0, v13}, Lcom/android/server/vibrator/VibratorManagerService;->getMagnitudeByUsage(Landroid/os/VibrationAttributes;)I

    .line 355
    .line 356
    .line 357
    move-result v11

    .line 358
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 359
    .line 360
    .line 361
    iput-object v8, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    .line 362
    .line 363
    iput-object v7, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    .line 364
    .line 365
    iput v14, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    .line 366
    .line 367
    iput v15, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    .line 368
    .line 369
    iput v11, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    .line 370
    .line 371
    iput-object v13, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    .line 372
    .line 373
    iput v3, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    .line 374
    .line 375
    move/from16 v11, p2

    .line 376
    .line 377
    iput v11, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mDeviceId:I

    .line 378
    .line 379
    iput-object v5, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    .line 380
    .line 381
    iput-object v6, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    .line 382
    .line 383
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 384
    .line 385
    iget-object v5, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 386
    .line 387
    invoke-virtual {v1}, Landroid/os/vibrator/SemHapticSegment;->getMagnitude()I

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    if-eq v6, v12, :cond_10

    .line 392
    .line 393
    invoke-virtual {v1}, Landroid/os/vibrator/SemHapticSegment;->getMagnitude()I

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    iput v6, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    .line 398
    .line 399
    new-instance v6, Landroid/os/VibrationAttributes$Builder;

    .line 400
    .line 401
    iget-object v11, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    .line 402
    .line 403
    invoke-direct {v6, v11}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 404
    .line 405
    .line 406
    const-string v11, "INDIVIDUAL_INTENSITY"

    .line 407
    .line 408
    invoke-virtual {v6, v11}, Landroid/os/VibrationAttributes$Builder;->semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-virtual {v6}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    iput-object v6, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    .line 417
    .line 418
    :cond_10
    sget-boolean v6, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CUSTOM_PATTERN:Z

    .line 419
    .line 420
    if-eqz v6, :cond_11

    .line 421
    .line 422
    invoke-virtual {v1}, Landroid/os/vibrator/SemHapticSegment;->isCustomIndexValid()Z

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    if-eqz v6, :cond_11

    .line 427
    .line 428
    new-instance v6, Lcom/android/server/vibrator/SemCustomVibration;

    .line 429
    .line 430
    invoke-direct {v6, v3, v4, v1, v5}, Lcom/android/server/vibrator/SemCustomVibration;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/SemVibrationBundle;Landroid/os/vibrator/SemHapticSegment;Lcom/android/server/vibrator/VibrationSettings;)V

    .line 431
    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_11
    sget v1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sMotorType:I

    .line 435
    .line 436
    if-ne v1, v2, :cond_12

    .line 437
    .line 438
    const v1, 0xc3cc

    .line 439
    .line 440
    .line 441
    if-ne v14, v1, :cond_12

    .line 442
    .line 443
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 444
    .line 445
    if-eqz v1, :cond_12

    .line 446
    .line 447
    const/16 v1, 0x12

    .line 448
    .line 449
    invoke-virtual {v5, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentMagnitude(I)I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    iput v1, v4, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    .line 454
    .line 455
    new-instance v6, Lcom/android/server/vibrator/SemDcVibration;

    .line 456
    .line 457
    invoke-direct {v6, v4}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    .line 458
    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_12
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-nez v1, :cond_14

    .line 466
    .line 467
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HYBRID_HAPTIC()Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-eqz v1, :cond_13

    .line 472
    .line 473
    goto :goto_7

    .line 474
    :cond_13
    new-instance v6, Lcom/android/server/vibrator/SemPatternVibration;

    .line 475
    .line 476
    invoke-direct {v6, v4}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    .line 477
    .line 478
    .line 479
    const-string v1, ""

    .line 480
    .line 481
    iput-object v1, v6, Lcom/android/server/vibrator/SemPatternVibration;->mIsExecutablePkg:Ljava/lang/String;

    .line 482
    .line 483
    const/4 v1, 0x0

    .line 484
    iput-boolean v1, v6, Lcom/android/server/vibrator/SemPatternVibration;->mHasEngineData:Z

    .line 485
    .line 486
    goto :goto_8

    .line 487
    :cond_14
    :goto_7
    new-instance v6, Lcom/android/server/vibrator/SemIndexVibration;

    .line 488
    .line 489
    invoke-direct {v6, v4}, Lcom/android/server/vibrator/SemVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    .line 490
    .line 491
    .line 492
    :goto_8
    invoke-virtual {v6}, Lcom/android/server/vibrator/SemVibration;->getVibration()Lcom/android/server/vibrator/HalVibration;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    if-nez v1, :cond_15

    .line 497
    .line 498
    invoke-virtual {v0, v12, v8}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 499
    .line 500
    .line 501
    const-string v0, "VibratorManagerService"

    .line 502
    .line 503
    const-string v1, "The vibration was not generated normally."

    .line 504
    .line 505
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    const/4 v1, 0x0

    .line 509
    return-object v1

    .line 510
    :cond_15
    const-string v3, "VibratorManagerService"

    .line 511
    .line 512
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move v15, v2

    .line 520
    goto :goto_9

    .line 521
    :cond_16
    move/from16 v11, p2

    .line 522
    .line 523
    new-instance v12, Lcom/android/server/vibrator/HalVibration;

    .line 524
    .line 525
    new-instance v14, Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 526
    .line 527
    move-object v1, v14

    .line 528
    move v15, v2

    .line 529
    move-object v2, v13

    .line 530
    move/from16 v3, p1

    .line 531
    .line 532
    move/from16 v4, p2

    .line 533
    .line 534
    move-object/from16 v5, p3

    .line 535
    .line 536
    move-object/from16 v6, p6

    .line 537
    .line 538
    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/Vibration$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-direct {v12, v8, v7, v14}, Lcom/android/server/vibrator/HalVibration;-><init>(Landroid/os/IBinder;Landroid/os/CombinedVibration;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0, v13}, Lcom/android/server/vibrator/VibratorManagerService;->getMagnitudeByUsage(Landroid/os/VibrationAttributes;)I

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    iput v1, v12, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    .line 549
    .line 550
    move-object v1, v12

    .line 551
    :goto_9
    invoke-virtual {v0, v1, v7}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/HalVibration;Landroid/os/CombinedVibration;)V

    .line 552
    .line 553
    .line 554
    const/4 v2, 0x4

    .line 555
    invoke-virtual {v13, v2}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eqz v2, :cond_17

    .line 560
    .line 561
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 562
    .line 563
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 564
    .line 565
    .line 566
    :cond_17
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 567
    .line 568
    monitor-enter v2

    .line 569
    :try_start_1
    const-string v3, "VibratorManagerService"

    .line 570
    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    iget-wide v5, v1, Lcom/android/server/vibrator/Vibration;->id:J

    .line 577
    .line 578
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    iget-object v3, v1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 589
    .line 590
    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/Vibration$CallerInfo;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    if-nez v3, :cond_18

    .line 595
    .line 596
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationForOngoingLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    goto :goto_a

    .line 601
    :catchall_0
    move-exception v0

    .line 602
    goto/16 :goto_e

    .line 603
    .line 604
    :cond_18
    :goto_a
    if-nez v3, :cond_1c

    .line 605
    .line 606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 607
    .line 608
    .line 609
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :try_start_2
    iget-object v5, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 611
    .line 612
    if-eqz v5, :cond_19

    .line 613
    .line 614
    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 615
    .line 616
    invoke-virtual {v5}, Landroid/os/ExternalVibration;->mute()Z

    .line 617
    .line 618
    .line 619
    iget-object v5, v1, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 620
    .line 621
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 622
    .line 623
    iget-object v6, v6, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 624
    .line 625
    invoke-virtual {v5, v6}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 626
    .line 627
    .line 628
    new-instance v5, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 629
    .line 630
    sget-object v6, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    .line 631
    .line 632
    iget-object v7, v1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 633
    .line 634
    invoke-direct {v5, v6, v7}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 635
    .line 636
    .line 637
    const/4 v6, 0x0

    .line 638
    invoke-virtual {v0, v5, v6}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 639
    .line 640
    .line 641
    goto :goto_b

    .line 642
    :catchall_1
    move-exception v0

    .line 643
    goto :goto_c

    .line 644
    :cond_19
    iget-object v5, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 645
    .line 646
    if-eqz v5, :cond_1b

    .line 647
    .line 648
    iget-object v5, v5, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 649
    .line 650
    iget-object v6, v5, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 651
    .line 652
    iget v7, v6, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 653
    .line 654
    iget-object v8, v1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 655
    .line 656
    iget v8, v8, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 657
    .line 658
    if-ne v7, v8, :cond_1a

    .line 659
    .line 660
    iget-object v6, v6, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 661
    .line 662
    const/16 v7, 0x8

    .line 663
    .line 664
    invoke-virtual {v6, v7}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 665
    .line 666
    .line 667
    move-result v6

    .line 668
    if-eqz v6, :cond_1a

    .line 669
    .line 670
    iget-object v6, v1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 671
    .line 672
    iget-object v6, v6, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 673
    .line 674
    invoke-virtual {v6, v7}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 675
    .line 676
    .line 677
    move-result v6

    .line 678
    if-eqz v6, :cond_1a

    .line 679
    .line 680
    invoke-virtual {v5}, Lcom/android/server/vibrator/HalVibration;->isRepeating()Z

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    if-nez v5, :cond_1a

    .line 685
    .line 686
    const-string v5, "VibratorManagerService"

    .line 687
    .line 688
    new-instance v6, Ljava/lang/StringBuilder;

    .line 689
    .line 690
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    iget-wide v7, v1, Lcom/android/server/vibrator/Vibration;->id:J

    .line 694
    .line 695
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v6

    .line 702
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    .line 704
    .line 705
    goto :goto_b

    .line 706
    :cond_1a
    iget-object v5, v1, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 707
    .line 708
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 709
    .line 710
    iget-object v6, v6, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 711
    .line 712
    iget-object v6, v6, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 713
    .line 714
    invoke-virtual {v5, v6}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 715
    .line 716
    .line 717
    iget-object v5, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 718
    .line 719
    new-instance v6, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 720
    .line 721
    sget-object v7, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    .line 722
    .line 723
    iget-object v8, v1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 724
    .line 725
    invoke-direct {v6, v7, v8}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 726
    .line 727
    .line 728
    const/4 v7, 0x0

    .line 729
    invoke-virtual {v5, v6, v7}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 730
    .line 731
    .line 732
    :cond_1b
    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationLocked(Lcom/android/server/vibrator/HalVibration;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 733
    .line 734
    .line 735
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 736
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    .line 738
    .line 739
    move-object v3, v5

    .line 740
    goto :goto_d

    .line 741
    :goto_c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    .line 743
    .line 744
    throw v0

    .line 745
    :cond_1c
    :goto_d
    if-eqz v3, :cond_1d

    .line 746
    .line 747
    invoke-virtual {v0, v1, v3, v15}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 748
    .line 749
    .line 750
    :cond_1d
    invoke-virtual {v0, v1, v13}, Lcom/android/server/vibrator/VibratorManagerService;->reportVibrationInfo(Lcom/android/server/vibrator/HalVibration;Landroid/os/VibrationAttributes;)V

    .line 751
    .line 752
    .line 753
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    .line 754
    .line 755
    iget-object v3, v1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 756
    .line 757
    iget-object v3, v3, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 758
    .line 759
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 760
    .line 761
    .line 762
    move-result v3

    .line 763
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/vibrator/VibratorHqmData;->increaseCount(I)V

    .line 764
    .line 765
    .line 766
    monitor-exit v2

    .line 767
    return-object v1

    .line 768
    :goto_e
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 769
    throw v0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    move-object v1, v0

    .line 772
    const-string v0, "Encountered issue when verifying CombinedVibrationEffect."

    .line 773
    .line 774
    invoke-static {v4, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    .line 776
    .line 777
    const/4 v1, 0x0

    .line 778
    :goto_f
    return-object v1
.end method

.method public vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string/jumbo v2, "vibrate, reason = "

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object/from16 v7, p6

    .line 11
    .line 12
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-wide/32 v9, 0x800000

    .line 20
    .line 21
    .line 22
    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object v5, p4

    .line 26
    move-object/from16 v1, p5

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p0, v1, p4}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-string v2, "android.permission.VIBRATE"

    .line 35
    .line 36
    const-string/jumbo v3, "vibrate"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object v1, p0

    .line 43
    move v2, p1

    .line 44
    move v3, p2

    .line 45
    move-object v4, p3

    .line 46
    move-object v5, p4

    .line 47
    move-object/from16 v7, p6

    .line 48
    .line 49
    move-object/from16 v8, p7

    .line 50
    .line 51
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method
