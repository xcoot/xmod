.class public final Lcom/android/server/biometrics/BiometricService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field mAuthSession:Lcom/android/server/biometrics/AuthSession;

.field public final mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

.field public final mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

.field mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mEnabledOnKeyguardCallbacks:Ljava/util/List;

.field mGateKeeper:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mHandler:Landroid/os/Handler;

.field final mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

.field public final mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

.field mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mRandom:Ljava/util/Random;

.field public final mRequestCounter:Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

.field public final mSensors:Ljava/util/ArrayList;

.field final mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

.field mTrustManager:Landroid/app/trust/ITrustManager;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v5, Landroid/hardware/biometrics/PromptInfo;

    .line 5
    .line 6
    invoke-direct {v5}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v5, p3}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    iget-object v9, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    move v4, p2

    .line 28
    move-object v6, p1

    .line 29
    invoke-static/range {v0 .. v9}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManagerImpl;)Lcom/android/server/biometrics/PreAuthInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/biometrics/BiometricService;Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Legacy Settings: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 23
    .line 24
    .line 25
    const-string v0, "Sensors:"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, " "

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "CurrentSession: "

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-lez v0, :cond_3

    .line 124
    .line 125
    const-string v1, " [ in progress client ]"

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    :goto_2
    if-ge v1, v0, :cond_3

    .line 132
    .line 133
    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 140
    .line 141
    if-eqz v2, :cond_2

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const-string v3, " - "

    .line 148
    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/BiometricService$Injector;-><init>()V

    sget-object v1, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/biometrics/BiometricService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;Lcom/android/server/biometrics/BiometricHandlerProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;Lcom/android/server/biometrics/BiometricHandlerProvider;)V
    .locals 8

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 6
    invoke-virtual {p3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    .line 9
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 10
    new-instance p2, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 12
    new-instance p2, Lcom/android/server/biometrics/BiometricService$SettingObserver;

    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/os/UserManager;

    const-class p3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 13
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    const-class p3, Landroid/hardware/face/FaceManager;

    .line 14
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/hardware/face/FaceManager;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService$SettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Landroid/os/UserManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V

    .line 15
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 16
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 17
    new-instance p3, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 18
    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

    .line 19
    invoke-static {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 21
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    .line 22
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    .line 23
    new-instance p2, Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    const-class p3, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CameraManager;

    const-class p3, Landroid/hardware/SensorPrivacyManager;

    .line 24
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {p2, p3}, Lcom/android/server/biometrics/BiometricCameraManagerImpl;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    .line 25
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    .line 26
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 28
    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getGateKeeperService: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BiometricService"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 30
    :goto_0
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mGateKeeper:Landroid/service/gatekeeper/IGateKeeperService;

    .line 31
    new-instance p2, Lcom/android/server/biometrics/BiometricNotificationLogger;

    .line 32
    sget-object p3, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-direct {p2, p3}, Lcom/android/server/biometrics/BiometricNotificationLogger;-><init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V

    .line 33
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

    .line 34
    const-class p2, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    monitor-enter p2

    .line 35
    :try_start_1
    sget-object p3, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    if-nez p3, :cond_0

    .line 36
    new-instance p3, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 37
    sget-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object p3, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 38
    :cond_0
    :goto_1
    monitor-exit p2

    .line 39
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class p0, Lcom/android/server/biometrics/BiometricService;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-interface {p1, p2, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 43
    const-string p1, "BiometricService"

    const-string p2, "Failed to register user switch observer"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    .line 44
    :goto_3
    monitor-exit p2

    throw p0
.end method


# virtual methods
.method public final authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v11, p2

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Creating authSession with authRequest: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object/from16 v9, p10

    .line 13
    .line 14
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v15, "BiometricService"

    .line 22
    .line 23
    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 27
    .line 28
    const/4 v13, 0x1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Existing AuthSession: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 51
    .line 52
    invoke-virtual {v1, v13}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 62
    .line 63
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move/from16 v14, p6

    .line 73
    .line 74
    invoke-static {v1, v14}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    .line 75
    .line 76
    .line 77
    move-result v20

    .line 78
    new-instance v10, Lcom/android/server/biometrics/AuthSession;

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 85
    .line 86
    new-instance v5, Lcom/android/server/biometrics/BiometricService$2;

    .line 87
    .line 88
    invoke-direct {v5, v0, v11, v12}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    .line 89
    .line 90
    .line 91
    iget-object v6, v0, Lcom/android/server/biometrics/BiometricService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 92
    .line 93
    iget-object v7, v0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 94
    .line 95
    new-instance v8, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;

    .line 96
    .line 97
    invoke-direct {v8, v0, v11, v12}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/android/server/biometrics/BiometricService$1;

    .line 101
    .line 102
    invoke-direct {v1, v0, v11, v12}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    move-object/from16 v17, v1

    .line 114
    .line 115
    const-string v1, "android.hardware.fingerprint"

    .line 116
    .line 117
    invoke-virtual {v13, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_1

    .line 122
    .line 123
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 124
    .line 125
    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 130
    .line 131
    if-eqz v1, :cond_1

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :goto_0
    move-object/from16 v21, v1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :goto_1
    sget-object v22, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 147
    .line 148
    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 149
    .line 150
    move-object v1, v10

    .line 151
    move-object/from16 v9, p10

    .line 152
    .line 153
    move-object v13, v10

    .line 154
    move-object/from16 v10, p1

    .line 155
    .line 156
    move-wide/from16 v11, p2

    .line 157
    .line 158
    move-object/from16 v23, v13

    .line 159
    .line 160
    move-wide/from16 v13, p4

    .line 161
    .line 162
    move-object/from16 v24, v15

    .line 163
    .line 164
    move/from16 v15, p6

    .line 165
    .line 166
    move-object/from16 v16, v17

    .line 167
    .line 168
    move-object/from16 v17, p7

    .line 169
    .line 170
    move-object/from16 v18, p8

    .line 171
    .line 172
    move-object/from16 v19, p9

    .line 173
    .line 174
    invoke-direct/range {v1 .. v22}, Lcom/android/server/biometrics/AuthSession;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/SemBiometricSysUiWrapper;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V

    .line 175
    .line 176
    .line 177
    move-object/from16 v1, v23

    .line 178
    .line 179
    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 180
    .line 181
    const/4 v0, 0x1

    .line 182
    iput-boolean v0, v1, Lcom/android/server/biometrics/AuthSession;->mUseSwitchingMode:Z

    .line 183
    .line 184
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->goToInitialState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    move-object v1, v0

    .line 190
    const-string v0, "RemoteException"

    .line 191
    .line 192
    move-object/from16 v2, v24

    .line 193
    .line 194
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .line 196
    .line 197
    :goto_2
    return-void
.end method

.method public final getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 6
    .line 7
    cmp-long p1, v0, p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final handleAuthenticationSucceeded(JI[BLandroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "handleAuthenticationSucceeded(), sensorId: "

    .line 2
    .line 3
    .line 4
    const-string v1, "BiometricService"

    .line 5
    .line 6
    invoke-static {p3, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string/jumbo p0, "handleAuthenticationSucceeded: AuthSession is null"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lcom/android/server/biometrics/BiometricSensor;

    .line 40
    .line 41
    iget v2, p2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 42
    .line 43
    if-ne v2, p3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    const/16 p2, 0xf

    .line 50
    .line 51
    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string p0, "Unknown sensorId: "

    .line 57
    .line 58
    invoke-static {p3, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move p0, v0

    .line 62
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    const-string v1, "BiometricService/AuthSession"

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    const-string/jumbo p0, "onAuthenticationSucceeded after successful auth"

    .line 71
    .line 72
    .line 73
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_3
    iput p3, p1, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 79
    .line 80
    if-eqz p0, :cond_4

    .line 81
    .line 82
    iput-object p4, p1, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    if-eqz p4, :cond_5

    .line 86
    .line 87
    const-string p0, "Dropping authToken for non-strong biometric, id: "

    .line 88
    .line 89
    invoke-static {p3, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_1
    new-instance p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;

    .line 93
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string p2, ""

    .line 98
    .line 99
    if-eqz p5, :cond_6

    .line 100
    .line 101
    const-string p4, "KEY_IDENTIFIER_NAME"

    .line 102
    .line 103
    invoke-virtual {p5, p4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p4

    .line 107
    iput-object p4, p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->name:Ljava/lang/String;

    .line 108
    .line 109
    const-string p4, "KEY_BIOMETRICS_ID"

    .line 110
    .line 111
    invoke-virtual {p5, p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result p4

    .line 115
    iput p4, p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->id:I

    .line 116
    .line 117
    const-string p4, "KEY_CHALLENGE_TOKEN"

    .line 118
    .line 119
    invoke-virtual {p5, p4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    iput-object p4, p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->challengeToken:[B

    .line 124
    .line 125
    iget-object p4, p1, Lcom/android/server/biometrics/AuthSession;->mAuthenticationResults:Landroid/util/SparseArray;

    .line 126
    .line 127
    invoke-virtual {p4, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    const/4 p4, 0x6

    .line 131
    :try_start_0
    iget-object p5, p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->name:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result p5

    .line 137
    if-eqz p5, :cond_7

    .line 138
    .line 139
    iget-object p0, p1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 140
    .line 141
    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    .line 142
    .line 143
    .line 144
    move-result p5

    .line 145
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    .line 146
    .line 147
    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;

    .line 148
    .line 149
    invoke-direct {v2, p0, p5, p2}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    check-cast v0, Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catch_0
    move-exception p0

    .line 159
    goto :goto_3

    .line 160
    :cond_7
    iget-object p2, p1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 161
    .line 162
    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    .line 163
    .line 164
    .line 165
    move-result p5

    .line 166
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->name:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v0, p2, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    .line 169
    .line 170
    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;

    .line 171
    .line 172
    invoke-direct {v2, p2, p5, p0}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    check-cast v0, Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 178
    .line 179
    .line 180
    :goto_2
    iget-object p0, p1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 181
    .line 182
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-eqz p2, :cond_9

    .line 193
    .line 194
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Lcom/android/server/biometrics/BiometricSensor;

    .line 199
    .line 200
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-eqz p2, :cond_8

    .line 205
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    iput-wide v2, p1, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    .line 211
    .line 212
    iput p4, p1, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_9
    const/4 p0, 0x7

    .line 216
    iput p0, p1, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :goto_3
    const-string p2, "RemoteException"

    .line 220
    .line 221
    invoke-static {v1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .line 223
    .line 224
    :goto_4
    iget p0, p1, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 225
    .line 226
    if-ne p0, p4, :cond_a

    .line 227
    .line 228
    new-instance p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;

    .line 229
    .line 230
    const/4 p2, 0x1

    .line 231
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/AuthSession;II)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_a
    new-instance p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;

    .line 239
    .line 240
    const/4 p2, 0x1

    .line 241
    invoke-direct {p0, p3, p2}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;-><init>(II)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    .line 245
    .line 246
    .line 247
    :goto_5
    return-void
.end method

.method public final handleOnDismissed(J[BI)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    const-string/jumbo v0, "onDismissed: "

    .line 14
    .line 15
    .line 16
    const-string v1, ", AuthSession is not current"

    .line 17
    .line 18
    const-string v3, "BiometricService"

    .line 19
    .line 20
    invoke-static {v2, v0, v1, v3}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string v4, "Unhandled reason: "

    .line 25
    .line 26
    const-string v5, "addAuthToken: "

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    const-string v11, "BiometricService/AuthSession"

    .line 30
    .line 31
    const-string v12, ", SessionId: "

    .line 32
    .line 33
    const-string v13, ", IsCrypto: "

    .line 34
    .line 35
    const-string v14, ", User: "

    .line 36
    .line 37
    if-ne v2, v6, :cond_3

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v15

    .line 43
    iget-wide v9, v3, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    .line 44
    .line 45
    sub-long v9, v15, v9

    .line 46
    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v15, "Confirmed! Modality: "

    .line 50
    .line 51
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    .line 55
    .line 56
    .line 57
    move-result v15

    .line 58
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v14, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 65
    .line 66
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v13, ", Client: "

    .line 80
    .line 81
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v13, v3, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 85
    .line 86
    invoke-virtual {v13}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    if-eqz v13, :cond_1

    .line 91
    .line 92
    const/4 v13, 0x3

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const/4 v13, 0x2

    .line 95
    :goto_0
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v13, ", RequireConfirmation: "

    .line 99
    .line 100
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v13, v3, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 104
    .line 105
    iget-boolean v13, v13, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    .line 106
    .line 107
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v13, ", State: 3, Latency: "

    .line 111
    .line 112
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v12, v3, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 122
    .line 123
    iget-object v12, v12, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 124
    .line 125
    iget v12, v12, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 126
    .line 127
    invoke-static {v6, v12, v11}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 131
    .line 132
    iget-object v12, v3, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    .line 135
    .line 136
    .line 137
    move-result v18

    .line 138
    iget-object v13, v3, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 139
    .line 140
    invoke-virtual {v13}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    if-eqz v13, :cond_2

    .line 145
    .line 146
    const/16 v19, 0x3

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    const/16 v19, 0x2

    .line 150
    .line 151
    :goto_1
    iget-boolean v7, v3, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    .line 152
    .line 153
    iget-object v8, v3, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 154
    .line 155
    iget-boolean v8, v8, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    .line 156
    .line 157
    iget v13, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const/16 v23, 0x3

    .line 163
    .line 164
    const/high16 v26, -0x40800000    # -1.0f

    .line 165
    .line 166
    move-object/from16 v17, v12

    .line 167
    .line 168
    move/from16 v20, v7

    .line 169
    .line 170
    move-wide/from16 v21, v9

    .line 171
    .line 172
    move/from16 v24, v8

    .line 173
    .line 174
    move/from16 v25, v13

    .line 175
    .line 176
    invoke-static/range {v17 .. v26}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIZJIZIF)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 182
    .line 183
    .line 184
    move-result-wide v9

    .line 185
    iget-wide v7, v3, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    .line 186
    .line 187
    sub-long v7, v9, v7

    .line 188
    .line 189
    const/4 v6, 0x2

    .line 190
    if-eq v2, v6, :cond_5

    .line 191
    .line 192
    const/4 v9, 0x3

    .line 193
    if-eq v2, v9, :cond_4

    .line 194
    .line 195
    const/4 v10, 0x0

    .line 196
    goto :goto_2

    .line 197
    :cond_4
    const/16 v10, 0xa

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_5
    const/4 v9, 0x3

    .line 201
    const/16 v10, 0xd

    .line 202
    .line 203
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v6, "Dismissed! Modality: "

    .line 206
    .line 207
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget v6, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 221
    .line 222
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v6, ", Action: 2, Client: "

    .line 236
    .line 237
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 241
    .line 242
    invoke-virtual {v6}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_6

    .line 247
    .line 248
    move v6, v9

    .line 249
    goto :goto_3

    .line 250
    :cond_6
    const/4 v6, 0x2

    .line 251
    :goto_3
    const-string v13, ", Reason: "

    .line 252
    .line 253
    const-string v14, ", Error: "

    .line 254
    .line 255
    invoke-static {v6, v2, v13, v14, v15}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v6, ", Latency: "

    .line 262
    .line 263
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 273
    .line 274
    iget-object v6, v6, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 275
    .line 276
    iget v6, v6, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 277
    .line 278
    invoke-static {v15, v6, v11}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    if-eqz v10, :cond_8

    .line 282
    .line 283
    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 284
    .line 285
    iget-object v12, v3, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 286
    .line 287
    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    .line 288
    .line 289
    .line 290
    move-result v17

    .line 291
    iget-object v13, v3, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 292
    .line 293
    invoke-virtual {v13}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    .line 294
    .line 295
    .line 296
    move-result v13

    .line 297
    if-eqz v13, :cond_7

    .line 298
    .line 299
    move/from16 v19, v9

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_7
    const/16 v19, 0x2

    .line 303
    .line 304
    :goto_4
    iget-boolean v9, v3, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    .line 305
    .line 306
    iget v13, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 307
    .line 308
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    const/16 v18, 0x2

    .line 312
    .line 313
    const/16 v24, 0x0

    .line 314
    .line 315
    move-object/from16 v16, v12

    .line 316
    .line 317
    move/from16 v20, v9

    .line 318
    .line 319
    move-wide/from16 v21, v7

    .line 320
    .line 321
    move/from16 v23, v10

    .line 322
    .line 323
    move/from16 v25, v13

    .line 324
    .line 325
    invoke-static/range {v16 .. v25}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V

    .line 326
    .line 327
    .line 328
    :cond_8
    :goto_5
    packed-switch v2, :pswitch_data_0

    .line 329
    .line 330
    .line 331
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    :goto_6
    const/4 v6, 0x0

    .line 347
    goto/16 :goto_a

    .line 348
    .line 349
    :catchall_0
    move-exception v0

    .line 350
    const/4 v6, 0x0

    .line 351
    goto/16 :goto_10

    .line 352
    .line 353
    :catch_0
    move-exception v0

    .line 354
    const/4 v6, 0x0

    .line 355
    goto/16 :goto_d

    .line 356
    .line 357
    :pswitch_0
    if-eqz v0, :cond_9

    .line 358
    .line 359
    iget-object v4, v3, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 360
    .line 361
    invoke-virtual {v4, v0}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    .line 362
    .line 363
    .line 364
    :goto_7
    :pswitch_1
    const/4 v6, 0x0

    .line 365
    goto :goto_8

    .line 366
    :cond_9
    const-string/jumbo v0, "credentialAttestation is null"

    .line 367
    .line 368
    .line 369
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    goto :goto_7

    .line 373
    :pswitch_2
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 374
    .line 375
    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 376
    .line 377
    invoke-virtual {v2}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    iget v4, v3, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    .line 382
    .line 383
    iget v5, v3, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 384
    .line 385
    invoke-interface {v0, v2, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 386
    .line 387
    .line 388
    goto :goto_6

    .line 389
    :pswitch_3
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 390
    .line 391
    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 392
    .line 393
    invoke-virtual {v2}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    .line 394
    .line 395
    .line 396
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    const/16 v4, 0xa

    .line 398
    .line 399
    const/4 v6, 0x0

    .line 400
    :try_start_1
    invoke-interface {v0, v2, v4, v6}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 401
    .line 402
    .line 403
    goto :goto_a

    .line 404
    :catchall_1
    move-exception v0

    .line 405
    goto/16 :goto_10

    .line 406
    .line 407
    :catch_1
    move-exception v0

    .line 408
    goto/16 :goto_d

    .line 409
    .line 410
    :pswitch_4
    const/4 v6, 0x0

    .line 411
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 412
    .line 413
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    .line 414
    .line 415
    .line 416
    goto :goto_a

    .line 417
    :goto_8
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    .line 418
    .line 419
    if-eqz v0, :cond_a

    .line 420
    .line 421
    iget-object v4, v3, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 422
    .line 423
    invoke-virtual {v4, v0}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    goto :goto_9

    .line 443
    :cond_a
    const-string/jumbo v0, "mTokenEscrow is null"

    .line 444
    .line 445
    .line 446
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    :goto_9
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 450
    .line 451
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_c

    .line 456
    .line 457
    new-instance v0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;

    .line 458
    .line 459
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 460
    .line 461
    .line 462
    iget-object v4, v3, Lcom/android/server/biometrics/AuthSession;->mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

    .line 463
    .line 464
    if-eqz v4, :cond_b

    .line 465
    .line 466
    iget-object v5, v3, Lcom/android/server/biometrics/AuthSession;->mAuthenticationResults:Landroid/util/SparseArray;

    .line 467
    .line 468
    iget v4, v4, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 469
    .line 470
    invoke-virtual {v5, v4, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    check-cast v0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;

    .line 475
    .line 476
    :cond_b
    iget-object v4, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 477
    .line 478
    invoke-static/range {p4 .. p4}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    iget v5, v0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->id:I

    .line 483
    .line 484
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->challengeToken:[B

    .line 485
    .line 486
    invoke-interface {v4, v2, v5, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSemAuthenticationSucceeded(II[B)V

    .line 487
    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_c
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 491
    .line 492
    invoke-static/range {p4 .. p4}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 497
    .line 498
    .line 499
    :goto_a
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    .line 500
    .line 501
    if-eqz v0, :cond_e

    .line 502
    .line 503
    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 504
    .line 505
    if-eqz v2, :cond_e

    .line 506
    .line 507
    array-length v0, v0

    .line 508
    new-array v12, v0, [B

    .line 509
    .line 510
    move v10, v6

    .line 511
    :goto_b
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    .line 512
    .line 513
    array-length v2, v0

    .line 514
    if-ge v10, v2, :cond_d

    .line 515
    .line 516
    aget-byte v0, v0, v10

    .line 517
    .line 518
    aput-byte v0, v12, v10

    .line 519
    .line 520
    add-int/lit8 v10, v10, 0x1

    .line 521
    .line 522
    goto :goto_b

    .line 523
    :cond_d
    iget-object v7, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 524
    .line 525
    iget-object v8, v3, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    .line 526
    .line 527
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 528
    .line 529
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v9

    .line 533
    iget v10, v3, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 534
    .line 535
    iget v11, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 536
    .line 537
    invoke-virtual/range {v7 .. v12}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 538
    .line 539
    .line 540
    :cond_e
    :goto_c
    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 541
    .line 542
    .line 543
    goto :goto_f

    .line 544
    :goto_d
    :try_start_2
    const-string v2, "Remote exception"

    .line 545
    .line 546
    invoke-static {v11, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 547
    .line 548
    .line 549
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    .line 550
    .line 551
    if-eqz v0, :cond_e

    .line 552
    .line 553
    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 554
    .line 555
    if-eqz v2, :cond_e

    .line 556
    .line 557
    array-length v0, v0

    .line 558
    new-array v12, v0, [B

    .line 559
    .line 560
    move v10, v6

    .line 561
    :goto_e
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    .line 562
    .line 563
    array-length v2, v0

    .line 564
    if-ge v10, v2, :cond_f

    .line 565
    .line 566
    aget-byte v0, v0, v10

    .line 567
    .line 568
    aput-byte v0, v12, v10

    .line 569
    .line 570
    add-int/lit8 v10, v10, 0x1

    .line 571
    .line 572
    goto :goto_e

    .line 573
    :cond_f
    iget-object v7, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 574
    .line 575
    iget-object v8, v3, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    .line 576
    .line 577
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 578
    .line 579
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v9

    .line 583
    iget v10, v3, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 584
    .line 585
    iget v11, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 586
    .line 587
    invoke-virtual/range {v7 .. v12}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 588
    .line 589
    .line 590
    goto :goto_c

    .line 591
    :goto_f
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 592
    .line 593
    if-eqz v0, :cond_10

    .line 594
    .line 595
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    .line 596
    .line 597
    .line 598
    :cond_10
    const/4 v0, 0x0

    .line 599
    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 600
    .line 601
    return-void

    .line 602
    :goto_10
    iget-object v1, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    .line 603
    .line 604
    if-eqz v1, :cond_12

    .line 605
    .line 606
    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 607
    .line 608
    if-eqz v2, :cond_12

    .line 609
    .line 610
    array-length v1, v1

    .line 611
    new-array v12, v1, [B

    .line 612
    .line 613
    move v10, v6

    .line 614
    :goto_11
    iget-object v1, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    .line 615
    .line 616
    array-length v2, v1

    .line 617
    if-ge v10, v2, :cond_11

    .line 618
    .line 619
    aget-byte v1, v1, v10

    .line 620
    .line 621
    aput-byte v1, v12, v10

    .line 622
    .line 623
    add-int/lit8 v10, v10, 0x1

    .line 624
    .line 625
    goto :goto_11

    .line 626
    :cond_11
    iget-object v7, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 627
    .line 628
    iget-object v8, v3, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    .line 629
    .line 630
    iget-object v1, v3, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    .line 631
    .line 632
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v9

    .line 636
    iget v10, v3, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 637
    .line 638
    iget v11, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 639
    .line 640
    invoke-virtual/range {v7 .. v12}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 641
    .line 642
    .line 643
    :cond_12
    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 644
    .line 645
    .line 646
    throw v0

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 16
    .line 17
    sget-object v3, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string/jumbo v4, "statusbar"

    .line 24
    .line 25
    .line 26
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 34
    .line 35
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/log/BiometricContextProvider;Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 39
    .line 40
    const-string/jumbo v0, "trust"

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    .line 54
    .line 55
    const-string/jumbo v1, "biometric"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/android/server/biometrics/BiometricStrengthController;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricStrengthController;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    .line 67
    .line 68
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricStrengthController;->mDeviceConfigListener:Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    const-string/jumbo v2, "biometrics"

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lcom/android/server/biometrics/BiometricService$4;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$4;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    .line 89
    .line 90
    sget-object p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 93
    .line 94
    if-nez v0, :cond_0

    .line 95
    .line 96
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 105
    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 107
    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    .line 111
    .line 112
    .line 113
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS:Z

    .line 114
    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)F

    .line 120
    .line 121
    .line 122
    :cond_1
    return-void
.end method
