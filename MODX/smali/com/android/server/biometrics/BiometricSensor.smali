.class public abstract Lcom/android/server/biometrics/BiometricSensor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final id:I

.field public final impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

.field public mCookie:I

.field mIsUpdatedOemStrength:Z

.field public mIsUpdatedStrengthByDeviceConfig:Z

.field public mSensorState:I

.field public mUpdatedStrength:I

.field public final modality:I

.field public oemStrength:I


# direct methods
.method public constructor <init>(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 12
    iput p3, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 17
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 19
    return-void
.end method


# virtual methods
.method public final getCurrentStrength()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricSensor;->updateOemStrengthIfNotCached()V

    .line 4
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 6
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 8
    or-int/2addr p0, v0

    .line 9
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ID("

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "), oemStrength: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", updatedStrength: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", modality "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", state: "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", cookie: "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public updateOemStrengthIfNotCached()V
    .locals 5

    .line 1
    const-string v0, "BiometricService/Sensor"

    .line 3
    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 5
    const/16 v2, 0x8

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mIsUpdatedOemStrength:Z

    .line 12
    if-eqz v1, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 19
    invoke-interface {v2, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 22
    move-result-object v2

    .line 23
    iget v2, v2, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorStrength:I

    .line 25
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    iput-boolean v2, p0, Lcom/android/server/biometrics/BiometricSensor;->mIsUpdatedOemStrength:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :goto_0
    iget v2, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 39
    if-ne v1, v2, :cond_2

    .line 41
    return-void

    .line 42
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v3, "updateStrength: Before("

    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v3, ")"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    iput v1, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 64
    iget-boolean v4, p0, Lcom/android/server/biometrics/BiometricSensor;->mIsUpdatedStrengthByDeviceConfig:Z

    .line 66
    if-nez v4, :cond_3

    .line 68
    iput v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 70
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, " After("

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public final updateStrength(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "updateStrength: Before("

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v0, " After("

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    const-string v0, "BiometricService/Sensor"

    .line 48
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mIsUpdatedStrengthByDeviceConfig:Z

    .line 54
    return-void
.end method
