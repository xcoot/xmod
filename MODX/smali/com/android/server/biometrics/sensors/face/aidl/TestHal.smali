.class public final Lcom/android/server/biometrics/sensors/face/aidl/TestHal;
.super Landroid/hardware/biometrics/face/IFace$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v0, "createSession, sensorId: "

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string p1, " userId: "

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    const-string/jumbo p1, "face.aidl.TestHal"

    .line 27
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    .line 32
    invoke-direct {p0, p3}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;-><init>(Landroid/hardware/biometrics/face/ISessionCallback;)V

    .line 35
    return-object p0
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "c43fbb9be4a662cc9ace640dba21cccdb84c6c21"

    .line 4
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public final getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;
    .locals 1

    .line 1
    const-string/jumbo p0, "face.aidl.TestHal"

    .line 4
    const-string/jumbo v0, "getSensorProps"

    .line 7
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [Landroid/hardware/biometrics/face/SensorProps;

    .line 13
    return-object p0
.end method
