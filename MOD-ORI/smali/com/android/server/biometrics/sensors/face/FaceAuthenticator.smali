.class public final Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFaceService:Landroid/hardware/face/IFaceService;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/hardware/face/IFaceService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-wide v4, p3

    .line 8
    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/face/IFaceService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

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
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->dumpSensorServiceStateProto(IZ)[B

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
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->getAuthenticatorId(II)J

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
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->getLockoutModeForUser(II)I

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
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;

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
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(IILjava/lang/String;)Z

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
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Landroid/hardware/face/IFaceService;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final isHardwareDetected(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->isHardwareDetected(ILjava/lang/String;)Z

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
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 3
    .line 4
    new-instance v2, Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 5
    .line 6
    invoke-direct {v2}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    move/from16 v3, p5

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object/from16 v2, p7

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move/from16 v2, p13

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setIsMandatoryBiometrics(Z)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->build()Landroid/hardware/face/FaceAuthenticateOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    move-object v0, v1

    .line 38
    move v1, p1

    .line 39
    move-object v2, p2

    .line 40
    move-wide v3, p3

    .line 41
    move-object/from16 v5, p6

    .line 42
    .line 43
    move-wide/from16 v7, p8

    .line 44
    .line 45
    move/from16 v9, p10

    .line 46
    .line 47
    move/from16 v10, p11

    .line 48
    .line 49
    invoke-interface/range {v0 .. v10}, Landroid/hardware/face/IFaceService;->prepareForAuthentication(ZLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/face/FaceAuthenticateOptions;JIZ)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

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
    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final startPreparedClient(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/FaceAuthenticator;->mSensorId:I

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Landroid/hardware/face/IFaceService;->startPreparedClient(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
