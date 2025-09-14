.class public final Lcom/android/server/power/LowPowerStandbyController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;


# instance fields
.field public mActiveDuringMaintenance:Z

.field public final mActivityManager:Ljava/util/function/Supplier;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

.field public final mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

.field public mEnableCustomPolicy:Z

.field public mEnableStandbyPorts:Z

.field public mEnabledByDefaultConfig:Z

.field public mForceActive:Z

.field public final mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

.field public mIdleSinceNonInteractive:Z

.field public mIsActive:Z

.field public mIsDeviceIdle:Z

.field public mIsEnabled:Z

.field public mIsInteractive:Z

.field public mLastInteractiveTimeElapsed:J

.field public final mLocalService:Lcom/android/server/power/LowPowerStandbyController$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public final mLowPowerStandbyManagingPackages:Ljava/util/List;

.field public final mOnStandbyTimeoutExpired:Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

.field public final mPackageBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

.field public final mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

.field public mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

.field public final mPolicyFile:Ljava/io/File;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

.field public final mStandbyPortLocks:Ljava/util/List;

.field public mStandbyTimeoutConfig:I

.field public mSupportedConfig:Z

.field public final mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

.field public final mUidAllowedReasons:Landroid/util/SparseIntArray;

.field public final mUserReceiver:Lcom/android/server/power/LowPowerStandbyController$1;


# direct methods
.method public static -$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto :goto_1

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    if-eqz p2, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    and-int/2addr v1, p2

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    or-int/2addr v1, p2

    .line 31
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    and-int/2addr p1, p2

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    monitor-exit v0

    .line 51
    :goto_1
    return-void

    .line 52
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public static -$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto :goto_1

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    if-eqz p2, :cond_3

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    and-int/2addr v1, p2

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    not-int v2, p2

    .line 33
    and-int/2addr v1, v2

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 47
    .line 48
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    and-int/2addr p1, p2

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 63
    .line 64
    .line 65
    :cond_3
    monitor-exit v0

    .line 66
    :goto_1
    return-void

    .line 67
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v4, "DEFAULT_POLICY"

    .line 13
    .line 14
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/os/PowerManager$LowPowerStandbyPolicy;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;Ljava/util/function/Supplier;Ljava/io/File;)V
    .locals 2

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
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$LocalService;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$LocalService;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyController$LocalService;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLowPowerStandbyManagingPackages:Ljava/util/List;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    .line 45
    .line 46
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$1;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LowPowerStandbyController$1;-><init>(Lcom/android/server/power/LowPowerStandbyController;I)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    .line 53
    .line 54
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    .line 60
    .line 61
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    .line 67
    .line 68
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$1;

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LowPowerStandbyController$1;-><init>(Lcom/android/server/power/LowPowerStandbyController;I)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    .line 75
    .line 76
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$1;

    .line 77
    .line 78
    const/4 v1, 0x2

    .line 79
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LowPowerStandbyController$1;-><init>(Lcom/android/server/power/LowPowerStandbyController;I)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    new-instance p1, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 87
    .line 88
    invoke-direct {p1, p0, p2}, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 92
    .line 93
    iput-object p3, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 94
    .line 95
    new-instance p2, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    .line 96
    .line 97
    invoke-direct {p2, p0, p1}, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;-><init>(Lcom/android/server/power/LowPowerStandbyController;Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;)V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    .line 101
    .line 102
    iput-object p4, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    .line 103
    .line 104
    iput-object p5, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManager:Ljava/util/function/Supplier;

    .line 105
    .line 106
    iput-object p6, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicyFile:Ljava/io/File;

    .line 107
    .line 108
    return-void
.end method

