.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutConsumer;


# instance fields
.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

.field public mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;

.field public final mBiometricPromptIgnoreList:[I

.field public final mBiometricPromptIgnoreListVendor:[I

.field public final mBundle:Landroid/os/Bundle;

.field public final mCanIgnoreLockout:Z

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public final mIsStrongBiometric:Z

.field public final mKeyguardIgnoreList:[I

.field public final mKeyguardIgnoreListVendor:[I

.field public final mPrivilegedAttr:I

.field public final mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/face/FaceAuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutTracker;ZLandroid/hardware/SensorPrivacyManager;ILcom/android/server/biometrics/sensors/AuthenticationStateListeners;)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move/from16 v14, p15

    move-object/from16 v16, p17

    move/from16 v17, p18

    move/from16 v18, p20

    const/4 v0, 0x0

    move-object v15, v0

    .line 1
    invoke-direct/range {v1 .. v18}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/biometrics/AuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZI)V

    .line 2
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;

    move-wide/from16 v2, p4

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move/from16 v0, p15

    .line 4
    iput-boolean v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mIsStrongBiometric:Z

    move-object/from16 v0, p16

    .line 5
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    move-object/from16 v0, p19

    .line 6
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 7
    move-object/from16 v0, p14

    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 8
    iget-object v0, v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 9
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-object/from16 v0, p21

    .line 10
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10700fc

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    const v2, 0x10700ff

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    const v2, 0x10700fe

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    const v2, 0x1070101

    .line 15
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    .line 16
    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mBundle:Landroid/os/Bundle;

    .line 17
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 18
    sput-object v2, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mBundle:Landroid/os/Bundle;

    .line 19
    const-string v3, "FaceAuthenticationClient"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 20
    const-string/jumbo v5, "sem_privileged_attr"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mPrivilegedAttr = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bundle = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :cond_0
    iput v4, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    .line 23
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 24
    iget v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 25
    const-string/jumbo v5, "biometric"

    .line 26
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 27
    invoke-static {v5}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v5

    .line 28
    :try_start_0
    invoke-interface {v5, v0}, Landroid/hardware/biometrics/IBiometricService;->semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getBiometricPrompt: failed to get prompt info"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 31
    iget v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    or-int/2addr v0, v4

    iput v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    .line 32
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->semGetDisplayId()I

    .line 33
    :cond_2
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 34
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 35
    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mPrivilegedAttr:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    .line 36
    :cond_3
    iput-boolean v4, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCanIgnoreLockout:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public final canIgnoreLockout()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCanIgnoreLockout:Z

    .line 2
    .line 3
    return p0
.end method

.method public final dismissNotification()V
    .locals 3

    .line 1
    const-string v0, "FaceAuthenticationClient"

    .line 2
    .line 3
    const-string/jumbo v1, "dismissNotification"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v2, v0}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricNotification;->cancelNotification()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final handleLifecycleAfterAuth(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 2
    .line 3
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 4
    .line 5
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onAcquired(II)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->shouldSendAcquiredMessage$1(II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 8
    .line 9
    new-instance v2, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;

    .line 10
    .line 11
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {v2, v3, v4, p1}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v1, p1, p2}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/16 v2, 0x16

    .line 36
    .line 37
    if-ne p1, v2, :cond_0

    .line 38
    .line 39
    add-int/lit16 v2, p2, 0x3e8

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v2, p1

    .line 43
    :goto_0
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 44
    .line 45
    new-instance v5, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-direct {v5, v3, v6, v1, v2}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v4, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    iget p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 69
    .line 70
    invoke-interface {p1, p2}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    :cond_2
    iget p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 77
    .line 78
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-virtual {p1, p2, p0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAcquireForUser(IZ)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method public final onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 8
    .line 9
    new-instance p3, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 10
    .line 11
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    iget-wide v5, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    .line 18
    .line 19
    sub-long/2addr v3, v5

    .line 20
    iget v8, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    move-object v0, p3

    .line 25
    move v5, p2

    .line 26
    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/adaptiveauth/Flags;->reportBiometricAuthAttempts()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 41
    .line 42
    new-instance p2, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;

    .line 43
    .line 44
    sget-object p3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mIsStrongBiometric:Z

    .line 51
    .line 52
    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 53
    .line 54
    invoke-direct {p2, p3, v0, v1, v2}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;IZI)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 66
    .line 67
    new-instance p2, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;

    .line 68
    .line 69
    sget-object p3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 76
    .line 77
    invoke-direct {p2, p3, v0, v1}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationFailedInfo;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->dismissNotification()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final onError(II)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->dismissNotification()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 5
    .line 6
    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    .line 15
    .line 16
    sub-long/2addr v4, v6

    .line 17
    iget v9, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v1, v10

    .line 21
    move v7, p1

    .line 22
    move v8, p2

    .line 23
    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 30
    .line 31
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    .line 32
    .line 33
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v4, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v1, v2, v3, v4, p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 59
    .line 60
    new-instance p2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-direct {p2, v2, p0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final onLockoutPermanent()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->lockedOutFor(IIIJ)V

    .line 12
    .line 13
    .line 14
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 15
    .line 16
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    iget v11, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 23
    .line 24
    const/16 v9, 0x9

    .line 25
    .line 26
    const/4 v10, 0x0

    .line 27
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementPermanentLockoutForUser(I)V

    .line 39
    .line 40
    .line 41
    const/16 v0, 0x9

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onLockoutTimed(J)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 3
    .line 4
    iget v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 5
    .line 6
    iget v3, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    .line 7
    .line 8
    iget v4, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 9
    .line 10
    iget-wide v7, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 11
    .line 12
    move-wide/from16 v5, p1

    .line 13
    .line 14
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->lockOutTimed(IIIJJ)V

    .line 15
    .line 16
    .line 17
    iget-object v9, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 18
    .line 19
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    iget v14, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 26
    .line 27
    const/4 v12, 0x7

    .line 28
    const/4 v13, 0x0

    .line 29
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V

    .line 30
    .line 31
    .line 32
    iget v1, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 33
    .line 34
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementTimedLockoutForUser(I)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x7

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final semDoAuthenticate()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startOperation(I)V

    .line 9
    .line 10
    .line 11
    const-string v1, "FaceAuthenticationClient"

    .line 12
    .line 13
    const-string v3, "authenticate START"

    .line 14
    .line 15
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    iget-boolean v5, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 27
    .line 28
    const/4 v6, 0x4

    .line 29
    const-string v9, "SemFace"

    .line 30
    .line 31
    const-string v10, "authenticate BILG "

    .line 32
    .line 33
    if-eqz v5, :cond_4

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-wide v13, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v11, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v7

    .line 61
    iput-wide v7, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mAuthStartTime:J

    .line 62
    .line 63
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    sget-boolean v7, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 74
    .line 75
    if-nez v7, :cond_3

    .line 76
    .line 77
    iget-object v7, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 78
    .line 79
    iget-boolean v7, v7, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    .line 80
    .line 81
    if-eqz v7, :cond_0

    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_0
    iget-boolean v7, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 86
    .line 87
    const-string v8, "HidlToAidlSessionAdapter"

    .line 88
    .line 89
    if-eqz v7, :cond_2

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 96
    .line 97
    iget-object v7, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {v7}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getSecurityMode(Landroid/content/Context;)I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getFidoRequestDataAsArrayList()Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object v15

    .line 107
    iget-object v9, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 108
    .line 109
    if-nez v9, :cond_1

    .line 110
    .line 111
    const/16 v17, 0x0

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/16 v17, 0x1

    .line 115
    .line 116
    :goto_0
    iget-object v9, v2, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 117
    .line 118
    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    move-object v11, v9

    .line 123
    check-cast v11, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    .line 124
    .line 125
    const/16 v16, 0x1

    .line 126
    .line 127
    move v12, v7

    .line 128
    invoke-interface/range {v11 .. v17}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;->sehAuthenticateForIssuance(IJLjava/util/ArrayList;ZZ)I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string/jumbo v10, "sehAuthenticateForIssuance RESULT: "

    .line 135
    .line 136
    .line 137
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;

    .line 151
    .line 152
    invoke-direct {v7, v2}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V

    .line 153
    .line 154
    .line 155
    iput-object v7, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;

    .line 163
    .line 164
    iget-object v7, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    invoke-static {v7}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getSecurityMode(Landroid/content/Context;)I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getFidoRequestDataAsArrayList()Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    iget-object v10, v2, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;->mSession:Ljava/util/function/Supplier;

    .line 175
    .line 176
    invoke-interface {v10}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    check-cast v10, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 181
    .line 182
    invoke-interface {v10, v7, v13, v14, v9}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehAuthenticate(IJLjava/util/ArrayList;)I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    new-instance v9, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string/jumbo v10, "sehAuthenticate RESULT: "

    .line 189
    .line 190
    .line 191
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;

    .line 205
    .line 206
    invoke-direct {v7, v2}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter$Cancellation;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSessionAdapter;)V

    .line 207
    .line 208
    .line 209
    iput-object v7, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-interface {v2, v13, v14}, Landroid/hardware/biometrics/face/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iput-object v2, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 221
    .line 222
    :goto_2
    iget-object v2, v5, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 223
    .line 224
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 225
    .line 226
    goto/16 :goto_8

    .line 227
    .line 228
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_f

    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    iget-wide v7, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    iget-object v5, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 251
    .line 252
    const/4 v10, 0x0

    .line 253
    if-nez v5, :cond_5

    .line 254
    .line 255
    const-string v2, "authenticate(): no ISession!"

    .line 256
    .line 257
    invoke-static {v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    goto/16 :goto_6

    .line 261
    .line 262
    :cond_5
    iget-object v9, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 263
    .line 264
    if-nez v9, :cond_6

    .line 265
    .line 266
    invoke-interface {v5, v7, v8}, Landroid/hardware/biometrics/face/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    iput-object v5, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 271
    .line 272
    goto/16 :goto_5

    .line 273
    .line 274
    :cond_6
    iget-boolean v11, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 275
    .line 276
    if-eqz v11, :cond_c

    .line 277
    .line 278
    invoke-interface {v5}, Landroid/hardware/biometrics/face/ISession;->getInterfaceVersion()I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-lt v5, v6, :cond_9

    .line 283
    .line 284
    iget-object v5, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 285
    .line 286
    iget-object v9, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 287
    .line 288
    invoke-static {v9}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getSecurityMode(Landroid/content/Context;)I

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    sget-object v11, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    .line 293
    .line 294
    sput-object v10, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    .line 295
    .line 296
    if-nez v11, :cond_7

    .line 297
    .line 298
    const/4 v10, 0x0

    .line 299
    new-array v11, v10, [B

    .line 300
    .line 301
    :cond_7
    iget-object v10, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 302
    .line 303
    check-cast v5, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 304
    .line 305
    iget-object v13, v5, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 306
    .line 307
    invoke-static {v13}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    :try_start_0
    sget-object v15, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v13, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 327
    .line 328
    .line 329
    const/4 v7, 0x1

    .line 330
    invoke-virtual {v13, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    .line 332
    .line 333
    const/4 v7, 0x0

    .line 334
    invoke-virtual {v13, v10, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 335
    .line 336
    .line 337
    iget-object v5, v5, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 338
    .line 339
    const/16 v8, 0x10

    .line 340
    .line 341
    invoke-interface {v5, v8, v13, v14, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-eqz v5, :cond_8

    .line 346
    .line 347
    invoke-virtual {v14}, Landroid/os/Parcel;->readException()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    invoke-static {v5}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 355
    .line 356
    .line 357
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 362
    .line 363
    .line 364
    iput-object v5, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 365
    .line 366
    goto/16 :goto_5

    .line 367
    .line 368
    :catchall_0
    move-exception v0

    .line 369
    goto :goto_3

    .line 370
    :cond_8
    :try_start_1
    new-instance v0, Landroid/os/RemoteException;

    .line 371
    .line 372
    const-string v1, "Method authenticateForIssuanceEx is unimplemented."

    .line 373
    .line 374
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :goto_3
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 382
    .line 383
    .line 384
    throw v0

    .line 385
    :cond_9
    iget-object v5, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 386
    .line 387
    iget-object v9, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 388
    .line 389
    invoke-static {v9}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getSecurityMode(Landroid/content/Context;)I

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    sget-object v11, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    .line 394
    .line 395
    sput-object v10, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    .line 396
    .line 397
    if-nez v11, :cond_a

    .line 398
    .line 399
    const/4 v10, 0x0

    .line 400
    new-array v11, v10, [B

    .line 401
    .line 402
    :cond_a
    iget-object v10, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 403
    .line 404
    check-cast v5, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 405
    .line 406
    iget-object v13, v5, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 407
    .line 408
    invoke-static {v13}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 409
    .line 410
    .line 411
    move-result-object v13

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 413
    .line 414
    .line 415
    move-result-object v14

    .line 416
    :try_start_2
    sget-object v15, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v13, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 428
    .line 429
    .line 430
    const/4 v7, 0x1

    .line 431
    invoke-virtual {v13, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 432
    .line 433
    .line 434
    const/4 v7, 0x0

    .line 435
    invoke-virtual {v13, v10, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 436
    .line 437
    .line 438
    iget-object v5, v5, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 439
    .line 440
    const/16 v8, 0xd

    .line 441
    .line 442
    invoke-interface {v5, v8, v13, v14, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    if-eqz v5, :cond_b

    .line 447
    .line 448
    invoke-virtual {v14}, Landroid/os/Parcel;->readException()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    invoke-static {v5}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 456
    .line 457
    .line 458
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 459
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 463
    .line 464
    .line 465
    iput-object v5, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 466
    .line 467
    goto :goto_5

    .line 468
    :catchall_1
    move-exception v0

    .line 469
    goto :goto_4

    .line 470
    :cond_b
    :try_start_3
    new-instance v0, Landroid/os/RemoteException;

    .line 471
    .line 472
    const-string v1, "Method authenticateForIssuance is unimplemented."

    .line 473
    .line 474
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 478
    :goto_4
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 482
    .line 483
    .line 484
    throw v0

    .line 485
    :cond_c
    iget-object v5, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 486
    .line 487
    invoke-static {v5}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getSecurityMode(Landroid/content/Context;)I

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    sget-object v11, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    .line 492
    .line 493
    sput-object v10, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    .line 494
    .line 495
    if-nez v11, :cond_d

    .line 496
    .line 497
    const/4 v10, 0x0

    .line 498
    new-array v11, v10, [B

    .line 499
    .line 500
    :cond_d
    check-cast v9, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 501
    .line 502
    iget-object v10, v9, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 503
    .line 504
    invoke-static {v10}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 505
    .line 506
    .line 507
    move-result-object v10

    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 509
    .line 510
    .line 511
    move-result-object v13

    .line 512
    :try_start_4
    sget-object v14, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    .line 513
    .line 514
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v10, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 524
    .line 525
    .line 526
    iget-object v5, v9, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 527
    .line 528
    const/4 v7, 0x1

    .line 529
    const/4 v8, 0x0

    .line 530
    invoke-interface {v5, v7, v10, v13, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    if-eqz v5, :cond_e

    .line 535
    .line 536
    invoke-virtual {v13}, Landroid/os/Parcel;->readException()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    invoke-static {v5}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 544
    .line 545
    .line 546
    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 547
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 551
    .line 552
    .line 553
    iput-object v5, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 554
    .line 555
    :goto_5
    iget-object v10, v2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 556
    .line 557
    :goto_6
    iput-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 558
    .line 559
    goto :goto_8

    .line 560
    :catchall_2
    move-exception v0

    .line 561
    goto :goto_7

    .line 562
    :cond_e
    :try_start_5
    new-instance v0, Landroid/os/RemoteException;

    .line 563
    .line 564
    const-string v1, "Method authenticateExtension is unimplemented."

    .line 565
    .line 566
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 570
    :goto_7
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 574
    .line 575
    .line 576
    throw v0

    .line 577
    :cond_f
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 578
    .line 579
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v5

    .line 583
    check-cast v5, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 584
    .line 585
    iget v7, v5, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 586
    .line 587
    if-lt v7, v2, :cond_10

    .line 588
    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 594
    .line 595
    new-instance v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda0;

    .line 596
    .line 597
    invoke-direct {v8, v0, v5}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    .line 598
    .line 599
    .line 600
    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda1;

    .line 601
    .line 602
    invoke-direct {v9, v5}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V

    .line 603
    .line 604
    .line 605
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

    .line 606
    .line 607
    check-cast v7, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 608
    .line 609
    invoke-virtual {v7, v2, v8, v9, v5}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V

    .line 610
    .line 611
    .line 612
    goto :goto_8

    .line 613
    :cond_10
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    iget-wide v7, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    .line 618
    .line 619
    invoke-interface {v2, v7, v8}, Landroid/hardware/biometrics/face/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 624
    .line 625
    :goto_8
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBundle:Landroid/os/Bundle;

    .line 626
    .line 627
    if-nez v2, :cond_11

    .line 628
    .line 629
    const/4 v8, 0x0

    .line 630
    goto :goto_9

    .line 631
    :cond_11
    const-string/jumbo v5, "sem_privileged_attr"

    .line 632
    .line 633
    .line 634
    const/4 v7, 0x0

    .line 635
    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 636
    .line 637
    .line 638
    move-result v8

    .line 639
    :goto_9
    and-int/lit8 v2, v8, 0x4

    .line 640
    .line 641
    if-eqz v2, :cond_15

    .line 642
    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    if-nez v2, :cond_15

    .line 648
    .line 649
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 650
    .line 651
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 652
    .line 653
    invoke-static {v2, v5}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    if-eqz v2, :cond_12

    .line 658
    .line 659
    goto :goto_a

    .line 660
    :cond_12
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 661
    .line 662
    const/16 v5, 0x8

    .line 663
    .line 664
    if-nez v2, :cond_13

    .line 665
    .line 666
    new-instance v2, Lcom/android/server/biometrics/SemBiometricNotification;

    .line 667
    .line 668
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 669
    .line 670
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 671
    .line 672
    invoke-direct {v2, v6, v7, v5}, Lcom/android/server/biometrics/SemBiometricNotification;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 673
    .line 674
    .line 675
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 676
    .line 677
    :cond_13
    new-instance v2, Landroid/content/Intent;

    .line 678
    .line 679
    const-string/jumbo v6, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    .line 680
    .line 681
    .line 682
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 686
    .line 687
    const-string/jumbo v8, "package"

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    .line 692
    .line 693
    const-string v7, "authenticator"

    .line 694
    .line 695
    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    .line 697
    .line 698
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;

    .line 699
    .line 700
    if-nez v5, :cond_14

    .line 701
    .line 702
    new-instance v5, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;

    .line 703
    .line 704
    invoke-direct {v5, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    .line 705
    .line 706
    .line 707
    iput-object v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;

    .line 708
    .line 709
    new-instance v9, Landroid/content/IntentFilter;

    .line 710
    .line 711
    invoke-direct {v9, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 715
    .line 716
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;

    .line 717
    .line 718
    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 719
    .line 720
    sget-object v5, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 721
    .line 722
    invoke-virtual {v5}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    .line 723
    .line 724
    .line 725
    move-result-object v12

    .line 726
    const/4 v13, 0x2

    .line 727
    const/4 v11, 0x0

    .line 728
    invoke-static/range {v7 .. v13}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 729
    .line 730
    .line 731
    :cond_14
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 732
    .line 733
    invoke-virtual {v5, v2}, Lcom/android/server/biometrics/SemBiometricNotification;->postNotification(Landroid/content/Intent;)V

    .line 734
    .line 735
    .line 736
    :cond_15
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 737
    .line 738
    const-string v5, "authenticate FINISH ("

    .line 739
    .line 740
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 744
    .line 745
    .line 746
    move-result-wide v5

    .line 747
    sub-long/2addr v5, v3

    .line 748
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    const-string/jumbo v3, "ms) RESULT: "

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 758
    .line 759
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .line 768
    .line 769
    return-void
.end method

.method public final shouldSendAcquiredMessage$1(II)Z
    .locals 3

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    .line 17
    .line 18
    :goto_0
    invoke-static {p2, p0}, Lcom/android/server/biometrics/Utils;->listContains(I[I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_3

    .line 23
    .line 24
    :goto_1
    move v1, v2

    .line 25
    goto :goto_3

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    .line 36
    .line 37
    :goto_2
    invoke-static {p1, p0}, Lcom/android/server/biometrics/Utils;->listContains(I[I)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_3
    return v1
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 6
    .line 7
    return-void
.end method

.method public final startHalOperation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;

    .line 4
    .line 5
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-virtual {v2, v0, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const/16 v2, 0x8

    .line 35
    .line 36
    const v3, 0x186a3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 43
    .line 44
    invoke-interface {v2, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->semDoAuthenticate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :goto_0
    const-string v3, "FaceAuthenticationClient"

    .line 55
    .line 56
    const-string v4, "Remote exception when requesting auth"

    .line 57
    .line 58
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 65
    .line 66
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

.method public final stopHalOperation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 4
    .line 5
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->dismissNotification()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 28
    .line 29
    const-string v1, "FaceAuthenticationClient"

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 39
    .line 40
    invoke-virtual {v0, v3, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v3, "Remote exception when requesting cancel"

    .line 46
    .line 47
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 55
    .line 56
    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string v0, "Cancellation signal is null"

    .line 61
    .line 62
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 66
    .line 67
    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public final vibrateError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const/16 v0, 0x71

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v0, 0x5

    .line 29
    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/ALSProbe;Z)V

    .line 13
    .line 14
    .line 15
    filled-new-array {v1, v2, p1}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
