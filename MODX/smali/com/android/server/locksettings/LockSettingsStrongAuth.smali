.class public Lcom/android/server/locksettings/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field protected static final NON_STRONG_BIOMETRIC_IDLE_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsPrimaryAuth.nonStrongBiometricIdleTimeoutForUser"

.field protected static final NON_STRONG_BIOMETRIC_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsPrimaryAuth.nonStrongBiometricTimeoutForUser"

.field protected static final STRONG_AUTH_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsStrongAuth.timeoutForUser"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultStrongAuthFlags:I

.field protected final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

.field protected final mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected final mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

.field protected final mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

.field protected final mStrongAuthForUser:Landroid/util/SparseIntArray;

.field protected final mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

.field public final mTrackers:Landroid/os/RemoteCallbackList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "LockSettingsStrongAuth"

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 18
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 20
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    .line 34
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    .line 41
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 46
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;

    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, p0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/os/Looper;)V

    .line 55
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 61
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getDefaultStrongAuthFlags(Landroid/content/Context;)I

    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 67
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 73
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 79
    return-void
.end method


# virtual methods
.method public final cancelNonStrongBiometricAlarmListener(I)V
    .locals 5

    .line 1
    const-string v0, "LockSettingsStrongAuth"

    .line 3
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    const-string/jumbo v2, "cancelNonStrongBiometricAlarmListener for userId="

    .line 10
    invoke-static {p1, v2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    .line 25
    if-eqz v2, :cond_2

    .line 27
    if-eqz v1, :cond_1

    .line 29
    const-string v1, "Cancel alarm for non-strong biometric fallback timeout"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_1
    const-string/jumbo v0, "lockscreen.non_strong_bio_timeout"

    .line 37
    const-wide/16 v3, 0x0

    .line 39
    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(ILjava/lang/String;J)V

    .line 42
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 44
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 47
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2
    return-void
.end method

.method public final cancelNonStrongBiometricIdleAlarmListener(I)V
    .locals 5

    .line 1
    const-string v0, "LockSettingsStrongAuth"

    .line 3
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    const-string/jumbo v2, "cancelNonStrongBiometricIdleAlarmListener for userId="

    .line 10
    invoke-static {p1, v2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    .line 25
    if-eqz v2, :cond_2

    .line 27
    if-eqz v1, :cond_1

    .line 29
    const-string v1, "Cancel alarm for non-strong biometric idle timeout"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_1
    const-string/jumbo v0, "lockscreen.non_strong_bio_idle_timeout"

    .line 37
    const-wide/16 v3, 0x0

    .line 39
    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(ILjava/lang/String;J)V

    .line 42
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 44
    invoke-virtual {p0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 47
    :cond_2
    return-void
.end method

.method public final notifyStrongAuthTrackers(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 6
    move-result v0

    .line 7
    :goto_0
    if-lez v0, :cond_0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 13
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    .line 19
    invoke-interface {v1, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :catch_0
    move-exception v1

    .line 26
    :try_start_1
    const-string v2, "LockSettingsStrongAuth"

    .line 28
    const-string v3, "Exception while notifying StrongAuthTracker."

    .line 30
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 36
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 39
    throw p1

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 42
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 45
    return-void
.end method

.method public final notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(IZ)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 3
    const-string v1, "LockSettingsStrongAuth"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "notifyStrongAuthTrackersForIsNonStrongBiometricAllowed for allowed="

    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ", userId="

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 35
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 38
    move-result v0

    .line 39
    :goto_0
    if-lez v0, :cond_1

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 45
    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/app/trust/IStrongAuthTracker;

    .line 51
    invoke-interface {v2, p2, p1}, Landroid/app/trust/IStrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v2

    .line 58
    :try_start_1
    const-string v3, "Exception while notifying StrongAuthTracker: IsNonStrongBiometricAllowedChanged."

    .line 60
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 66
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 69
    throw p1

    .line 70
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 72
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 75
    return-void
.end method

.method public final requireStrongAuth(II)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 4
    if-ltz p2, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    const-string/jumbo p1, "userId must be an explicit user id or USER_ALL"

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0

    .line 16
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    return-void
.end method

.method public final rescheduleStrongAuthTimeoutAlarm(IJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 17
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 20
    iput-wide p2, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->mLatestStrongAuthTime:J

    .line 22
    :goto_0
    move-object v8, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    .line 26
    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;JI)V

    .line 29
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    .line 41
    const-string/jumbo v1, "device_policy"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 50
    const-string/jumbo v1, "persist.lock.strong_auth_timeout"

    .line 53
    const-wide/16 v2, 0x0

    .line 55
    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 58
    move-result-wide v4

    .line 59
    const-string/jumbo v1, "ro.build.tags"

    .line 62
    const-string v6, ""

    .line 64
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    const-string/jumbo v6, "test-keys"

    .line 71
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 77
    cmp-long v1, v4, v2

    .line 79
    if-eqz v1, :cond_1

    .line 81
    goto :goto_2

    .line 82
    :cond_1
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    .line 86
    move-result-wide v4

    .line 87
    :goto_2
    add-long v5, p2, v4

    .line 89
    const-string/jumbo p2, "lockscreen.strong_bio_timeout"

    .line 92
    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(ILjava/lang/String;J)V

    .line 95
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 97
    const-string v7, "LockSettingsStrongAuth.timeoutForUser"

    .line 99
    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 101
    const/4 v4, 0x2

    .line 102
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 105
    return-void
.end method

.method public setIsNonStrongBiometricAllowed(ZI)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setIsNonStrongBiometricAllowed for allowed="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", userId="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "LockSettingsStrongAuth"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    const/4 v0, -0x1

    .line 34
    if-ne p2, v0, :cond_1

    .line 36
    const/4 p2, 0x0

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 39
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 42
    move-result v0

    .line 43
    if-ge p2, v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 47
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowedOneUser(IZ)V

    .line 54
    add-int/lit8 p2, p2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowedOneUser(IZ)V

    .line 60
    :cond_2
    return-void
.end method

.method public final setIsNonStrongBiometricAllowedOneUser(IZ)V
    .locals 4

    .line 1
    const-string v0, "LockSettingsStrongAuth"

    .line 3
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v3, "setIsNonStrongBiometricAllowedOneUser for allowed="

    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    const-string v3, ", userId="

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 39
    move-result v2

    .line 40
    if-eq p2, v2, :cond_2

    .line 42
    if-eqz v1, :cond_1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v3, "mIsNonStrongBiometricAllowedForUser value changed: oldValue="

    .line 49
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, ", allowed="

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(IZ)V

    .line 78
    :cond_2
    return-void
.end method

.method public final updateStrongAuthTimeoutInfo(ILjava/lang/String;J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p3, v0

    .line 5
    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    move-result-wide v0

    .line 11
    add-long/2addr v0, p3

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide p3

    .line 16
    sub-long/2addr v0, p3

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 19
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricStrongAuthTimeout(Ljava/lang/String;JI)V

    .line 22
    return-void
.end method