.method public static writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "value"

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final acquireStandbyPorts(Landroid/os/IBinder;Ljava/util/List;I)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->getPortNumber()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    const v2, 0xffff

    .line 24
    .line 25
    .line 26
    if-gt v1, v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string/jumbo p1, "port out of range:"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    .line 43
    .line 44
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/IBinder;ILjava/util/List;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter p2

    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->findIndexOfStandbyPorts(Landroid/os/IBinder;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, -0x1

    .line 55
    if-eq v1, v2, :cond_2

    .line 56
    .line 57
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v1, 0x0

    .line 62
    :try_start_1
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_2
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    .line 66
    .line 67
    check-cast p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iget-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, p3}, Lcom/android/server/power/LowPowerStandbyController;->isPackageExempt(I)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 89
    .line 90
    const/4 p3, 0x5

    .line 91
    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 96
    .line 97
    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    const-string p0, "LowPowerStandbyController"

    .line 106
    .line 107
    const-string p1, "StandbyPorts token already died"

    .line 108
    .line 109
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_1
    monitor-exit p2

    .line 113
    return-void

    .line 114
    :goto_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    const-string v1, "  "

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 9
    .line 10
    .line 11
    const-string p1, "Low Power Standby Controller:"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    const-string v1, "mIsActive="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 30
    .line 31
    .line 32
    const-string v1, "mIsEnabled="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "mSupportedConfig="

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 51
    .line 52
    .line 53
    const-string v1, "mEnabledByDefaultConfig="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v1, "mStandbyTimeoutConfig="

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 72
    .line 73
    .line 74
    const-string v1, "mEnableCustomPolicy="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 82
    .line 83
    .line 84
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    .line 85
    .line 86
    if-nez v1, :cond_0

    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 89
    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_0
    :goto_0
    const-string v1, "mIsInteractive="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 104
    .line 105
    .line 106
    const-string v1, "mLastInteractiveTime="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-wide v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 114
    .line 115
    .line 116
    const-string v1, "mIdleSinceNonInteractive="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 124
    .line 125
    .line 126
    const-string v1, "mIsDeviceIdle="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 134
    .line 135
    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v2, "Allowed UIDs="

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-eqz v1, :cond_2

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 159
    .line 160
    .line 161
    const-string/jumbo v2, "mPolicy:"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 168
    .line 169
    .line 170
    const-string v2, "mIdentifier="

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v2, "mExemptPackages="

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v2, ","

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v2, "mAllowedReasons="

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-static {v2}, Landroid/os/PowerManager;->lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v2, "mAllowedFeatures="

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v2, ","

    .line 222
    .line 223
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 235
    .line 236
    .line 237
    :cond_2
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 238
    .line 239
    .line 240
    const-string v1, "UID allowed reasons:"

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 246
    .line 247
    .line 248
    const/4 v1, 0x0

    .line 249
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 250
    .line 251
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-ge v1, v2, :cond_4

    .line 256
    .line 257
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 258
    .line 259
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-lez v2, :cond_3

    .line 264
    .line 265
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 266
    .line 267
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 272
    .line 273
    .line 274
    const-string v2, ": "

    .line 275
    .line 276
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 280
    .line 281
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    invoke-static {v2}, Landroid/os/PowerManager;->lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_4
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getActiveStandbyPorts()Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    check-cast p0, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-nez v1, :cond_6

    .line 309
    .line 310
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 311
    .line 312
    .line 313
    const-string v1, "Active standby ports locks:"

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_5

    .line 330
    .line 331
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    check-cast v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    .line 336
    .line 337
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_5
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 346
    .line 347
    .line 348
    :cond_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    throw p0
.end method

.method public final dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const-wide v1, 0x10b00000038L

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    .line 14
    .line 15
    const-wide v4, 0x10800000001L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 21
    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 24
    .line 25
    const-wide v4, 0x10800000002L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 31
    .line 32
    .line 33
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 34
    .line 35
    const-wide v4, 0x10800000003L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 41
    .line 42
    .line 43
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 44
    .line 45
    const-wide v4, 0x10800000004L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 51
    .line 52
    .line 53
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 54
    .line 55
    const-wide v4, 0x10800000005L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 61
    .line 62
    .line 63
    iget-wide v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    .line 64
    .line 65
    const-wide v5, 0x10300000006L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 71
    .line 72
    .line 73
    iget v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    .line 74
    .line 75
    const-wide v4, 0x10500000007L

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 81
    .line 82
    .line 83
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 84
    .line 85
    const-wide v4, 0x10800000008L

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 91
    .line 92
    .line 93
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 94
    .line 95
    const-wide v4, 0x10800000009L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    array-length v4, v3

    .line 108
    const/4 v5, 0x0

    .line 109
    :goto_0
    if-ge v5, v4, :cond_0

    .line 110
    .line 111
    aget v6, v3, v5

    .line 112
    .line 113
    const-wide v7, 0x2050000000aL

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_3

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-eqz p0, :cond_3

    .line 131
    .line 132
    const-wide v3, 0x10b0000000bL

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const-wide v6, 0x10900000001L

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_1

    .line 166
    .line 167
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Ljava/lang/String;

    .line 172
    .line 173
    const-wide v7, 0x20900000002L

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    const-wide v6, 0x10500000003L

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_2

    .line 207
    .line 208
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    check-cast v5, Ljava/lang/String;

    .line 213
    .line 214
    const-wide v6, 0x20900000004L

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_2
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 224
    .line 225
    .line 226
    :cond_3
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 227
    .line 228
    .line 229
    monitor-exit v0

    .line 230
    return-void

    .line 231
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    throw p0
.end method

