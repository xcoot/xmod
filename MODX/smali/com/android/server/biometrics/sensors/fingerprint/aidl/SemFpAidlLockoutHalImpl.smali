.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# static fields
.field static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

.field static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mFailedAttempts:Landroid/util/SparseIntArray;

.field public final mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

.field public final mRemainingLockoutTime:Landroid/util/SparseLongArray;

.field public final mTimedLockoutCleared:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/SemBiometricLockoutTracker;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$LockoutResetCallback;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mContext:Landroid/content/Context;

    .line 6
    new-instance v0, Landroid/util/SparseIntArray;

    .line 8
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 13
    new-instance v0, Landroid/util/SparseLongArray;

    .line 15
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 20
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 22
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 27
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 29
    const-class p2, Landroid/app/AlarmManager;

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/app/AlarmManager;

    .line 37
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 39
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$1;

    .line 41
    invoke-direct {v1, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$LockoutResetCallback;)V

    .line 44
    new-instance v2, Landroid/content/IntentFilter;

    .line 46
    const-string/jumbo p0, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    .line 49
    invoke-direct {v2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x2

    .line 59
    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    .line 61
    move-object v0, p1

    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 65
    return-void
.end method


# virtual methods
.method public final addFailedAttemptForUser(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x1

    .line 9
    add-int/2addr v2, v3

    .line 10
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 18
    const/4 v0, 0x2

    .line 19
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v1, p1, v0}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->addFailedAttempt(II)V

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->getLockoutModeForUser(I)I

    .line 29
    move-result v1

    .line 30
    if-ne v1, v3, :cond_1

    .line 32
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    move-result-wide v2

    .line 38
    const-wide/16 v4, 0x7530

    .line 40
    add-long/2addr v2, v4

    .line 41
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mContext:Landroid/content/Context;

    .line 43
    new-instance v5, Landroid/content/Intent;

    .line 45
    const-string/jumbo v6, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    .line 48
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v6, "lockout_reset_user"

    .line 54
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    move-result-object v5

    .line 58
    const/high16 v6, 0xc000000

    .line 60
    invoke-static {v4, p1, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 67
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    move-result-wide v0

    .line 73
    const-wide/16 v2, 0x7918

    .line 75
    add-long/2addr v0, v2

    .line 76
    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 79
    :cond_1
    return-void
.end method

.method public final getLockoutModeForUser(I)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x14

    .line 4
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->getFailedAttempts(I)I

    .line 11
    move-result v2

    .line 12
    if-lt v2, v1, :cond_0

    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    move-result v2

    .line 22
    if-lt v2, v1, :cond_1

    .line 24
    return v0

    .line 25
    :cond_1
    if-lez v2, :cond_2

    .line 27
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 29
    invoke-virtual {p0, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_2

    .line 35
    rem-int/lit8 v2, v2, 0x5

    .line 37
    if-nez v2, :cond_2

    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_2
    return v3
.end method

.method public final resetFailedAttemptsForUser(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->getLockoutModeForUser(I)I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "Reset biometric lockout for user: "

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", clearAttemptCounter: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "FingerprintService"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    if-eqz p2, :cond_2

    .line 36
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 38
    if-eqz p2, :cond_1

    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-virtual {p2, p1, v0}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->resetFailedAttempts(II)V

    .line 44
    :cond_1
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    :cond_2
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 56
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 58
    const-wide/16 v0, 0x0

    .line 60
    invoke-virtual {p2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 63
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 65
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/content/Intent;

    .line 69
    const-string/jumbo v1, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    .line 72
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "lockout_reset_user"

    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    move-result-object v0

    .line 82
    const/high16 v1, 0xc000000

    .line 84
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p2, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 91
    return-void
.end method

.method public final setLockoutModeForUser(II)V
    .locals 0

    .line 1
    return-void
.end method
