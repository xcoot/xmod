.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;
.super Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 5
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 7
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, v0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mProviders:Ljava/util/List;

    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 23
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 25
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 27
    sget-boolean p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    .line 29
    const-string v0, "FingerprintService.Ext"

    .line 31
    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    const-string/jumbo v1, "onAllAuthenticatorsRegistered: "

    .line 39
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 44
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getProviders()Ljava/util/List;

    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v2

    .line 52
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 64
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 66
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-direct {v5, v3, p0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;I)V

    .line 74
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    invoke-virtual {v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 80
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mEnrollSessionMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    .line 82
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 92
    const/4 v6, 0x4

    .line 93
    invoke-direct {v5, v3, v4, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 96
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 105
    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object v1

    .line 110
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v2

    .line 114
    const/4 v3, 0x1

    .line 115
    if-eqz v2, :cond_6

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 123
    if-nez v2, :cond_3

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    if-eqz p1, :cond_4

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v5, "onAllAuthenticatorsRegistered: prop = "

    .line 133
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v4

    .line 143
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_4
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_2

    .line 152
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isUltrasonicType()Z

    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_5

    .line 158
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUltrasonicUdfps:Z

    .line 160
    :cond_5
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isOpticalType()Z

    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_2

    .line 166
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasOpticalUdfps:Z

    .line 168
    goto :goto_1

    .line 169
    :cond_6
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasOpticalUdfps:Z

    .line 171
    if-nez p1, :cond_8

    .line 173
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUltrasonicUdfps:Z

    .line 175
    if-eqz p1, :cond_7

    .line 177
    goto :goto_2

    .line 178
    :cond_7
    const/4 v3, 0x0

    .line 179
    :cond_8
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 181
    return-void

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    monitor-exit v0

    .line 184
    throw p0
.end method