.method public final enqueueNotifyAllowlistChangedLocked()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 7
    .line 8
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final findIndexOfStandbyPorts(Landroid/os/IBinder;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    .line 3
    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    .line 23
    .line 24
    if-ne v1, p1, :cond_0

    .line 25
    .line 26
    return v0

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, -0x1

    .line 31
    return p0
.end method

.method public final getActiveStandbyPorts()Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    .line 25
    .line 26
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    .line 43
    .line 44
    iget v4, v3, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mUid:I

    .line 45
    .line 46
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    move-object v5, v2

    .line 55
    check-cast v5, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    iget-object v3, v3, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mPorts:Ljava/util/List;

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    monitor-exit v1

    .line 72
    return-object v0

    .line 73
    :cond_3
    :goto_1
    monitor-exit v1

    .line 74
    return-object v0

    .line 75
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final getAllowlistUidsLocked()[I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/os/UserManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/UserManager;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Landroid/util/ArraySet;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    new-array p0, v3, [I

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    invoke-virtual {v2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    move v4, v3

    .line 42
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-ge v4, v5, :cond_2

    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 51
    .line 52
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 61
    .line 62
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    and-int/2addr v6, v2

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    new-array v5, v4, [I

    .line 110
    .line 111
    move v6, v3

    .line 112
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-ge v6, v7, :cond_4

    .line 117
    .line 118
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    check-cast v7, Landroid/os/UserHandle;

    .line 123
    .line 124
    invoke-virtual {v7, v2}, Landroid/os/UserHandle;->getUid(I)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    aput v7, v5, v6

    .line 129
    .line 130
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    move v2, v3

    .line 134
    :goto_2
    if-ge v2, v4, :cond_3

    .line 135
    .line 136
    aget v6, v5, v2

    .line 137
    .line 138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    new-array p0, p0, [I

    .line 153
    .line 154
    :goto_3
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-ge v3, v0, :cond_6

    .line 159
    .line 160
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    aput v0, p0, v3

    .line 171
    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 176
    .line 177
    .line 178
    return-object p0
.end method

.method public final getExemptPackageAppIdsLocked()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    :try_start_0
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-object v1
.end method

.method public final getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    sget-object p0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 22
    .line 23
    :cond_1
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :cond_2
    sget-object p0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final isEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final isPackageExempt(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    monitor-exit v0

    .line 34
    return p0

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final loadPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .locals 15

    .line 1
    const-string v0, "LowPowerStandbyController"

    .line 2
    .line 3
    new-instance v1, Landroid/util/AtomicFile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicyFile:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    new-instance v3, Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v4, Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v7, v2

    .line 38
    move v8, v6

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    const/4 v10, 0x1

    .line 44
    if-eq v9, v10, :cond_a

    .line 45
    .line 46
    const/4 v11, 0x2

    .line 47
    if-eq v9, v11, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    if-ne v9, v10, :cond_4

    .line 59
    .line 60
    const-string v9, "low-power-standby-policy"

    .line 61
    .line 62
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_1

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v4, "Invalid root tag: "

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception p0

    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :cond_3
    :goto_1
    return-object v2

    .line 98
    :catchall_0
    move-exception v3

    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_4
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    const/4 v13, 0x3

    .line 106
    sparse-switch v9, :sswitch_data_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :sswitch_0
    const-string v9, "exempt-package"

    .line 111
    .line 112
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_5

    .line 117
    .line 118
    move v9, v10

    .line 119
    goto :goto_3

    .line 120
    :sswitch_1
    const-string v9, "allowed-reasons"

    .line 121
    .line 122
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_5

    .line 127
    .line 128
    move v9, v11

    .line 129
    goto :goto_3

    .line 130
    :sswitch_2
    const-string v9, "allowed-features"

    .line 131
    .line 132
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eqz v9, :cond_5

    .line 137
    .line 138
    move v9, v13

    .line 139
    goto :goto_3

    .line 140
    :sswitch_3
    const-string v9, "identifier"

    .line 141
    .line 142
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    if-eqz v9, :cond_5

    .line 147
    .line 148
    move v9, v6

    .line 149
    goto :goto_3

    .line 150
    :cond_5
    :goto_2
    const/4 v9, -0x1

    .line 151
    :goto_3
    const-string/jumbo v14, "value"

    .line 152
    .line 153
    .line 154
    if-eqz v9, :cond_9

    .line 155
    .line 156
    if-eq v9, v10, :cond_8

    .line 157
    .line 158
    if-eq v9, v11, :cond_7

    .line 159
    .line 160
    if-eq v9, v13, :cond_6

    .line 161
    .line 162
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v10, "Invalid tag: "

    .line 168
    .line 169
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_6
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_7
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_8
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_9
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_a
    new-instance v5, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 215
    .line 216
    invoke-direct {v5, v7, v3, v8, v4}, Landroid/os/PowerManager$LowPowerStandbyPolicy;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    .line 218
    .line 219
    if-eqz p0, :cond_b

    .line 220
    .line 221
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    .line 222
    .line 223
    .line 224
    :cond_b
    return-object v5

    .line 225
    :goto_4
    if-eqz p0, :cond_c

    .line 226
    .line 227
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :catchall_1
    move-exception p0

    .line 232
    :try_start_7
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    :cond_c
    :goto_5
    throw v3
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0

    .line 236
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v4, "Failed to read policy file "

    .line 239
    .line 240
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .line 256
    .line 257
    :catch_1
    return-object v2

    .line 258
    nop

    .line 259
    :sswitch_data_0
    .sparse-switch
        -0x60775357 -> :sswitch_3
        -0x2d963d3e -> :sswitch_2
        0x5007738a -> :sswitch_1
        0x79ffd458 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onDisabledLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 27
    .line 28
    .line 29
    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/server/PowerAllowlistInternal;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/android/server/PowerAllowlistInternal;->unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onInteractive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final onNonInteractive()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 12
    .line 13
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    .line 16
    .line 17
    iget v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iget v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    .line 28
    .line 29
    int-to-long v3, v3

    .line 30
    add-long v7, v0, v3

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 33
    .line 34
    iget-object v10, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    iget-object v11, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 37
    .line 38
    const-string v9, "LowPowerStandbyController.StandbyTimeout"

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 45
    .line 46
    .line 47
    monitor-exit v2

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public onSettingsChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    .line 7
    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 10
    .line 11
    if-eq v2, v1, :cond_2

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerListeners()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDisabledLocked()V

    .line 35
    .line 36
    .line 37
    :goto_1
    const-string v1, "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/power/LowPowerStandbyController;->sendExplicitBroadcast(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    :goto_2
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final registerListeners()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v1, "package"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x3e8

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    .line 57
    .line 58
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "android.intent.action.USER_ADDED"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    .line 82
    .line 83
    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/android/server/PowerAllowlistInternal;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    .line 95
    .line 96
    invoke-interface {v0, v1}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    .line 100
    .line 101
    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mRegistered:Z

    .line 102
    .line 103
    if-eqz v0, :cond_0

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManager:Ljava/util/function/Supplier;

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/app/IActivityManager;

    .line 115
    .line 116
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    .line 117
    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    :catch_0
    :goto_0
    return-void
.end method

.method public final releaseStandbyPorts(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->findIndexOfStandbyPorts(Landroid/os/IBinder;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    .line 16
    .line 17
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget p1, p1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mUid:I

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->isPackageExempt(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 57
    .line 58
    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final sendExplicitBroadcast(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/high16 v0, 0x50000000

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/high16 p1, 0x10000000

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLowPowerStandbyManagingPackages:Ljava/util/List;

    .line 25
    .line 26
    check-cast p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    new-instance v2, Landroid/content/Intent;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 55
    .line 56
    const-string v4, "android.permission.MANAGE_LOW_POWER_STANDBY"

    .line 57
    .line 58
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public setActiveDuringMaintenance(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p0, "LowPowerStandbyController"

    .line 9
    .line 10
    const-string p1, "Low Power Standby settings cannot be changed because it is not supported on this device"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "low_power_standby_active_during_maintenance"

    .line 26
    .line 27
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final setEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p0, "LowPowerStandbyController"

    .line 9
    .line 10
    const-string p1, "Low Power Standby cannot be enabled because it is not supported on this device"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "low_power_standby_enabled"

    .line 26
    .line 27
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final setPolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p0, "LowPowerStandbyController"

    .line 9
    .line 10
    const-string p1, "Low Power Standby policy cannot be changed because it is not supported on this device"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string p0, "LowPowerStandbyController"

    .line 25
    .line 26
    const-string p1, "Custom policies are not enabled."

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 34
    .line 35
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    sget-object v1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 48
    .line 49
    :cond_3
    if-nez p1, :cond_4

    .line 50
    .line 51
    sget-object v2, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    move-object v2, p1

    .line 55
    :goto_0
    const/4 v3, 0x0

    .line 56
    move v4, v3

    .line 57
    move v5, v4

    .line 58
    :goto_1
    iget-object v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 59
    .line 60
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-ge v4, v6, :cond_5

    .line 65
    .line 66
    iget-object v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    .line 67
    .line 68
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    or-int/2addr v5, v6

    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    xor-int/2addr v4, v6

    .line 85
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const/4 v2, 0x1

    .line 98
    xor-int/2addr v1, v2

    .line 99
    and-int/2addr v4, v5

    .line 100
    if-nez v4, :cond_6

    .line 101
    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    :cond_6
    move v3, v2

    .line 105
    :cond_7
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 108
    .line 109
    new-instance v2, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    invoke-direct {v2, p0, p1}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    if-eqz v3, :cond_8

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 120
    .line 121
    .line 122
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 127
    .line 128
    const/4 v2, 0x3

    .line 129
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 134
    .line 135
    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 140
    .line 141
    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 144
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    throw p0
.end method

.method public systemReady()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    const v2, 0x11101da

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "android.permission.MANAGE_LOW_POWER_STANDBY"

    .line 33
    .line 34
    filled-new-array {v3}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/high16 v4, 0x100000

    .line 39
    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mLowPowerStandbyManagingPackages:Ljava/util/List;

    .line 61
    .line 62
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    check-cast v4, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    const-class v3, Landroid/app/AlarmManager;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroid/app/AlarmManager;

    .line 79
    .line 80
    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const-class v3, Landroid/os/PowerManager;

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/os/PowerManager;

    .line 91
    .line 92
    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    .line 93
    .line 94
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 95
    .line 96
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 101
    .line 102
    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 103
    .line 104
    const v2, 0x10e00d8

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    .line 112
    .line 113
    const v2, 0x11101d9

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v2, "low_power_standby_enabled"

    .line 137
    .line 138
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    const/4 v5, -0x1

    .line 146
    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v2, "low_power_standby_active_during_maintenance"

    .line 156
    .line 157
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    .line 162
    .line 163
    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    .line 167
    .line 168
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-instance v3, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;

    .line 175
    .line 176
    invoke-direct {v3, p0}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    const-string v0, "low_power_standby"

    .line 183
    .line 184
    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    const-string v0, "low_power_standby"

    .line 193
    .line 194
    const-string v2, "enable_policy"

    .line 195
    .line 196
    const/4 v3, 0x1

    .line 197
    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    .line 202
    .line 203
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    const-string v0, "low_power_standby"

    .line 209
    .line 210
    const-string v2, "enable_standby_ports"

    .line 211
    .line 212
    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    .line 217
    .line 218
    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    .line 219
    .line 220
    if-eqz v0, :cond_2

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->loadPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_2
    sget-object v0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 230
    .line 231
    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 232
    .line 233
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 240
    .line 241
    if-eqz v2, :cond_3

    .line 242
    .line 243
    const-string v2, "low_power_standby_enabled"

    .line 244
    .line 245
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-ne v3, v5, :cond_3

    .line 250
    .line 251
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 252
    .line 253
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    .line 255
    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    .line 257
    .line 258
    .line 259
    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 260
    .line 261
    if-eqz v0, :cond_4

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerListeners()V

    .line 264
    .line 265
    .line 266
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    const-class v0, Lcom/android/server/power/LowPowerStandbyController$LocalService;

    .line 268
    .line 269
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyController$LocalService;

    .line 270
    .line 271
    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    throw p0
.end method

.method public final updateActiveLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    iget v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    .line 11
    .line 12
    int-to-long v3, v3

    .line 13
    cmp-long v1, v1, v3

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ltz v1, :cond_0

    .line 18
    .line 19
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    move v4, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v4, v2

    .line 33
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    .line 34
    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 42
    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    :cond_2
    move v2, v3

    .line 54
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    .line 55
    .line 56
    if-eq v1, v2, :cond_4

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 65
    .line 66
    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void
.end method

.method public final updateSettingsLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 14
    .line 15
    const-string v4, "low_power_standby_enabled"

    .line 16
    .line 17
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v3

    .line 26
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 27
    .line 28
    const-string v1, "low_power_standby_active_during_maintenance"

    .line 29
    .line 30
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v2, v3

    .line 38
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
