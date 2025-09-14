.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mFailedAttempts:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

.field public final mLockoutResetIntent:Ljava/util/function/Function;

.field public final mRemainingLockoutTime:Landroid/util/SparseLongArray;

.field public final mTimedLockoutCleared:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;Ljava/util/function/Function;Landroid/os/Handler;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

    .line 5
    .line 6
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    new-instance p2, Landroid/util/SparseIntArray;

    .line 14
    .line 15
    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 19
    .line 20
    const-class p2, Landroid/app/AlarmManager;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroid/app/AlarmManager;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;)V

    .line 33
    .line 34
    .line 35
    if-nez p4, :cond_0

    .line 36
    .line 37
    new-instance p4, Landroid/os/Handler;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {p4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    move-object v4, p4

    .line 47
    iput-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetIntent:Ljava/util/function/Function;

    .line 50
    .line 51
    new-instance p2, Landroid/util/SparseLongArray;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/util/SparseLongArray;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 57
    .line 58
    new-instance v2, Landroid/content/IntentFilter;

    .line 59
    .line 60
    const-string/jumbo p0, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    .line 67
    .line 68
    const/4 v5, 0x2

    .line 69
    move-object v0, p1

    .line 70
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final addFailedAttemptForUser(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x1

    .line 9
    add-int/2addr v2, v3

    .line 10
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 16
    .line 17
    .line 18
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {v0, p1, v1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->addFailedAttempt(II)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne v0, v3, :cond_1

    .line 35
    .line 36
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    const-wide/16 v2, 0x7918

    .line 53
    .line 54
    add-long/2addr v0, v2

    .line 55
    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final getLockoutModeForUser(I)I
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0x14

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->getFailedAttempts(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lt v0, v2, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lt v0, v2, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    if-lez v0, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 32
    .line 33
    invoke-virtual {p0, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    rem-int/lit8 v0, v0, 0x5

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_2
    return v3
.end method

.method public final resetFailedAttemptsForUser(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Reset biometric lockout for user: "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", clearAttemptCounter: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "LockoutFrameworkImpl"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    if-eqz p2, :cond_2

    .line 35
    .line 36
    sget-boolean p2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 v0, 0x2

    .line 45
    invoke-virtual {p2, p1, v0}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->resetFailedAttempts(II)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 61
    .line 62
    const-wide/16 v0, 0x0

    .line 63
    .line 64
    invoke-virtual {p2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetIntent:Ljava/util/function/Function;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/app/PendingIntent;

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

    .line 85
    .line 86
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 95
    .line 96
    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final setLockoutModeForUser(II)V
    .locals 0

    .line 1
    return-void
.end method
