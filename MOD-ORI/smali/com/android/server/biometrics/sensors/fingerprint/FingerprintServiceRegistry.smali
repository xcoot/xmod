.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;
.super Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Landroid/hardware/fingerprint/IFingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;-><init>(Ljava/util/function/Supplier;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeRegisteredCallback(Landroid/os/IInterface;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;->onAllAuthenticatorsRegistered(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/biometrics/SensorPropertiesInternal;)V
    .locals 4

    .line 1
    check-cast p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 2
    .line 3
    iget v0, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :try_start_0
    iget v1, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 10
    .line 11
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 14
    .line 15
    iget v3, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 16
    .line 17
    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;-><init>(Landroid/hardware/fingerprint/IFingerprintService;I)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    invoke-interface {p1, v1, p0, v0, v2}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p1, "Remote exception when registering sensorId: "

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget p1, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 33
    .line 34
    const-string p2, "FingerprintServiceRegistry"

    .line 35
    .line 36
    invoke-static {p0, p1, p2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
