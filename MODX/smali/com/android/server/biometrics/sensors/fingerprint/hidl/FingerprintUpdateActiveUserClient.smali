.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;
.super Lcom/android/server/biometrics/sensors/StartUserClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;

.field public final mCurrentUserId:Ljava/util/function/Supplier;

.field public mDirectory:Ljava/io/File;

.field public final mForceUpdateAuthenticatorId:Z

.field public final mHasEnrolledBiometrics:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;ZLjava/util/Map;ZLcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    const/4 v3, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    move-object v6, p5

    .line 9
    move-object/from16 v7, p6

    .line 11
    move-object/from16 v8, p11

    .line 13
    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/StartUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    .line 16
    move-object/from16 v0, p7

    .line 18
    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mCurrentUserId:Ljava/util/function/Supplier;

    .line 20
    move/from16 v0, p10

    .line 22
    iput-boolean v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mForceUpdateAuthenticatorId:Z

    .line 24
    move/from16 v0, p8

    .line 26
    iput-boolean v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mHasEnrolledBiometrics:Z

    .line 28
    move-object/from16 v0, p9

    .line 30
    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 32
    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mCurrentUserId:Ljava/util/function/Supplier;

    .line 6
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Integer;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result v0

    .line 16
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    const-string v4, "FingerprintUpdateActiveUserClient"

    .line 22
    if-ne v0, v1, :cond_0

    .line 24
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mForceUpdateAuthenticatorId:Z

    .line 26
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "Already user: "

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mCurrentUserId:Ljava/util/function/Supplier;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ", returning"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/StartUserClient;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    .line 54
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-interface {v0, v1, v3, v4}, Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;->onUserStarted(IILjava/lang/Object;)V

    .line 60
    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 63
    return-void

    .line 64
    :cond_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    .line 66
    if-eqz v0, :cond_4

    .line 68
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 70
    if-ge v0, v2, :cond_1

    .line 72
    const-string v1, "First SDK version "

    .line 74
    const-string v2, " is invalid; must be at least VERSION_CODES.BASE"

    .line 76
    invoke-static {v0, v1, v2, v4}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    const/16 v1, 0x1b

    .line 81
    if-gt v0, v1, :cond_2

    .line 83
    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 85
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 88
    move-result-object v0

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 92
    invoke-static {v0}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    .line 95
    move-result-object v0

    .line 96
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 98
    const-string/jumbo v2, "fpdata"

    .line 101
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mDirectory:Ljava/io/File;

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_5

    .line 112
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mDirectory:Ljava/io/File;

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "Cannot make directory: "

    .line 124
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mDirectory:Ljava/io/File;

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-interface {p1, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 146
    return-void

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mDirectory:Ljava/io/File;

    .line 149
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_5

    .line 155
    const-string v0, "Restorecons failed. Directory will have wrong label."

    .line 157
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {p1, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 163
    return-void

    .line 164
    :cond_4
    new-instance p1, Ljava/io/File;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    const-string v1, "/data/vendor/biometrics/fp/User_"

    .line 170
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mDirectory:Ljava/io/File;

    .line 187
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->startHalOperation()V

    .line 190
    return-void
.end method

.method public final startHalOperation()V
    .locals 8

    .line 1
    const-string v0, "FingerprintUpdateActiveUserClient"

    .line 3
    const-string v1, "FingerprintUpdateActiveUserClient: from daemon: "

    .line 5
    const-string v2, "Setting active user: "

    .line 7
    const-string/jumbo v3, "startHalOperation: setActiveGroup, "

    .line 10
    const/4 v4, 0x0

    .line 11
    :try_start_0
    sget-boolean v5, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 13
    if-eqz v5, :cond_0

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 22
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    goto/16 :goto_2

    .line 36
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 55
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;

    .line 61
    iget-object v5, v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 63
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 69
    if-nez v5, :cond_1

    .line 71
    const-string v1, "Failed to setActiveGroup: HIDL daemon is null."

    .line 73
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 78
    invoke-interface {v1, p0, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 81
    return-void

    .line 82
    :cond_1
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mDirectory:Ljava/io/File;

    .line 84
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 87
    move-result-object v5

    .line 88
    iget-object v6, v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 90
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 96
    invoke-interface {v6, v3, v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    .line 99
    iget-boolean v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mHasEnrolledBiometrics:Z

    .line 101
    if-eqz v5, :cond_2

    .line 103
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 105
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 111
    invoke-interface {v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    .line 114
    move-result-wide v5

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 137
    move-result-object v2

    .line 138
    new-instance v7, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;

    .line 140
    invoke-direct {v7, v1, v5, v6}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;J)V

    .line 143
    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    const-wide/16 v5, 0x0

    .line 149
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v2

    .line 155
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    move-result-object v5

    .line 159
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/StartUserClient;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    .line 164
    const/4 v2, 0x0

    .line 165
    invoke-interface {v1, v3, v4, v2}, Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;->onUserStarted(IILjava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 170
    const/4 v2, 0x1

    .line 171
    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_3

    .line 175
    :goto_2
    const-string v2, "Failed to setActiveGroup: "

    .line 177
    invoke-static {v2, v1, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 182
    invoke-interface {v0, p0, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 185
    :goto_3
    return-void
.end method

.method public final unableToStart()V
    .locals 0

    .line 1
    return-void
.end method
