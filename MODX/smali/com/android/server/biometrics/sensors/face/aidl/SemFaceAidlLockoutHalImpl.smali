.class public final Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mFailedAttempts:Landroid/util/SparseIntArray;

.field public final mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

.field public final mRemainingLockoutTime:Landroid/util/SparseLongArray;

.field public final mTimedLockoutCleared:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/SemBiometricLockoutTracker;Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$LockoutResetCallback;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mContext:Landroid/content/Context;

    .line 6
    new-instance v0, Landroid/util/SparseIntArray;

    .line 8
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 13
    new-instance v0, Landroid/util/SparseLongArray;

    .line 15
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 20
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 22
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 27
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 29
    const-class p2, Landroid/app/AlarmManager;

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/app/AlarmManager;

    .line 37
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 39
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$1;

    .line 41
    invoke-direct {v1, p0, p3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$LockoutResetCallback;)V

    .line 44
    new-instance v2, Landroid/content/IntentFilter;

    .line 46
    const-string/jumbo p0, "com.android.server.biometrics.sensors.face.ACTION_LOCKOUT_RESET"

    .line 49
    invoke-direct {v2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x2

    .line 59
    const-string/jumbo v3, "com.samsung.android.bio.face.permission.RESET_FACE_LOCKOUT"

    .line 62
    move-object v0, p1

    .line 63
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 66
    return-void
.end method


# virtual methods
.method public final addFailedAttemptForUser(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    add-int/2addr v0, v2

    .line 10
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 12
    if-eqz v3, :cond_0

    .line 14
    const-string v3, "addFailedAttemptForUser failedAttempts : "

    .line 16
    const-string v4, "FaceService.lockout"

    .line 18
    invoke-static {v0, v3, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 23
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 28
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 31
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    const/16 v1, 0x8

    .line 37
    invoke-virtual {v0, p1, v1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->addFailedAttempt(II)V

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->getLockoutModeForUser(I)I

    .line 43
    move-result v0

    .line 44
    if-ne v0, v2, :cond_2

    .line 46
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    move-result-wide v1

    .line 52
    const-wide/16 v3, 0x7530

    .line 54
    add-long/2addr v1, v3

    .line 55
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mContext:Landroid/content/Context;

    .line 57
    new-instance v4, Landroid/content/Intent;

    .line 59
    const-string/jumbo v5, "com.android.server.biometrics.sensors.face.ACTION_LOCKOUT_RESET"

    .line 62
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v5, "lockout_reset_user"

    .line 68
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    move-result-object v4

    .line 72
    const/high16 v5, 0xc000000

    .line 74
    invoke-static {v3, p1, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 77
    move-result-object v3

    .line 78
    const/4 v4, 0x2

    .line 79
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 82
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    move-result-wide v0

    .line 88
    const-wide/16 v2, 0x7918

    .line 90
    add-long/2addr v0, v2

    .line 91
    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 94
    :cond_2
    return-void
.end method

.method public final getLockoutModeForUser(I)I
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x14

    .line 4
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

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
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 21
    move-result v2

    .line 22
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 24
    if-eqz v4, :cond_1

    .line 26
    const-string/jumbo v4, "getLockoutModeForUser failedAttempts : "

    .line 29
    const-string v5, "FaceService.lockout"

    .line 31
    invoke-static {v2, v4, v5}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    if-lt v2, v1, :cond_2

    .line 36
    return v0

    .line 37
    :cond_2
    if-lez v2, :cond_3

    .line 39
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 41
    invoke-virtual {p0, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_3

    .line 47
    rem-int/lit8 v2, v2, 0x5

    .line 49
    if-nez v2, :cond_3

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_3
    return v3
.end method

.method public final resetFailedAttemptsForUser(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->getLockoutModeForUser(I)I

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
    const-string v1, "FaceService.lockout"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    if-eqz p2, :cond_2

    .line 36
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 38
    if-eqz p2, :cond_1

    .line 40
    const/16 v0, 0x8

    .line 42
    invoke-virtual {p2, p1, v0}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->resetFailedAttempts(II)V

    .line 45
    :cond_1
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    :cond_2
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 57
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 59
    const-wide/16 v0, 0x0

    .line 61
    invoke-virtual {p2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 64
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 66
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "com.android.server.biometrics.sensors.face.ACTION_LOCKOUT_RESET"

    .line 73
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "lockout_reset_user"

    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    move-result-object v0

    .line 83
    const/high16 v1, 0xc000000

    .line 85
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p2, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 92
    return-void
.end method

.method public final setLockoutModeForUser(II)V
    .locals 0

    .line 1
    return-void
.end method
