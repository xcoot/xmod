.class public final Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final dumpSensorServiceStateProto(Z)[B
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getAuthenticatorId(I)J
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    .line 3
    return-wide p0
.end method

.method public final getLockoutModeForUser(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final hasEnrolledTemplates(ILjava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final isHardwareDetected(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .locals 0

    .line 1
    return-void
.end method

.method public final startPreparedClient(I)V
    .locals 0

    .line 1
    return-void
.end method
