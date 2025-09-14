.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$4;
.super Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/face/FaceUtils;Ljava/util/Map;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$4;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

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

    .line 12
    move-object/from16 v6, p7

    .line 14
    move-object/from16 v7, p8

    .line 16
    move-object/from16 v8, p9

    .line 18
    move-object/from16 v9, p10

    .line 20
    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final getEnumerateClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
    .locals 12

    .line 1
    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceInternalEnumerateClient;

    .line 3
    move-object v0, v11

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move/from16 v4, p4

    .line 9
    move-object/from16 v5, p5

    .line 11
    move-object/from16 v6, p6

    .line 13
    move-object/from16 v7, p7

    .line 15
    move/from16 v8, p8

    .line 17
    move-object/from16 v9, p9

    .line 19
    move-object/from16 v10, p10

    .line 21
    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 24
    return-object v11
.end method

.method public final getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;
    .locals 14

    .line 1
    new-instance v13, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;

    .line 3
    const/4 v4, 0x0

    .line 4
    filled-new-array/range {p4 .. p4}, [I

    .line 7
    move-result-object v5

    .line 8
    move-object v0, v13

    .line 9
    move-object v1, p1

    .line 10
    move-object/from16 v2, p2

    .line 12
    move-object/from16 v3, p3

    .line 14
    move/from16 v6, p5

    .line 16
    move-object/from16 v7, p6

    .line 18
    move-object/from16 v8, p7

    .line 20
    move/from16 v9, p8

    .line 22
    move-object/from16 v10, p9

    .line 24
    move-object/from16 v11, p10

    .line 26
    move-object/from16 v12, p11

    .line 28
    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 31
    return-object v13
.end method

.method public final interruptsPrecedingClients()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$4;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    instance-of p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    .line 11
    return p0
.end method

.method public final onAddUnknownTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 10
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 12
    check-cast p1, Landroid/hardware/face/Face;

    .line 14
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V

    .line 17
    return-void
.end method
