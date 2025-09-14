.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createAodController()Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;-><init>(Landroid/os/Handler;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
