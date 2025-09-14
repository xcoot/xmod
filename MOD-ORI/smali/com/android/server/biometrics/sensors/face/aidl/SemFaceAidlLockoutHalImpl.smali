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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Landroid/util/SparseIntArray;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    new-instance v0, Landroid/util/SparseLongArray;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 19
    .line 20
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 28
    .line 29
    const-class p2, Landroid/app/AlarmManager;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/app/AlarmManager;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 38
    .line 39
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$1;

    .line 40
    .line 41
    invoke-direct {v1, p0, p3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$LockoutResetCallback;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroid/content/IntentFilter;

    .line 45
    .line 46
    const-string/jumbo p0, "com.android.server.biometrics.sensors.face.ACTION_LOCKOUT_RESET"

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x2

    .line 59
    const-string/jumbo v3, "com.samsung.android.bio.face.permission.RESET_FACE_LOCKOUT"

    .line 60
    .line 61
    .line 62
    move-object v0, p1

    .line 63
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final addFailedAttemptForUser(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    add-int/2addr v0, v2

    .line 10
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const-string v3, "addFailedAttemptForUser failedAttempts : "

    .line 15
    .line 16
    const-string v4, "FaceService.lockout"

    .line 17
    .line 18
    invoke-static {v0, v3, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 22
    .line 23
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-virtual {v0, p1, v1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->addFailedAttempt(II)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->getLockoutModeForUser(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    const-wide/16 v3, 0x7530

    .line 53
    .line 54
    add-long/2addr v1, v3

    .line 55
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    new-instance v4, Landroid/content/Intent;

    .line 58
    .line 59
    const-string/jumbo v5, "com.android.server.biometrics.sensors.face.ACTION_LOCKOUT_RESET"

    .line 60
    .line 61
    .line 62
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v5, "lockout_reset_user"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const/high16 v5, 0xc000000

    .line 73
    .line 74
    invoke-static {v3, p1, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v4, 0x2

    .line 79
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 83
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    const-wide/16 v2, 0x7918

    .line 89
    .line 90
    add-long/2addr v0, v2

    .line 91
    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 92
    .line 93
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

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->getFailedAttempts(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-lt v2, v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    const-string/jumbo v4, "getLockoutModeForUser failedAttempts : "

    .line 27
    .line 28
    .line 29
    const-string v5, "FaceService.lockout"

    .line 30
    .line 31
    invoke-static {v2, v4, v5}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    if-lt v2, v1, :cond_2

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    if-lez v2, :cond_3

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_3

    .line 46
    .line 47
    rem-int/lit8 v2, v2, 0x5

    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
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
    const-string v1, "FaceService.lockout"

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
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mIntegratedLockoutTracker:Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    const/16 v0, 0x8

    .line 41
    .line 42
    invoke-virtual {p2, p1, v0}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->resetFailedAttempts(II)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 58
    .line 59
    const-wide/16 v0, 0x0

    .line 60
    .line 61
    invoke-virtual {p2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    new-instance v0, Landroid/content/Intent;

    .line 69
    .line 70
    const-string/jumbo v1, "com.android.server.biometrics.sensors.face.ACTION_LOCKOUT_RESET"

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "lockout_reset_user"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/high16 v1, 0xc000000

    .line 84
    .line 85
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p2, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final setLockoutModeForUser(II)V
    .locals 0

    .line 1
    return-void
.end method
