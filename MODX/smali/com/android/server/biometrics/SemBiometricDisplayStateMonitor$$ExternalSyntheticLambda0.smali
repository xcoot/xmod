.class public final synthetic Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;->f$1:F

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 3
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;->f$1:F

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 11
    move-result p0

    .line 12
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    const-string v1, "DisplayBrightnessListener#onChanged : "

    .line 18
    const-string v2, "SemBiometricDisplayStateMonitor"

    .line 20
    invoke-static {p0, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    iput p0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightness:I

    .line 25
    iget-object p0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    .line 27
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;

    .line 45
    iget v2, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightness:I

    .line 47
    int-to-float v2, v2

    .line 48
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 50
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mSysUiDisplayBrightnessCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback;

    .line 52
    if-eqz v1, :cond_1

    .line 54
    :try_start_0
    invoke-interface {v1, v2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback;->onBrightnessChanged(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    const-string v1, "FingerprintService.Ext"

    .line 60
    const-string/jumbo v2, "onBrightnessChanged: failed to invoke onBrightnessChangedCallback"

    .line 63
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    return-void
.end method
