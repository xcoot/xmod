.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 2
    .line 3
    new-instance p0, Landroid/hardware/biometrics/SensorLocationInternal;

    .line 4
    .line 5
    iget-object v0, p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->display:Ljava/lang/String;

    .line 6
    .line 7
    iget v1, p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationX:I

    .line 8
    .line 9
    iget v2, p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationY:I

    .line 10
    .line 11
    iget p1, p1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorRadius:I

    .line 12
    .line 13
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method
