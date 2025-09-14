.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpTspBlockStatusHandler;
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;
.implements Lcom/android/server/biometrics/sensors/LockoutConsumer;
.implements Lcom/android/server/biometrics/sensors/fingerprint/PowerPressHandler;


# instance fields
.field public final mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

.field public final mAttribute:Landroid/os/Bundle;

.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public mAuthenticationFailedReason:I

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

.field public mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

.field public mCanIgnoreLockout:Z

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public mCaptureStartTime:J

.field public mErrorEscrow:I

.field public final mGetTid:Ljava/util/function/IntFunction;

.field public mIsAuthenticated:Z

.field public final mIsKeyguard:Z

.field public mIsScreenOnWhenStartCapture:Z

.field public mIsSetEarlyWakeUp:Z

.field public final mIsSettingApp:Z

.field public final mIsStrongBiometric:Z

.field public mLastErrorCode:I

.field public mPowerPressedTimeStamp:J

.field public mPrivilegedFlags:I

.field public mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mQualityErrorCount:I

.field public mRejectCount:I

.field public final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

.field public final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public mShouldSkipResponseDueToPowerPress:Z

.field public mTotalQualityErrorCount:I

.field public mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

.field public mVendorErrorEscrow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/fingerprint/FingerprintAuthenticateOptions;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;ILcom/android/server/biometrics/sensors/LockoutTracker;Landroid/os/Bundle;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda36;J)V
    .locals 18

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    const/4 v10, 0x0

    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    move-object/from16 v2, p2

    .line 9
    .line 10
    move-object/from16 v3, p3

    .line 11
    .line 12
    move-object/from16 v4, p6

    .line 13
    .line 14
    move-wide/from16 v5, p7

    .line 15
    .line 16
    move/from16 v7, p9

    .line 17
    .line 18
    move-object/from16 v8, p10

    .line 19
    .line 20
    move/from16 v9, p11

    .line 21
    .line 22
    move-object/from16 v11, p12

    .line 23
    .line 24
    move-object/from16 v12, p13

    .line 25
    .line 26
    move/from16 v13, p14

    .line 27
    .line 28
    move-object/from16 v14, p15

    .line 29
    .line 30
    move-object/from16 v15, p20

    .line 31
    .line 32
    move/from16 v16, p17

    .line 33
    .line 34
    move/from16 v17, p19

    .line 35
    .line 36
    invoke-direct/range {v0 .. v17}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/biometrics/AuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZI)V

    .line 37
    .line 38
    .line 39
    move-wide/from16 v1, p4

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 50
    .line 51
    move-object/from16 v1, p16

    .line 52
    .line 53
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 54
    .line 55
    move/from16 v1, p14

    .line 56
    .line 57
    iput-boolean v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsStrongBiometric:Z

    .line 58
    .line 59
    move-object/from16 v1, p18

    .line 60
    .line 61
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 64
    .line 65
    new-instance v2, Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-direct {v2, v1, v3}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/ALSProbe;Z)V

    .line 71
    .line 72
    .line 73
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 74
    .line 75
    move-object/from16 v1, p13

    .line 76
    .line 77
    check-cast v1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 80
    .line 81
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 82
    .line 83
    move-object/from16 v1, p21

    .line 84
    .line 85
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    if-nez p9, :cond_0

    .line 89
    .line 90
    invoke-super/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_0

    .line 95
    .line 96
    move v2, v1

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    move v2, v3

    .line 99
    :goto_0
    iput-boolean v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 100
    .line 101
    if-nez p9, :cond_1

    .line 102
    .line 103
    invoke-virtual/range {p10 .. p10}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v4, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 108
    .line 109
    move-object/from16 v5, p1

    .line 110
    .line 111
    invoke-virtual {v5, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_1

    .line 116
    .line 117
    const-string/jumbo v4, "com.android.settings"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_1

    .line 125
    .line 126
    move v3, v1

    .line 127
    :cond_1
    iput-boolean v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSettingApp:Z

    .line 128
    .line 129
    move-object/from16 v1, p22

    .line 130
    .line 131
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mGetTid:Ljava/util/function/IntFunction;

    .line 132
    .line 133
    move-wide/from16 v1, p23

    .line 134
    .line 135
    iput-wide v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPowerPressedTimeStamp:J

    .line 136
    .line 137
    return-void
.end method


# virtual methods
.method public canEnableEarlyWakeUp()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->isInteractive()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_EARLY_WAKE_UP:Z

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    and-int/2addr v0, v2

    .line 41
    if-eq v0, v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string/jumbo v0, "double_tab_to_wake_up"

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_2

    .line 58
    .line 59
    :goto_0
    move v1, v2

    .line 60
    :cond_2
    return v1
.end method

.method public final canIgnoreLockout()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCanIgnoreLockout:Z

    .line 2
    .line 3
    return p0
.end method

.method public createBiometricNotification()Lcom/android/server/biometrics/SemBiometricNotification;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/biometrics/SemBiometricNotification;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/biometrics/SemBiometricNotification;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public createUdfpsSysUiImpl(Z)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 10
    .line 11
    iget-boolean v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move v5, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;-><init>(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;IZZ)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public final destroy()V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "destroy: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "FingerprintAuthenticationClient.Ext"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->destroy()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->destroy()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricNotification;->cancelNotification()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v2, v0}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 54
    .line 55
    long-to-int v5, v0

    .line 56
    iget v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mLastErrorCode:I

    .line 57
    .line 58
    iget v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mTotalQualityErrorCount:I

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;

    .line 65
    .line 66
    const-wide/16 v6, 0x0

    .line 67
    .line 68
    const-string v8, "U"

    .line 69
    .line 70
    move-object v3, v0

    .line 71
    invoke-direct/range {v3 .. v10}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public enableEarlyWakeUp()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/os/PowerManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/PowerManager;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->setEarlyWakeUp(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;
    .locals 1

    .line 1
    const-string/jumbo p0, "biometric"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v0, "getBiometricPrompt: failed to get prompt info"

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "FingerprintAuthenticationClient.Ext"

    .line 38
    .line 39
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    :goto_0
    return-object p0
.end method

.method public getBiometricsHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getBoostingManager()Lcom/android/server/biometrics/SemBiometricBoostingManager;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final handleLifecycleAfterAuth(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final hasPrivilegedFlag(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public isInteractive()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/os/PowerManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/PowerManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isKeyguard()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 2
    .line 3
    return p0
.end method

.method public isTalkBackEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onAcquired(II)V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v11, p2

    .line 6
    .line 7
    const-string/jumbo v0, "onAcquired: "

    .line 8
    .line 9
    .line 10
    const-string v3, ", "

    .line 11
    .line 12
    const-string v4, "FingerprintAuthenticationClient.Ext"

    .line 13
    .line 14
    invoke-static {v2, v11, v0, v3, v4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-wide v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPowerPressedTimeStamp:J

    .line 18
    .line 19
    const-wide/16 v7, 0x0

    .line 20
    .line 21
    cmp-long v0, v5, v7

    .line 22
    .line 23
    const/16 v5, 0x2712

    .line 24
    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x1

    .line 27
    const/4 v15, 0x6

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    if-ne v2, v15, :cond_1

    .line 31
    .line 32
    if-ne v11, v5, :cond_1

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getElapsedRealtime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    iget-wide v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPowerPressedTimeStamp:J

    .line 39
    .line 40
    sub-long v8, v6, v8

    .line 41
    .line 42
    const-string/jumbo v0, "isSkippingIntervalAsPowerKeyPress: "

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v6, v7, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-wide v6, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPowerPressedTimeStamp:J

    .line 50
    .line 51
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 68
    .line 69
    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAwake()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    .line 77
    const-wide/16 v6, 0x320

    .line 78
    .line 79
    cmp-long v0, v8, v6

    .line 80
    .line 81
    if-gtz v0, :cond_0

    .line 82
    .line 83
    move v0, v14

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    move v0, v13

    .line 86
    :goto_0
    iput-boolean v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldSkipResponseDueToPowerPress:Z

    .line 87
    .line 88
    :cond_1
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldSkipResponseDueToPowerPress:Z

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 94
    .line 95
    const/16 v3, 0x2717

    .line 96
    .line 97
    const/16 v6, 0x2714

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    invoke-virtual {v0, v2, v11}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAcquired(II)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isUltrasonicType()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    if-ne v2, v15, :cond_5

    .line 113
    .line 114
    if-eq v11, v5, :cond_3

    .line 115
    .line 116
    if-eq v11, v6, :cond_3

    .line 117
    .line 118
    if-ne v11, v3, :cond_5

    .line 119
    .line 120
    :cond_3
    if-ne v11, v5, :cond_4

    .line 121
    .line 122
    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 123
    .line 124
    iget v7, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    invoke-interface {v0, v7}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerDown(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    goto :goto_1

    .line 136
    :cond_4
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 137
    .line 138
    iget v7, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-interface {v0, v7}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerUp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :goto_1
    const-string v7, "Failed to invoke sendAcquired"

    .line 149
    .line 150
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    :cond_5
    :goto_2
    if-ne v2, v15, :cond_19

    .line 154
    .line 155
    const v10, 0xc34f

    .line 156
    .line 157
    .line 158
    const v9, 0x9c40

    .line 159
    .line 160
    .line 161
    const/16 v4, 0x2711

    .line 162
    .line 163
    const/16 v7, 0x3ee

    .line 164
    .line 165
    const/16 v8, 0x271b

    .line 166
    .line 167
    if-eq v11, v8, :cond_9

    .line 168
    .line 169
    if-eq v11, v7, :cond_9

    .line 170
    .line 171
    if-lt v11, v9, :cond_6

    .line 172
    .line 173
    if-gt v11, v10, :cond_6

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_6
    if-eq v11, v4, :cond_8

    .line 177
    .line 178
    if-eq v11, v5, :cond_8

    .line 179
    .line 180
    const/16 v9, 0x2713

    .line 181
    .line 182
    if-eq v11, v9, :cond_8

    .line 183
    .line 184
    const/16 v9, 0x2715

    .line 185
    .line 186
    if-eq v11, v9, :cond_8

    .line 187
    .line 188
    const/16 v9, 0x2716

    .line 189
    .line 190
    if-eq v11, v9, :cond_8

    .line 191
    .line 192
    if-eq v11, v6, :cond_8

    .line 193
    .line 194
    if-eq v11, v3, :cond_8

    .line 195
    .line 196
    const/16 v3, 0x271c

    .line 197
    .line 198
    if-ne v11, v3, :cond_7

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_7
    move/from16 v16, v14

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_8
    :goto_3
    const/4 v3, 0x2

    .line 205
    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    move/from16 v16, v3

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_9
    :goto_4
    move/from16 v16, v13

    .line 213
    .line 214
    :goto_5
    if-eq v11, v7, :cond_15

    .line 215
    .line 216
    if-eq v11, v8, :cond_14

    .line 217
    .line 218
    if-eq v11, v4, :cond_13

    .line 219
    .line 220
    if-eq v11, v5, :cond_b

    .line 221
    .line 222
    :cond_a
    :goto_6
    move v14, v10

    .line 223
    const v0, 0x9c40

    .line 224
    .line 225
    .line 226
    goto/16 :goto_9

    .line 227
    .line 228
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 229
    .line 230
    .line 231
    move-result-wide v3

    .line 232
    iput-wide v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCaptureStartTime:J

    .line 233
    .line 234
    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSetEarlyWakeUp:Z

    .line 235
    .line 236
    if-nez v3, :cond_c

    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->canEnableEarlyWakeUp()Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_c

    .line 243
    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->enableEarlyWakeUp()V

    .line 245
    .line 246
    .line 247
    iput-boolean v14, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSetEarlyWakeUp:Z

    .line 248
    .line 249
    :cond_c
    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 250
    .line 251
    if-nez v3, :cond_d

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBiometricsHandler()Landroid/os/Handler;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    .line 259
    .line 260
    invoke-direct {v4, v1, v14}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    .line 265
    .line 266
    :goto_7
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 267
    .line 268
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isOpticalType()Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-nez v3, :cond_e

    .line 273
    .line 274
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBoostingManager()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    iget v5, v4, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mFingerprintHalTid:I

    .line 281
    .line 282
    const/16 v20, 0x2

    .line 283
    .line 284
    const-string v21, "FINGERPRINT_SERVICE"

    .line 285
    .line 286
    const/16 v19, 0xdad

    .line 287
    .line 288
    const/16 v22, 0x7d0

    .line 289
    .line 290
    move-object/from16 v17, v4

    .line 291
    .line 292
    move-object/from16 v18, v3

    .line 293
    .line 294
    move/from16 v23, v5

    .line 295
    .line 296
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireDvfs(Landroid/content/Context;IILjava/lang/String;II)V

    .line 297
    .line 298
    .line 299
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->isTalkBackEnabled()Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_f

    .line 304
    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->vibrateSuccess()V

    .line 306
    .line 307
    .line 308
    :cond_f
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 309
    .line 310
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-eqz v3, :cond_12

    .line 315
    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    iget-wide v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 321
    .line 322
    long-to-int v4, v4

    .line 323
    iget-boolean v5, v3, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 324
    .line 325
    if-nez v5, :cond_10

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_10
    sget-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 329
    .line 330
    if-nez v5, :cond_11

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_11
    invoke-virtual {v3}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    new-instance v6, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;

    .line 338
    .line 339
    invoke-direct {v6, v3, v4}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    .line 344
    .line 345
    :cond_12
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->isInteractive()Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    iput-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    .line 350
    .line 351
    goto/16 :goto_6

    .line 352
    .line 353
    :cond_13
    iput-boolean v13, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSetEarlyWakeUp:Z

    .line 354
    .line 355
    goto/16 :goto_6

    .line 356
    .line 357
    :cond_14
    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSetEarlyWakeUp:Z

    .line 358
    .line 359
    if-nez v3, :cond_a

    .line 360
    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->canEnableEarlyWakeUp()Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-eqz v3, :cond_a

    .line 366
    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->enableEarlyWakeUp()V

    .line 368
    .line 369
    .line 370
    iput-boolean v14, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSetEarlyWakeUp:Z

    .line 371
    .line 372
    goto/16 :goto_6

    .line 373
    .line 374
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->resumeFaceAuth()V

    .line 375
    .line 376
    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 382
    .line 383
    invoke-virtual {v3, v15, v11, v14, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogHelp(IIILjava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    iget-object v9, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 391
    .line 392
    iget-wide v5, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 393
    .line 394
    long-to-int v5, v5

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 396
    .line 397
    .line 398
    move-result-wide v6

    .line 399
    iget-wide v12, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCaptureStartTime:J

    .line 400
    .line 401
    sub-long/2addr v6, v12

    .line 402
    iget-boolean v12, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    .line 403
    .line 404
    iget-boolean v3, v4, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 405
    .line 406
    if-nez v3, :cond_16

    .line 407
    .line 408
    goto/16 :goto_6

    .line 409
    .line 410
    :cond_16
    invoke-virtual {v4}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    new-instance v8, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;

    .line 415
    .line 416
    move-object v3, v8

    .line 417
    move-object v15, v8

    .line 418
    move/from16 v8, p2

    .line 419
    .line 420
    const v0, 0x9c40

    .line 421
    .line 422
    .line 423
    move v14, v10

    .line 424
    move v10, v12

    .line 425
    invoke-direct/range {v3 .. v10}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;Z)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v13, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    .line 430
    .line 431
    :goto_9
    if-lt v11, v0, :cond_1a

    .line 432
    .line 433
    if-gt v11, v14, :cond_1a

    .line 434
    .line 435
    iput v11, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationFailedReason:I

    .line 436
    .line 437
    iget v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 438
    .line 439
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 444
    .line 445
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 446
    .line 447
    .line 448
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 449
    .line 450
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    check-cast v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 455
    .line 456
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    .line 457
    .line 458
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    if-nez v4, :cond_17

    .line 463
    .line 464
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 465
    .line 466
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 471
    .line 472
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    .line 473
    .line 474
    const/4 v3, 0x1

    .line 475
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-virtual {v0, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    goto :goto_a

    .line 483
    :cond_17
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 484
    .line 485
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    check-cast v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 490
    .line 491
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    .line 492
    .line 493
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    check-cast v4, Ljava/lang/Integer;

    .line 498
    .line 499
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 504
    .line 505
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 510
    .line 511
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    .line 512
    .line 513
    const/4 v3, 0x1

    .line 514
    add-int/2addr v4, v3

    .line 515
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {v0, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    const-string v4, "FPNR"

    .line 531
    .line 532
    const/4 v5, 0x3

    .line 533
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    const/16 v3, 0x8

    .line 537
    .line 538
    new-array v0, v3, [I

    .line 539
    .line 540
    fill-array-data v0, :array_0

    .line 541
    .line 542
    .line 543
    const/4 v4, 0x0

    .line 544
    :goto_b
    if-ge v4, v3, :cond_1a

    .line 545
    .line 546
    aget v3, v0, v4

    .line 547
    .line 548
    if-ne v11, v3, :cond_18

    .line 549
    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 555
    .line 556
    const-string v4, "FPAF"

    .line 557
    .line 558
    const/4 v5, 0x3

    .line 559
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    goto :goto_c

    .line 563
    :cond_18
    const/4 v3, 0x1

    .line 564
    add-int/2addr v4, v3

    .line 565
    const/16 v3, 0x8

    .line 566
    .line 567
    goto :goto_b

    .line 568
    :cond_19
    const/16 v16, 0x1

    .line 569
    .line 570
    :cond_1a
    :goto_c
    invoke-static/range {p1 .. p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsQualityFailedEvent(II)Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_1f

    .line 575
    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->resumeFaceAuth()V

    .line 577
    .line 578
    .line 579
    const/16 v3, 0x8

    .line 580
    .line 581
    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-nez v0, :cond_1b

    .line 586
    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->vibrateError()V

    .line 588
    .line 589
    .line 590
    :cond_1b
    iget v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mQualityErrorCount:I

    .line 591
    .line 592
    const/4 v3, 0x1

    .line 593
    add-int/2addr v0, v3

    .line 594
    iput v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mQualityErrorCount:I

    .line 595
    .line 596
    iget v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mTotalQualityErrorCount:I

    .line 597
    .line 598
    add-int/2addr v0, v3

    .line 599
    iput v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mTotalQualityErrorCount:I

    .line 600
    .line 601
    iget v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 602
    .line 603
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 608
    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 614
    .line 615
    .line 616
    if-eqz v4, :cond_1c

    .line 617
    .line 618
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 619
    .line 620
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 625
    .line 626
    iget v3, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQualityCrypto:I

    .line 627
    .line 628
    const/4 v4, 0x1

    .line 629
    add-int/2addr v3, v4

    .line 630
    iput v3, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQualityCrypto:I

    .line 631
    .line 632
    goto :goto_d

    .line 633
    :cond_1c
    const/4 v4, 0x1

    .line 634
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 635
    .line 636
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    check-cast v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 641
    .line 642
    iget v3, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQuality:I

    .line 643
    .line 644
    add-int/2addr v3, v4

    .line 645
    iput v3, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQuality:I

    .line 646
    .line 647
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 652
    .line 653
    const/4 v4, 0x3

    .line 654
    invoke-virtual {v0, v2, v11, v4, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogHelp(IIILjava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 662
    .line 663
    iget-wide v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 664
    .line 665
    long-to-int v4, v4

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 667
    .line 668
    .line 669
    move-result-wide v5

    .line 670
    iget-wide v7, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCaptureStartTime:J

    .line 671
    .line 672
    sub-long v23, v5, v7

    .line 673
    .line 674
    const/4 v5, 0x6

    .line 675
    if-ne v2, v5, :cond_1d

    .line 676
    .line 677
    move/from16 v25, v11

    .line 678
    .line 679
    goto :goto_e

    .line 680
    :cond_1d
    move/from16 v25, v2

    .line 681
    .line 682
    :goto_e
    iget-boolean v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    .line 683
    .line 684
    iget-boolean v6, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 685
    .line 686
    if-nez v6, :cond_1e

    .line 687
    .line 688
    goto :goto_f

    .line 689
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 690
    .line 691
    .line 692
    move-result-object v6

    .line 693
    new-instance v7, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;

    .line 694
    .line 695
    move-object/from16 v20, v7

    .line 696
    .line 697
    move-object/from16 v21, v0

    .line 698
    .line 699
    move/from16 v22, v4

    .line 700
    .line 701
    move-object/from16 v26, v3

    .line 702
    .line 703
    move/from16 v27, v5

    .line 704
    .line 705
    invoke-direct/range {v20 .. v27}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;Z)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 709
    .line 710
    .line 711
    :cond_1f
    :goto_f
    if-eqz v16, :cond_24

    .line 712
    .line 713
    const/16 v0, 0x3ed

    .line 714
    .line 715
    if-ne v11, v0, :cond_20

    .line 716
    .line 717
    const/4 v2, 0x0

    .line 718
    const/4 v11, 0x0

    .line 719
    :cond_20
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 720
    .line 721
    new-instance v3, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;

    .line 722
    .line 723
    sget-object v4, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 724
    .line 725
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 726
    .line 727
    .line 728
    move-result v5

    .line 729
    invoke-direct {v3, v4, v5, v2}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v3}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V

    .line 737
    .line 738
    .line 739
    const/4 v0, 0x7

    .line 740
    if-eq v2, v0, :cond_22

    .line 741
    .line 742
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 743
    .line 744
    invoke-static {v0, v2, v11}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    if-eqz v0, :cond_22

    .line 749
    .line 750
    const/4 v3, 0x6

    .line 751
    if-ne v2, v3, :cond_21

    .line 752
    .line 753
    add-int/lit16 v3, v11, 0x3e8

    .line 754
    .line 755
    goto :goto_10

    .line 756
    :cond_21
    move v3, v2

    .line 757
    :goto_10
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 758
    .line 759
    new-instance v6, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;

    .line 760
    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 762
    .line 763
    .line 764
    move-result v7

    .line 765
    invoke-direct {v6, v4, v7, v0, v3}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v6}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    invoke-virtual {v5, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    .line 773
    .line 774
    .line 775
    :cond_22
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 776
    .line 777
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 778
    .line 779
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    .line 780
    .line 781
    .line 782
    move-result v3

    .line 783
    if-eqz v3, :cond_23

    .line 784
    .line 785
    :try_start_1
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 786
    .line 787
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    check-cast v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 792
    .line 793
    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 794
    .line 795
    invoke-interface {v0, v3, v2}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onAcquired(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 796
    .line 797
    .line 798
    :cond_23
    :goto_11
    const/4 v3, 0x1

    .line 799
    goto :goto_12

    .line 800
    :catch_1
    move-exception v0

    .line 801
    const-string v3, "SensorOverlays"

    .line 802
    .line 803
    const-string v4, "Remote exception using overlay controller"

    .line 804
    .line 805
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    .line 807
    .line 808
    goto :goto_11

    .line 809
    :goto_12
    invoke-virtual {v1, v2, v11, v3}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    .line 810
    .line 811
    .line 812
    iget v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 813
    .line 814
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    iget v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 819
    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAcquireForUser(IZ)V

    .line 825
    .line 826
    .line 827
    :cond_24
    return-void

    .line 828
    nop

    .line 829
    :array_0
    .array-data 4
        0xa048
        0xa0a8
        0xabe2
        0xabe3
        0xabe4
        0xabe5
        0xb79a
        0xb79b
    .end array-data
.end method

.method public final onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .locals 29

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p2

    .line 4
    .line 5
    iget-boolean v0, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldSkipResponseDueToPowerPress:Z

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "FingerprintAuthenticationClient.Ext"

    .line 11
    .line 12
    const-string v1, "SKIP DUE TO POWER PRESS"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    if-eqz v9, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getHandler()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v1, v8, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    iput-boolean v10, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldSkipResponseDueToPowerPress:Z

    .line 33
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    iput-wide v0, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPowerPressedTimeStamp:J

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v1, "handleAuthenticated: "

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "FingerprintService"

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iput-boolean v9, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsAuthenticated:Z

    .line 60
    .line 61
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAuthenticated(Z)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 69
    .line 70
    .line 71
    move-result v19

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    iget-wide v2, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCaptureStartTime:J

    .line 77
    .line 78
    sub-long v3, v0, v2

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->resumeFaceAuth()V

    .line 81
    .line 82
    .line 83
    iget-boolean v0, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsAuthenticated:Z

    .line 84
    .line 85
    const/4 v7, 0x1

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    iget v1, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mRejectCount:I

    .line 89
    .line 90
    add-int/2addr v1, v7

    .line 91
    iput v1, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mRejectCount:I

    .line 92
    .line 93
    :cond_3
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    iget-wide v1, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 102
    .line 103
    long-to-int v13, v1

    .line 104
    iget v1, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mRejectCount:I

    .line 105
    .line 106
    iget v2, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mTotalQualityErrorCount:I

    .line 107
    .line 108
    iget-boolean v5, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    .line 109
    .line 110
    invoke-virtual {v12}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    new-instance v14, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;

    .line 115
    .line 116
    move-object v11, v14

    .line 117
    move-object v7, v14

    .line 118
    move-wide v14, v3

    .line 119
    move/from16 v16, v1

    .line 120
    .line 121
    move/from16 v17, v2

    .line 122
    .line 123
    move-object/from16 v18, v0

    .line 124
    .line 125
    move/from16 v20, v5

    .line 126
    .line 127
    invoke-direct/range {v11 .. v20}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;IZ)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 135
    .line 136
    .line 137
    move-result-object v21

    .line 138
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    iget-wide v1, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 141
    .line 142
    long-to-int v1, v1

    .line 143
    iget v2, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationFailedReason:I

    .line 144
    .line 145
    iget v5, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mQualityErrorCount:I

    .line 146
    .line 147
    iget-boolean v6, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    .line 148
    .line 149
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    new-instance v11, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;

    .line 154
    .line 155
    move-object/from16 v20, v11

    .line 156
    .line 157
    move/from16 v22, v1

    .line 158
    .line 159
    move-wide/from16 v23, v3

    .line 160
    .line 161
    move/from16 v25, v2

    .line 162
    .line 163
    move/from16 v26, v5

    .line 164
    .line 165
    move-object/from16 v27, v0

    .line 166
    .line 167
    move/from16 v28, v6

    .line 168
    .line 169
    invoke-direct/range {v20 .. v28}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .line 174
    .line 175
    :goto_0
    iget-boolean v2, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsAuthenticated:Z

    .line 176
    .line 177
    iget v6, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mQualityErrorCount:I

    .line 178
    .line 179
    iget v5, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mRejectCount:I

    .line 180
    .line 181
    iget-boolean v7, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    .line 182
    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBiometricsHandler()Landroid/os/Handler;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;

    .line 188
    .line 189
    move-object v0, v12

    .line 190
    move-object/from16 v1, p0

    .line 191
    .line 192
    const/4 v13, 0x1

    .line 193
    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;ZJIIZ)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    .line 198
    .line 199
    iput v10, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mQualityErrorCount:I

    .line 200
    .line 201
    invoke-super/range {p0 .. p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 205
    .line 206
    const-string v1, "FingerprintAuthenticationClient"

    .line 207
    .line 208
    if-nez v0, :cond_5

    .line 209
    .line 210
    const-string v0, "Lockout is implemented by the HAL"

    .line 211
    .line 212
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_5
    if-eqz v9, :cond_6

    .line 217
    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_6

    .line 223
    .line 224
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 225
    .line 226
    iget v1, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 227
    .line 228
    invoke-interface {v0, v1, v13}, Lcom/android/server/biometrics/sensors/LockoutTracker;->resetFailedAttemptsForUser(IZ)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_6
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 233
    .line 234
    iget v2, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 235
    .line 236
    invoke-interface {v0, v2}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_8

    .line 241
    .line 242
    const-string v2, "Fingerprint locked out, lockoutMode("

    .line 243
    .line 244
    const-string v3, ")"

    .line 245
    .line 246
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    if-ne v0, v13, :cond_7

    .line 250
    .line 251
    const/4 v0, 0x7

    .line 252
    goto :goto_1

    .line 253
    :cond_7
    const/16 v0, 0x9

    .line 254
    .line 255
    :goto_1
    iget-object v1, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 256
    .line 257
    iget v2, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 263
    .line 264
    new-instance v2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    .line 265
    .line 266
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 267
    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    iget-object v5, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    invoke-static {v5, v0, v10}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v8, v0, v10, v10}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    .line 289
    .line 290
    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    .line 292
    .line 293
    .line 294
    :cond_8
    :goto_2
    if-eqz v9, :cond_a

    .line 295
    .line 296
    const/4 v0, 0x4

    .line 297
    iput v0, v8, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 298
    .line 299
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 300
    .line 301
    iget v1, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 304
    .line 305
    .line 306
    invoke-static {}, Landroid/adaptiveauth/Flags;->reportBiometricAuthAttempts()Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_9

    .line 311
    .line 312
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 313
    .line 314
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;

    .line 315
    .line 316
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 317
    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    iget-boolean v4, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsStrongBiometric:Z

    .line 323
    .line 324
    iget v5, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 325
    .line 326
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;IZI)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V

    .line 334
    .line 335
    .line 336
    :cond_9
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 337
    .line 338
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 339
    .line 340
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 341
    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 354
    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_a
    const/4 v0, 0x3

    .line 358
    iput v0, v8, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 359
    .line 360
    invoke-static {}, Landroid/adaptiveauth/Flags;->reportBiometricAuthAttempts()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_b

    .line 365
    .line 366
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 367
    .line 368
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;

    .line 369
    .line 370
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 371
    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    iget v4, v8, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 377
    .line 378
    invoke-direct {v1, v2, v3, v4}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationFailedInfo;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V

    .line 386
    .line 387
    .line 388
    :cond_b
    :goto_3
    return-void
.end method

.method public final onError(II)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    move/from16 v2, p1

    .line 5
    .line 6
    if-ne v2, v1, :cond_0

    .line 7
    .line 8
    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mErrorEscrow:I

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mVendorErrorEscrow:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    move/from16 v2, p2

    .line 17
    .line 18
    :goto_0
    const/16 v3, 0x8

    .line 19
    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    iput v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mLastErrorCode:I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iput v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mLastErrorCode:I

    .line 26
    .line 27
    :goto_1
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 28
    .line 29
    new-instance v5, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    .line 30
    .line 31
    sget-object v6, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v8, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-direct {v5, v6, v7, v8, v1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v5}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    .line 51
    .line 52
    .line 53
    invoke-super {v0, v1, v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    .line 54
    .line 55
    .line 56
    const/16 v4, 0x12

    .line 57
    .line 58
    if-ne v1, v4, :cond_3

    .line 59
    .line 60
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    sget-object v5, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    .line 63
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v7

    .line 68
    sget-wide v9, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    .line 69
    .line 70
    sub-long v11, v7, v9

    .line 71
    .line 72
    const-wide/16 v13, 0x0

    .line 73
    .line 74
    cmp-long v5, v9, v13

    .line 75
    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    const-wide/32 v9, 0x5265c00

    .line 79
    .line 80
    .line 81
    cmp-long v5, v11, v9

    .line 82
    .line 83
    if-gez v5, :cond_2

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v5, "Skipping calibration notification : "

    .line 88
    .line 89
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v5, "BiometricNotificationUtils"

    .line 100
    .line 101
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    sput-wide v7, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    .line 106
    .line 107
    const v5, 0x104058b

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const v7, 0x104058c

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    const v7, 0x104058a

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    const-string v7, "android.settings.FINGERPRINT_SETTINGS"

    .line 129
    .line 130
    const-string/jumbo v8, "com.android.settings"

    .line 131
    .line 132
    .line 133
    invoke-static {v7, v8}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    const/4 v8, 0x0

    .line 141
    const/high16 v10, 0x4000000

    .line 142
    .line 143
    move-object v7, v4

    .line 144
    invoke-static/range {v7 .. v12}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    const/4 v12, 0x0

    .line 149
    const/4 v15, 0x0

    .line 150
    const-string/jumbo v16, "sys"

    .line 151
    .line 152
    .line 153
    const-string v17, "FingerprintBadCalibrationNotificationChannel"

    .line 154
    .line 155
    const-string v18, "FingerprintBadCalibration"

    .line 156
    .line 157
    const/16 v19, -0x1

    .line 158
    .line 159
    const/16 v20, 0x0

    .line 160
    .line 161
    const/16 v21, 0x0

    .line 162
    .line 163
    move-object v7, v4

    .line 164
    move-object v8, v5

    .line 165
    move-object v9, v13

    .line 166
    move-object v10, v14

    .line 167
    move-object v13, v15

    .line 168
    move-object/from16 v14, v16

    .line 169
    .line 170
    move-object/from16 v15, v17

    .line 171
    .line 172
    move-object/from16 v16, v18

    .line 173
    .line 174
    move/from16 v17, v19

    .line 175
    .line 176
    move/from16 v18, v20

    .line 177
    .line 178
    move/from16 v19, v21

    .line 179
    .line 180
    invoke-static/range {v7 .. v19}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification$Action;Landroid/app/Notification$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 181
    .line 182
    .line 183
    :cond_3
    :goto_2
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 184
    .line 185
    iget v5, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 186
    .line 187
    invoke-virtual {v4, v5}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 188
    .line 189
    .line 190
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 191
    .line 192
    new-instance v5, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 193
    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    invoke-direct {v5, v6, v7}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v4, v5}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 206
    .line 207
    .line 208
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 209
    .line 210
    if-eqz v4, :cond_4

    .line 211
    .line 212
    invoke-virtual {v4, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnError(II)V

    .line 213
    .line 214
    .line 215
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->resumeFaceAuth()V

    .line 216
    .line 217
    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    const/4 v5, 0x1

    .line 228
    const-string v6, "FPER"

    .line 229
    .line 230
    const/4 v7, 0x3

    .line 231
    const/4 v8, 0x0

    .line 232
    if-eq v1, v5, :cond_7

    .line 233
    .line 234
    const/4 v5, 0x7

    .line 235
    if-eq v1, v5, :cond_6

    .line 236
    .line 237
    if-eq v1, v3, :cond_5

    .line 238
    .line 239
    const/16 v5, 0x9

    .line 240
    .line 241
    if-eq v1, v5, :cond_6

    .line 242
    .line 243
    move-object v0, v8

    .line 244
    goto :goto_3

    .line 245
    :cond_5
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 246
    .line 247
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 248
    .line 249
    .line 250
    iput-object v6, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    iput-object v5, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 257
    .line 258
    iput v7, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_6
    new-instance v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 262
    .line 263
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v6, "FPIB"

    .line 267
    .line 268
    iput-object v6, v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 269
    .line 270
    iput-object v0, v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 271
    .line 272
    iput v7, v5, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    .line 273
    .line 274
    move-object v0, v5

    .line 275
    goto :goto_3

    .line 276
    :cond_7
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 277
    .line 278
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 279
    .line 280
    .line 281
    iput-object v6, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    iput-object v5, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 288
    .line 289
    iput v7, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    .line 290
    .line 291
    :goto_3
    if-eqz v0, :cond_8

    .line 292
    .line 293
    invoke-virtual {v4, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 294
    .line 295
    .line 296
    :cond_8
    if-ne v1, v3, :cond_9

    .line 297
    .line 298
    const/16 v0, 0x3ef

    .line 299
    .line 300
    if-ne v2, v0, :cond_9

    .line 301
    .line 302
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 303
    .line 304
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v1, "FPPD"

    .line 308
    .line 309
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    .line 310
    .line 311
    iput-object v8, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    .line 312
    .line 313
    const/4 v1, 0x2

    .line 314
    iput v1, v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    .line 315
    .line 316
    invoke-virtual {v4, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 317
    .line 318
    .line 319
    :cond_9
    return-void
.end method

.method public final onLockoutPermanent()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

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
    const/4 v0, 0x0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 43
    .line 44
    new-instance v2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    .line 45
    .line 46
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const/16 v6, 0x9

    .line 55
    .line 56
    invoke-static {v5, v6, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 71
    .line 72
    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 73
    .line 74
    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 75
    .line 76
    invoke-virtual {v1, v2, v3, v6, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    const-string v2, "FingerprintAuthenticationClient"

    .line 82
    .line 83
    const-string v3, "Remote exception"

    .line 84
    .line 85
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final onLockoutTimed(J)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 4
    .line 5
    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 6
    .line 7
    iget v4, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    .line 8
    .line 9
    iget v5, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 10
    .line 11
    iget-wide v8, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 12
    .line 13
    move-wide/from16 v6, p1

    .line 14
    .line 15
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->lockOutTimed(IIIJJ)V

    .line 16
    .line 17
    .line 18
    iget-object v10, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 19
    .line 20
    iget-object v11, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 23
    .line 24
    .line 25
    move-result-object v12

    .line 26
    iget v15, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 27
    .line 28
    const/4 v13, 0x7

    .line 29
    const/4 v14, 0x0

    .line 30
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V

    .line 31
    .line 32
    .line 33
    iget v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementTimedLockoutForUser(I)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 46
    .line 47
    new-instance v3, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    .line 48
    .line 49
    sget-object v4, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    iget-object v6, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const/4 v7, 0x7

    .line 58
    invoke-static {v6, v7, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 73
    .line 74
    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 75
    .line 76
    iget v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 77
    .line 78
    invoke-virtual {v0, v3, v4, v7, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v3, "FingerprintAuthenticationClient"

    .line 84
    .line 85
    const-string v4, "Remote exception"

    .line 86
    .line 87
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    :goto_0
    iput-boolean v2, v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final onOneHandModeEnabled()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/16 v1, 0x1389

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onError(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onPointerDown(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 27
    .line 28
    iget v1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 29
    .line 30
    iget v2, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    .line 31
    .line 32
    float-to-int v2, v2

    .line 33
    iget v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    .line 34
    .line 35
    float-to-int v3, v3

    .line 36
    iget v4, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    .line 37
    .line 38
    iget v5, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    .line 39
    .line 40
    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDown(IIIFF)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 44
    .line 45
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerDown(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    const-string p1, "FingerprintAuthenticationClient"

    .line 56
    .line 57
    const-string v0, "Remote exception"

    .line 58
    .line 59
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_2
    return-void
.end method

.method public final onPointerUp(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 27
    .line 28
    iget p1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    .line 29
    .line 30
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUp(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerUp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_1
    const-string p1, "FingerprintAuthenticationClient"

    .line 46
    .line 47
    const-string v0, "Remote exception"

    .line 48
    .line 49
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_2
    return-void
.end method

.method public final onTspBlocked()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/16 v1, 0x3ec

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onAcquired(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onTspUnBlocked()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/16 v1, 0x3ed

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onAcquired(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onUdfpsUiEvent(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->onUiReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string p1, "FingerprintAuthenticationClient"

    .line 20
    .line 21
    const-string v0, "Remote exception"

    .line 22
    .line 23
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public final resumeFaceAuth()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBiometricsHandler()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final semHasPromptPrivilegedAttr()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x8

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final semIsAllowedBackgroundAuthentication()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 16
    :goto_1
    return p0
.end method

.method public final setIgnoreDisplayTouches(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->setIgnoreDisplayTouches(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string p1, "FingerprintAuthenticationClient"

    .line 17
    .line 18
    const-string v0, "Remote exception"

    .line 19
    .line 20
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x2

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 18
    .line 19
    :goto_0
    iget p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->start()V

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_7

    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    .line 44
    .line 45
    if-nez p1, :cond_7

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1, v1}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 59
    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->createBiometricNotification()Lcom/android/server/biometrics/SemBiometricNotification;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 67
    .line 68
    :cond_5
    new-instance p1, Landroid/content/Intent;

    .line 69
    .line 70
    const-string/jumbo v1, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 77
    .line 78
    const-string/jumbo v3, "package"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const-string v2, "authenticator"

    .line 85
    .line 86
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    .line 90
    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    .line 99
    .line 100
    new-instance v4, Landroid/content/IntentFilter;

    .line 101
    .line 102
    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    .line 108
    .line 109
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 110
    .line 111
    sget-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    const/4 v8, 0x2

    .line 118
    const/4 v6, 0x0

    .line 119
    invoke-static/range {v2 .. v8}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 120
    .line 121
    .line 122
    :cond_6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBiometricNotification;->postNotification(Landroid/content/Intent;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 132
    .line 133
    long-to-int v0, v0

    .line 134
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_8

    .line 139
    .line 140
    const-string v1, "AP"

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_8
    const-string v1, "A"

    .line 144
    .line 145
    :goto_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    new-instance v4, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;

    .line 152
    .line 153
    invoke-direct {v4, p1, v1, v2, v0}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBoostingManager()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget p1, p1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mFingerprintHalTid:I

    .line 164
    .line 165
    if-nez p1, :cond_9

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBoostingManager()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mGetTid:Ljava/util/function/IntFunction;

    .line 172
    .line 173
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 174
    .line 175
    invoke-interface {v0, p0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Ljava/lang/Integer;

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string/jumbo v1, "setFingerprintHalTid: "

    .line 191
    .line 192
    .line 193
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const-string v1, "BiometricsBoosting"

    .line 204
    .line 205
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    iput p0, p1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mFingerprintHalTid:I

    .line 209
    .line 210
    :cond_9
    return-void
.end method

.method public final startHalOperation()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 13
    .line 14
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;

    .line 15
    .line 16
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 45
    .line 46
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-direct {v3, p0, v0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;I)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    invoke-direct {v4, p0, v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

    .line 59
    .line 60
    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 61
    .line 62
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "FingerprintAuthenticationClient"

    .line 68
    .line 69
    const-string v2, "Remote exception"

    .line 70
    .line 71
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onError(II)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 80
    .line 81
    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 87
    .line 88
    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method public final stopHalOperation()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onAuthenticationStopped: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "FingerprintAuthenticationClient.Ext"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->stop()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBoostingManager()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 41
    .line 42
    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    .line 43
    .line 44
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 64
    .line 65
    const-string v1, "FingerprintAuthenticationClient"

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v3, "Remote exception"

    .line 76
    .line 77
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onError(II)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 85
    .line 86
    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const-string/jumbo v0, "cancellation signal was null"

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 97
    .line 98
    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method public final vibrateError()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final vibrateSuccess()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 4
    .line 5
    new-instance v2, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/HalClientMonitor;)V

    .line 8
    .line 9
    .line 10
    filled-new-array {v1, v2, p1}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
