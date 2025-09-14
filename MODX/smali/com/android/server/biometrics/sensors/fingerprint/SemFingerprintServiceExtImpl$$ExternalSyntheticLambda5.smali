.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;->f$1:Landroid/os/IBinder;

    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 10
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;->f$1:Landroid/os/IBinder;

    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 7
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda5;->f$3:I

    .line 9
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 16
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 18
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-lt p0, v4, :cond_2

    .line 24
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;

    .line 26
    if-eqz v5, :cond_0

    .line 28
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->stop()V

    .line 31
    iput-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;

    .line 33
    :cond_0
    const/4 v5, 0x2

    .line 34
    if-ne p0, v5, :cond_1

    .line 36
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColorForLowBrightness:Ljava/lang/String;

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColor:Ljava/lang/String;

    .line 41
    :goto_0
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;

    .line 43
    invoke-direct {v5, v1, v2, v4, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;-><init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;)V

    .line 46
    iput-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;

    .line 48
    invoke-virtual {v5, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->start(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda5;)V

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;

    .line 54
    if-nez p0, :cond_3

    .line 56
    const-string p0, "FingerprintService"

    .line 58
    const-string/jumbo v0, "handleCalibrationMode: No Calibration Client"

    .line 61
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->stop()V

    .line 68
    iput-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;

    .line 70
    :goto_1
    return-void
.end method
