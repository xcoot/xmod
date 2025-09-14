.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayOff()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->screenOff()V

    .line 6
    return-void
.end method

.method public final onDisplayOn()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 3
    monitor-enter p0

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V

    .line 8
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    .line 15
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfModeBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit p0

    .line 23
    throw v0
.end method
