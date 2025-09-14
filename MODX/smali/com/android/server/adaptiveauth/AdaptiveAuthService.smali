.class public final Lcom/android/server/adaptiveauth/AdaptiveAuthService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field static final MAX_ALLOWED_FAILED_AUTH_ATTEMPTS:I = 0x5


# instance fields
.field public final mAuthenticationStateListener:Lcom/android/server/adaptiveauth/AdaptiveAuthService$2;

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field final mFailedAttemptsForUser:Landroid/util/SparseIntArray;

.field public final mHandler:Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLastLockedTimestamp:Landroid/util/SparseLongArray;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockSettings:Lcom/android/internal/widget/LockSettingsInternal;

.field public final mLockSettingsStateListener:Lcom/android/server/adaptiveauth/AdaptiveAuthService$1;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mUserManager:Lcom/android/server/pm/UserManagerInternal;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AdaptiveAuthService"

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
    sput-boolean v0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->DEBUG:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/adaptiveauth/AdaptiveAuthService;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    .line 4
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    .line 5
    new-instance v0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$1;

    invoke-direct {v0, p0}, Lcom/android/server/adaptiveauth/AdaptiveAuthService$1;-><init>(Lcom/android/server/adaptiveauth/AdaptiveAuthService;)V

    iput-object v0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLockSettingsStateListener:Lcom/android/server/adaptiveauth/AdaptiveAuthService$1;

    .line 6
    new-instance v0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$2;

    invoke-direct {v0, p0}, Lcom/android/server/adaptiveauth/AdaptiveAuthService$2;-><init>(Lcom/android/server/adaptiveauth/AdaptiveAuthService;)V

    iput-object v0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mAuthenticationStateListener:Lcom/android/server/adaptiveauth/AdaptiveAuthService$2;

    .line 7
    new-instance v0, Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;-><init>(Lcom/android/server/adaptiveauth/AdaptiveAuthService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mHandler:Lcom/android/server/adaptiveauth/AdaptiveAuthService$3;

    .line 8
    iput-object p2, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 9
    const-class p2, Lcom/android/internal/widget/LockSettingsInternal;

    .line 10
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/LockSettingsInternal;

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLockSettings:Lcom/android/internal/widget/LockSettingsInternal;

    .line 12
    const-class p2, Landroid/hardware/biometrics/BiometricManager;

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/biometrics/BiometricManager;

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 15
    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 16
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mPowerManager:Landroid/os/PowerManager;

    .line 17
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 18
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 20
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLockSettings:Lcom/android/internal/widget/LockSettingsInternal;

    .line 3
    iget-object v1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLockSettingsStateListener:Lcom/android/server/adaptiveauth/AdaptiveAuthService$1;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockSettingsInternal;->registerLockSettingsStateListener(Lcom/android/internal/widget/LockSettingsStateListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 10
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mAuthenticationStateListener:Lcom/android/server/adaptiveauth/AdaptiveAuthService$2;

    .line 12
    invoke-virtual {v0, p0}, Landroid/hardware/biometrics/BiometricManager;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 15
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->init()V

    .line 8
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final reportAuthAttempt(IIZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.hardware.type.automotive"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    const-string v2, "AdaptiveAuthService"

    .line 22
    if-eqz p3, :cond_6

    .line 24
    iget-object p3, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    .line 26
    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 29
    iget-object p3, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    .line 31
    invoke-virtual {p3, p2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 34
    move-result p3

    .line 35
    if-ltz p3, :cond_5

    .line 37
    iget-object p3, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    .line 39
    invoke-virtual {p3, p2}, Landroid/util/SparseLongArray;->get(I)J

    .line 42
    move-result-wide v4

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    move-result-wide v6

    .line 47
    if-eqz p1, :cond_2

    .line 49
    if-eq p1, v1, :cond_1

    .line 51
    :goto_0
    move v8, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v0, 0x2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move v8, v1

    .line 56
    :goto_1
    sget-boolean p1, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->DEBUG:Z

    .line 58
    if-eqz p1, :cond_3

    .line 60
    const-string/jumbo p1, "collectTimeElapsedSinceLastLockedForUser: lastLockedTime="

    .line 63
    const-string p3, ", authTime="

    .line 65
    invoke-static {p1, v4, v5, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    const-string p3, ", unlockType="

    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_3
    cmp-long p1, v4, v6

    .line 89
    if-lez p1, :cond_4

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const/16 v3, 0x334

    .line 94
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJI)V

    .line 97
    :goto_2
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    .line 99
    invoke-virtual {p0, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 102
    :cond_5
    return-void

    .line 103
    :cond_6
    iget-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    .line 105
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 108
    move-result p1

    .line 109
    add-int/2addr p1, v1

    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v0, "reportAuthAttempt: numFailedAttempts="

    .line 115
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v0, ", userId="

    .line 123
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p3

    .line 133
    invoke-static {v2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p3, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mFailedAttemptsForUser:Landroid/util/SparseIntArray;

    .line 138
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    iget-object p3, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 143
    invoke-virtual {p3, p2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 146
    move-result p3

    .line 147
    if-eqz p3, :cond_7

    .line 149
    iget-object p3, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 151
    invoke-virtual {p3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 154
    move-result p3

    .line 155
    if-eqz p3, :cond_7

    .line 157
    const-string p0, "Not locking the device because the device is already locked."

    .line 159
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 163
    :cond_7
    const/4 p3, 0x5

    .line 164
    if-ge p1, p3, :cond_8

    .line 166
    const-string p0, "Not locking the device because the number of failed attempts is below the threshold."

    .line 168
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 172
    :cond_8
    iget-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 174
    const/16 p3, 0x200

    .line 176
    invoke-virtual {p1, p3, p2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 179
    iget-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 181
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 184
    move-result p1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    const-string/jumbo v1, "lockDevice: userId="

    .line 190
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, ", parentUserId="

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eq p1, p2, :cond_9

    .line 213
    iget-object v0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 215
    invoke-virtual {v0, p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 218
    :cond_9
    iget-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mPowerManager:Landroid/os/PowerManager;

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 223
    move-result-wide v0

    .line 224
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 227
    iget-object p1, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 229
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V

    .line 232
    iget-object p0, p0, Lcom/android/server/adaptiveauth/AdaptiveAuthService;->mLastLockedTimestamp:Landroid/util/SparseLongArray;

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 237
    move-result-wide v0

    .line 238
    invoke-virtual {p0, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 241
    return-void
.end method
