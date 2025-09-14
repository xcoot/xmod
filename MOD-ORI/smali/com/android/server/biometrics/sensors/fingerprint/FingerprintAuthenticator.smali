.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-wide v4, p3

    .line 8
    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final dumpSensorServiceStateProto(Z)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->dumpSensorServiceStateProto(IZ)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getAuthenticatorId(I)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatorId(II)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public final getLockoutModeForUser(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->getLockoutModeForUser(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final hasEnrolledTemplates(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(IILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final isHardwareDetected(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetected(ILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 3
    .line 4
    new-instance v2, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 5
    .line 6
    invoke-direct {v2}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move/from16 v2, p5

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object/from16 v2, p7

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move/from16 v2, p13

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setIsMandatoryBiometrics(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    move-object v0, v1

    .line 38
    move-object v1, p2

    .line 39
    move-wide v2, p3

    .line 40
    move-object/from16 v4, p6

    .line 41
    .line 42
    move-wide/from16 v6, p8

    .line 43
    .line 44
    move/from16 v8, p10

    .line 45
    .line 46
    move/from16 v9, p11

    .line 47
    .line 48
    move/from16 v10, p12

    .line 49
    .line 50
    invoke-interface/range {v0 .. v10}, Landroid/hardware/fingerprint/IFingerprintService;->prepareForAuthentication(Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JIZZ)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p2

    .line 9
    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final startPreparedClient(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->startPreparedClient(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
