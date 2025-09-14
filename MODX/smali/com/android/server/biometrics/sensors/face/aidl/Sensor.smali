.class public Lcom/android/server/biometrics/sensors/face/aidl/Sensor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

.field public final mHandler:Landroid/os/Handler;

.field public mLazySession:Ljava/util/function/Supplier;

.field public mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

.field public mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutCache;

.field public final mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

.field public mTestHalEnabled:Z

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/face/SensorProps;Lcom/android/server/biometrics/log/BiometricContext;Z)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p4

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v2, v1, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 11
    iget-object v2, v2, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    .line 13
    if-eqz v2, :cond_0

    .line 15
    array-length v3, v2

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    if-ge v4, v3, :cond_0

    .line 19
    aget-object v6, v2, v4

    .line 21
    new-instance v13, Landroid/hardware/biometrics/ComponentInfoInternal;

    .line 23
    iget-object v8, v6, Landroid/hardware/biometrics/common/ComponentInfo;->componentId:Ljava/lang/String;

    .line 25
    iget-object v9, v6, Landroid/hardware/biometrics/common/ComponentInfo;->hardwareVersion:Ljava/lang/String;

    .line 27
    iget-object v10, v6, Landroid/hardware/biometrics/common/ComponentInfo;->firmwareVersion:Ljava/lang/String;

    .line 29
    iget-object v11, v6, Landroid/hardware/biometrics/common/ComponentInfo;->serialNumber:Ljava/lang/String;

    .line 31
    iget-object v12, v6, Landroid/hardware/biometrics/common/ComponentInfo;->softwareVersion:Ljava/lang/String;

    .line 33
    move-object v7, v13

    .line 34
    invoke-direct/range {v7 .. v12}, Landroid/hardware/biometrics/ComponentInfoInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v10, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 45
    iget-object v2, v1, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 47
    iget v3, v2, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 49
    iget-byte v4, v2, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    .line 51
    iget v6, v2, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    .line 53
    iget-byte v7, v1, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    .line 55
    iget-boolean v8, v1, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z

    .line 57
    iget-boolean v9, v1, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    .line 59
    move-object v1, v10

    .line 60
    move v2, v3

    .line 61
    move v3, v4

    .line 62
    move v4, v6

    .line 63
    move v6, v7

    .line 64
    move v7, v8

    .line 65
    move v8, v9

    .line 66
    move/from16 v9, p6

    .line 68
    invoke-direct/range {v1 .. v9}, Landroid/hardware/face/FaceSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZZ)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v1, p1

    .line 75
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 77
    move-object/from16 v1, p2

    .line 79
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 81
    new-instance v1, Landroid/os/Binder;

    .line 83
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 86
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    .line 88
    move-object/from16 v1, p3

    .line 90
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 94
    move-object/from16 v1, p5

    .line 96
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    .line 100
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 105
    return-void
.end method


# virtual methods
.method public getLockoutModeForUser(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 3
    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 5
    iget-object v0, v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 7
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 9
    iget p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 11
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    .line 14
    move-result p0

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 18
    invoke-virtual {v1, p1, p0}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getLockoutState(II)I

    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0

    .line 26
    throw p0
.end method

.method public getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 7
    return-object p0
.end method

.method public final getRemainingLockoutTime(I)I
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_3

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string v1, "FaceService.lockout"

    .line 11
    const-string/jumbo v2, "remaining lockout = "

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->getLockoutModeForUser(I)I

    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x2

    .line 19
    if-ne v3, v4, :cond_0

    .line 21
    const/4 v0, -0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    if-nez v3, :cond_1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v4, 0x1

    .line 27
    if-ne v3, v4, :cond_3

    .line 29
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;->mRemainingLockoutTime:Landroid/util/SparseLongArray;

    .line 31
    const-wide/16 v3, 0x0

    .line 33
    invoke-virtual {p0, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 36
    move-result-wide p0

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    move-result-wide v3

    .line 41
    sub-long/2addr p0, v3

    .line 42
    const-wide/16 v3, 0x3e8

    .line 44
    div-long/2addr p0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    long-to-int p0, p0

    .line 46
    if-gez p0, :cond_2

    .line 48
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    move v0, p0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v0, p0

    .line 68
    goto :goto_1

    .line 69
    :catch_1
    move-exception p1

    .line 70
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v2, "getRemainingLockoutTime: "

    .line 75
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {p1, p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    :cond_3
    :goto_1
    return v0
.end method

.method public getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "getSessionForUser: mCurrentSession: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Sensor"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 25
    if-eqz p0, :cond_0

    .line 27
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 29
    if-ne v0, p1, :cond_0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_0

    .line 6
    return v0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    sget-object v1, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "/"

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0
.end method

.method public scheduleFaceUpdateActiveUserClient(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setTestHalEnabled(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Face setTestHalEnabled: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Sensor"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 22
    if-eq p1, v0, :cond_1

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    const-string v0, "Closing old face session"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 35
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v2, "RemoteException"

    .line 46
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 52
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 54
    return-void
.end method
