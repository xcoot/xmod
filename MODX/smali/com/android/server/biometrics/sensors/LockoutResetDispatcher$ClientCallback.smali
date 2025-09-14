.class public final Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

.field public final mOpPackageName:Ljava/lang/String;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-class v0, Landroid/os/PowerManager;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/os/PowerManager;

    .line 12
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mOpPackageName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mCallback:Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 16
    const/4 p2, 0x1

    .line 17
    const-string p3, "LockoutResetMonitor:SendLockoutReset"

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    return-void
.end method


# virtual methods
.method public final releaseWakelock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 11
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 14
    :cond_0
    return-void
.end method
