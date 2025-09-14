.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;
.super Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;Ljava/util/Map;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p2

    .line 7
    move-object v2, p3

    .line 8
    move v3, p4

    .line 9
    move-object v4, p5

    .line 10
    move/from16 v5, p6

    .line 11
    .line 12
    move-object/from16 v6, p7

    .line 13
    .line 14
    move-object/from16 v7, p8

    .line 15
    .line 16
    move-object/from16 v8, p9

    .line 17
    .line 18
    move-object/from16 v9, p10

    .line 19
    .line 20
    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final getEnumerateClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
    .locals 12

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInternalEnumerateClient;

    .line 4
    .line 5
    new-instance v9, Lcom/android/server/biometrics/log/BiometricLogger;

    .line 6
    .line 7
    iget v2, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 8
    .line 9
    iget v4, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v0, v9

    .line 14
    move-object v1, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v11

    .line 19
    move-object v1, p1

    .line 20
    move-object v2, p2

    .line 21
    move-object v3, p3

    .line 22
    move/from16 v4, p4

    .line 23
    .line 24
    move-object/from16 v5, p5

    .line 25
    .line 26
    move-object/from16 v6, p6

    .line 27
    .line 28
    move-object/from16 v7, p7

    .line 29
    .line 30
    move/from16 v8, p8

    .line 31
    .line 32
    move-object/from16 v10, p10

    .line 33
    .line 34
    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 35
    .line 36
    .line 37
    return-object v11
.end method

.method public final getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;
    .locals 14

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRemovalClient;

    .line 4
    .line 5
    filled-new-array/range {p4 .. p4}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    new-instance v12, Lcom/android/server/biometrics/log/BiometricLogger;

    .line 10
    .line 11
    iget v8, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 12
    .line 13
    iget v10, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 14
    .line 15
    const/4 v9, 0x4

    .line 16
    const/4 v11, 0x0

    .line 17
    move-object v6, v12

    .line 18
    move-object v7, p1

    .line 19
    invoke-direct/range {v6 .. v11}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    move-object v0, v13

    .line 24
    move-object v1, p1

    .line 25
    move-object/from16 v2, p2

    .line 26
    .line 27
    move-object/from16 v3, p3

    .line 28
    .line 29
    move/from16 v6, p5

    .line 30
    .line 31
    move-object/from16 v7, p6

    .line 32
    .line 33
    move-object/from16 v8, p7

    .line 34
    .line 35
    move/from16 v9, p8

    .line 36
    .line 37
    move-object v10, v12

    .line 38
    move-object/from16 v11, p10

    .line 39
    .line 40
    move-object/from16 v12, p11

    .line 41
    .line 42
    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    return-object v13
.end method

.method public final interruptsPrecedingClients()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    instance-of p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    .line 10
    .line 11
    return p0
.end method

.method public final onAddUnknownTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 10
    .line 11
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    .line 12
    .line 13
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/fingerprint/Fingerprint;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
