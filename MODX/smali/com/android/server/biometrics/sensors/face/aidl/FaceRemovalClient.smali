.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;
.super Lcom/android/server/biometrics/sensors/RemovalClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBiometricIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object/from16 v4, p4

    .line 7
    move/from16 v5, p6

    .line 9
    move-object/from16 v6, p7

    .line 11
    move-object/from16 v7, p8

    .line 13
    move/from16 v8, p9

    .line 15
    move-object/from16 v9, p10

    .line 17
    move-object/from16 v10, p11

    .line 19
    move-object/from16 v11, p12

    .line 21
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/RemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 24
    move-object/from16 v1, p5

    .line 26
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;->mBiometricIds:[I

    .line 28
    return-void
.end method


# virtual methods
.method public final startHalOperation()V
    .locals 7

    .line 1
    const-string v0, "FaceRemovalClient"

    .line 3
    const-string/jumbo v1, "removeEnrollments START "

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 17
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 20
    move-result-object v1

    .line 21
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;->mBiometricIds:[I

    .line 23
    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonRemove([I)V

    .line 26
    goto :goto_2

    .line 27
    :catch_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    move-result-wide v3

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;->mBiometricIds:[I

    .line 40
    array-length v1, v1

    .line 41
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    move v1, v2

    .line 52
    :goto_0
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;->mBiometricIds:[I

    .line 54
    array-length v5, v5

    .line 55
    if-ge v1, v5, :cond_1

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string/jumbo v6, "removeEnrollments : "

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;->mBiometricIds:[I

    .line 70
    aget v6, v6, v1

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 87
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 93
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 96
    move-result-object v1

    .line 97
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;->mBiometricIds:[I

    .line 99
    invoke-interface {v1, v5}, Landroid/hardware/biometrics/face/ISession;->removeEnrollments([I)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string/jumbo v5, "removeEnrollments FINISH ("

    .line 110
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    move-result-wide v5

    .line 117
    sub-long/2addr v5, v3

    .line 118
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v3, "ms)"

    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_2

    .line 135
    :goto_1
    const-string v3, "Remote exception when requesting remove"

    .line 137
    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 142
    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 145
    :goto_2
    return-void
.end method
