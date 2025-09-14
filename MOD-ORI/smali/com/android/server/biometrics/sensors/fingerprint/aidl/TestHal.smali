.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;
.super Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "createSession, sensorId: "

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p1, " userId: "

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string/jumbo p1, "fingerprint.aidl.TestHal"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;

    .line 31
    .line 32
    invoke-direct {p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;-><init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "41a730a7a6b5aa9cebebce70ee5b5e509b0af6fb"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public final getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;
    .locals 1

    .line 1
    const-string/jumbo p0, "fingerprint.aidl.TestHal"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "getSensorProps"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [Landroid/hardware/biometrics/fingerprint/SensorProps;

    .line 12
    .line 13
    return-object p0
.end method
