.class public abstract Lcom/android/server/biometrics/sensors/EnrollClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnrollmentModifier;


# instance fields
.field public final mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

.field public final mEnrollReason:I

.field public mEnrollmentStartTimeMs:J

.field public final mHardwareAuthToken:[B

.field public final mHasEnrollmentsBeforeStarting:Z

.field public mPrevRemaining:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;I)V
    .locals 15

    .line 1
    move-object v13, p0

    .line 2
    move-object/from16 v14, p6

    .line 4
    const/4 v7, 0x0

    .line 5
    const/4 v12, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object/from16 v1, p1

    .line 9
    move-object/from16 v2, p2

    .line 11
    move-object/from16 v3, p3

    .line 13
    move-object/from16 v4, p4

    .line 15
    move/from16 v5, p5

    .line 17
    move-object/from16 v6, p7

    .line 19
    move/from16 v8, p9

    .line 21
    move/from16 v9, p10

    .line 23
    move-object/from16 v10, p11

    .line 25
    move-object/from16 v11, p12

    .line 27
    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 30
    move-object/from16 v0, p8

    .line 32
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 34
    array-length v0, v14

    .line 35
    invoke-static {v14, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 38
    move-result-object v0

    .line 39
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    .line 41
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasEnrollments()Z

    .line 44
    move-result v0

    .line 45
    iput-boolean v0, v13, Lcom/android/server/biometrics/sensors/EnrollClient;->mHasEnrollmentsBeforeStarting:Z

    .line 47
    move/from16 v0, p13

    .line 49
    iput v0, v13, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollReason:I

    .line 51
    return-void
.end method

.method public static getRequestReasonFromFaceEnrollReason(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p0, v0, :cond_0

    .line 5
    if-eq p0, v1, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 10
    const/4 v1, 0x0

    .line 11
    :cond_0
    return v1
.end method

.method public static getRequestReasonFromFingerprintEnrollReason(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    return v0
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final hasEnrollmentStateChanged()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasEnrollments()Z

    .line 4
    move-result v0

    .line 5
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHasEnrollmentsBeforeStarting:Z

    .line 7
    if-eq v0, p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final hasEnrollments()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 7
    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result p0

    .line 15
    xor-int/lit8 p0, p0, 0x1

    .line 17
    return p0
.end method

.method public abstract hasReachedEnrollmentLimit()Z
.end method

.method public final interruptsPrecedingClients()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 10

    .line 1
    const-string v0, "Biometrics/EnrollClient"

    .line 3
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    .line 5
    if-eqz v1, :cond_1

    .line 7
    iget v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mPrevRemaining:I

    .line 9
    if-ge p2, v1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->vibrateSuccess()V

    .line 14
    :cond_0
    iput p2, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mPrevRemaining:I

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 18
    :try_start_0
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 20
    if-eqz v2, :cond_2

    .line 22
    move-object v1, p1

    .line 23
    check-cast v1, Landroid/hardware/face/Face;

    .line 25
    invoke-interface {v2, v1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollResult(Landroid/hardware/face/Face;I)V

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 31
    if-eqz v1, :cond_3

    .line 33
    move-object v2, p1

    .line 34
    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 36
    invoke-interface {v1, v2, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    const-string v2, "Remote exception"

    .line 43
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 47
    if-nez p2, :cond_5

    .line 49
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 51
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 53
    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 55
    invoke-interface {p2, v2, v3, p1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 58
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 60
    iget v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide p1

    .line 66
    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    .line 68
    sub-long v8, p1, v2

    .line 70
    const/4 v7, 0x1

    .line 71
    iget v6, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollReason:I

    .line 73
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnEnrolled(IIZJ)V

    .line 76
    iget p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 78
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 84
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    move-result-object p1

    .line 90
    const-string p2, "auto_time"

    .line 92
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 95
    move-result p1

    .line 96
    if-lez p1, :cond_4

    .line 98
    const-string/jumbo p1, "onEnrollResult: set timestamp"

    .line 101
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    move-result-wide v2

    .line 110
    iget p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 112
    invoke-static {p1, v2, v3, p2}, Lcom/android/server/biometrics/Utils;->putLongDb(Landroid/content/Context;JI)V

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 117
    const/4 p2, 0x1

    .line 118
    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 121
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 124
    move-result-wide p1

    .line 125
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mPowerManager:Landroid/os/PowerManager;

    .line 127
    const/4 v0, 0x2

    .line 128
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 131
    return-void
.end method

.method public onError(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v2

    .line 9
    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    .line 11
    sub-long v4, v2, v4

    .line 13
    const/4 v3, 0x0

    .line 14
    iget v2, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollReason:I

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnEnrolled(IIZJ)V

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    .line 23
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasReachedEnrollmentLimit()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "Biometrics/EnrollClient"

    .line 12
    const-string v1, "Reached enrollment limit"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    .line 28
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    .line 31
    const/16 p1, 0x64

    .line 33
    iput p1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mPrevRemaining:I

    .line 35
    return-void
.end method
