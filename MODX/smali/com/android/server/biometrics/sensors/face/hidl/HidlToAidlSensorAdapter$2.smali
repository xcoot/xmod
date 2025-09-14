.class public final Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;
.super Lcom/android/server/biometrics/sensors/StartUserClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;

.field public final mHasEnrolledBiometrics:Z

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;I)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p1

    .line 3
    iput-object v0, v9, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    .line 5
    move/from16 v0, p11

    .line 7
    iput v0, v9, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->val$userId:I

    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p2

    .line 12
    move-object v2, p3

    .line 13
    move v4, p5

    .line 14
    move/from16 v5, p6

    .line 16
    move-object/from16 v6, p7

    .line 18
    move-object/from16 v7, p8

    .line 20
    move-object v8, p4

    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/StartUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    .line 24
    move/from16 v0, p9

    .line 26
    iput-boolean v0, v9, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->mHasEnrolledBiometrics:Z

    .line 28
    move-object/from16 v0, p10

    .line 30
    iput-object v0, v9, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->mAuthenticatorIds:Ljava/util/Map;

    .line 32
    return-void
.end method


# virtual methods
.method public final daemonSetActiveUser()V
    .locals 6

    .line 1
    const-string v0, "HidlToAidlSensorAdapter"

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 7
    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->val$userId:I

    .line 9
    invoke-static {v4}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    .line 12
    move-result-object v4

    .line 13
    const-string/jumbo v5, "facedata"

    .line 16
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    move-result-wide v1

    .line 23
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    .line 25
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 27
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->val$userId:I

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v4, p0, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    .line 36
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string/jumbo v3, "daemonSetActiveUser : "

    .line 42
    invoke-static {v3, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 45
    const/4 p0, -0x1

    .line 46
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v4, "daemonSetActiveUser FINISH ("

    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    move-result-wide v4

    .line 58
    sub-long/2addr v4, v1

    .line 59
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, "ms) RESULT: "

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->startHalOperation()V

    .line 7
    return-void
.end method

.method public final startHalOperation()V
    .locals 12

    .line 1
    const-string v0, ", id = "

    .line 3
    const-string/jumbo v1, "getAuthenticatorId FINISH ("

    .line 6
    new-instance v2, Ljava/io/File;

    .line 8
    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 10
    invoke-static {v3}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    .line 13
    move-result-object v3

    .line 14
    const-string/jumbo v4, "facedata"

    .line 17
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    const-string v4, "FaceUpdateActiveUserClient"

    .line 27
    if-nez v2, :cond_0

    .line 29
    const-string/jumbo v0, "vold has not created the directory?"

    .line 32
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 37
    invoke-interface {v0, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 40
    return-void

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->daemonSetActiveUser()V

    .line 44
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 46
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    move-result-wide v5

    .line 56
    invoke-interface {v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 59
    move-result-object v2

    .line 60
    iget-wide v7, v2, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 62
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->mAuthenticatorIds:Ljava/util/Map;

    .line 64
    iget v9, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 66
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v9

    .line 70
    iget-boolean v10, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$2;->mHasEnrolledBiometrics:Z

    .line 72
    if-eqz v10, :cond_1

    .line 74
    move-wide v10, v7

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-wide/16 v10, 0x0

    .line 78
    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    move-result-object v10

    .line 82
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    move-result-wide v9

    .line 94
    sub-long/2addr v9, v5

    .line 95
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v1, "ms)  user = "

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 111
    if-eqz v1, :cond_2

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto :goto_2

    .line 128
    :cond_2
    const-string v0, ""

    .line 130
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/StartUserClient;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    .line 142
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 144
    const/4 v2, 0x0

    .line 145
    invoke-interface {v0, v1, v3, v2}, Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;->onUserStarted(IILjava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 150
    const/4 v1, 0x1

    .line 151
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_3

    .line 155
    :goto_2
    const-string v1, "Failed to setActiveUser: "

    .line 157
    invoke-static {v1, v0, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 162
    invoke-interface {v0, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 165
    :goto_3
    return-void
.end method

.method public final unableToStart()V
    .locals 0

    .line 1
    return-void
.end method
