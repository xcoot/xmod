.class public abstract Lcom/android/server/biometrics/sensors/AuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/AuthenticationConsumer;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mAllowBackgroundAuthentication:Z

.field public mAuthAttempted:Z

.field public mAuthSuccess:Z

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public final mIsRestricted:Z

.field public final mIsStrongBiometric:Z

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field public final mOperationId:J

.field public final mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

.field public mPromptPrivilegedFlags:I

.field public final mRequireConfirmation:Z

.field public final mSensorStrength:I

.field public mShouldCancelIfBackgroundAuthentication:Z

.field public final mShouldUseLockoutTracker:Z

.field public mStartTimeMs:J

.field public mState:I

.field public final mTaskStackListener:Landroid/app/TaskStackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/biometrics/AuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZI)V
    .locals 16

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move-object/from16 v15, p15

    .line 6
    .line 7
    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getUserId()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getSensorId()I

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->isMandatoryBiometrics()Z

    .line 20
    .line 21
    .line 22
    move-result v12

    .line 23
    const/4 v9, 0x0

    .line 24
    move-object/from16 v0, p0

    .line 25
    .line 26
    move-object/from16 v1, p1

    .line 27
    .line 28
    move-object/from16 v2, p2

    .line 29
    .line 30
    move-object/from16 v3, p3

    .line 31
    .line 32
    move-object/from16 v4, p4

    .line 33
    .line 34
    move/from16 v7, p9

    .line 35
    .line 36
    move-object/from16 v10, p11

    .line 37
    .line 38
    move-object/from16 v11, p12

    .line 39
    .line 40
    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 45
    .line 46
    iput-boolean v0, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    .line 47
    .line 48
    move/from16 v1, p13

    .line 49
    .line 50
    iput-boolean v1, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    .line 51
    .line 52
    move-wide/from16 v1, p5

    .line 53
    .line 54
    iput-wide v1, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    .line 55
    .line 56
    move/from16 v1, p10

    .line 57
    .line 58
    iput-boolean v1, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    .line 59
    .line 60
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 65
    .line 66
    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    .line 67
    .line 68
    invoke-virtual {v14, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/hardware/biometrics/BiometricManager;

    .line 73
    .line 74
    iput-object v1, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 75
    .line 76
    move-object/from16 v1, p14

    .line 77
    .line 78
    iput-object v1, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 79
    .line 80
    iput-object v15, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 81
    .line 82
    move/from16 v1, p7

    .line 83
    .line 84
    iput-boolean v1, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    .line 85
    .line 86
    move/from16 v1, p16

    .line 87
    .line 88
    iput-boolean v1, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    .line 89
    .line 90
    if-eqz v15, :cond_0

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    :cond_0
    iput-boolean v0, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    .line 94
    .line 95
    move/from16 v0, p17

    .line 96
    .line 97
    iput v0, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    .line 98
    .line 99
    move-object/from16 v0, p8

    .line 100
    .line 101
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

    .line 102
    .line 103
    const-class v0, Landroid/app/ActivityManager;

    .line 104
    .line 105
    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroid/app/ActivityManager;

    .line 110
    .line 111
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityManager:Landroid/app/ActivityManager;

    .line 112
    .line 113
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->binderDiedInternal(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->destroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public final getRequestReason()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x4

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x3

    .line 16
    return p0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 20
    .line 21
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 22
    .line 23
    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const-string/jumbo v0, "com.android.settings"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    const/4 p0, 0x6

    .line 41
    return p0

    .line 42
    :cond_2
    const/4 p0, 0x5

    .line 43
    return p0
.end method

.method public abstract handleLifecycleAfterAuth(Z)V
.end method

.method public final interruptsPrecedingClients()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isCryptoOperation()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
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

.method public isKeyguard()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    iget-boolean v14, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    .line 14
    .line 15
    iget v15, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iget-boolean v5, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 22
    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v11, 0x1

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    move-object v2, v1

    .line 28
    move v1, v13

    .line 29
    goto/16 :goto_16

    .line 30
    .line 31
    :cond_0
    iget-object v5, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 32
    .line 33
    const/high16 v16, -0x40800000    # -1.0f

    .line 34
    .line 35
    if-eqz v5, :cond_16

    .line 36
    .line 37
    iget-boolean v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnabled:Z

    .line 38
    .line 39
    if-nez v7, :cond_1

    .line 40
    .line 41
    goto/16 :goto_e

    .line 42
    .line 43
    :cond_1
    iget-object v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    const-string v8, "android.hardware.fingerprint"

    .line 46
    .line 47
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_16

    .line 52
    .line 53
    iget-object v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    const-string v8, "android.hardware.biometrics.face"

    .line 56
    .line 57
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-nez v7, :cond_2

    .line 62
    .line 63
    goto/16 :goto_e

    .line 64
    .line 65
    :cond_2
    iget-object v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 66
    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    invoke-virtual {v7, v15}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_3

    .line 74
    .line 75
    iget-object v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 76
    .line 77
    if-eqz v7, :cond_3

    .line 78
    .line 79
    invoke-virtual {v7, v15}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_3

    .line 84
    .line 85
    goto/16 :goto_e

    .line 86
    .line 87
    :cond_3
    iget-object v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 88
    .line 89
    check-cast v7, Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_4

    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->initializeUserAuthenticationStatsMap()V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 101
    .line 102
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v7, Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_5

    .line 113
    .line 114
    iget-object v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 115
    .line 116
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    new-instance v9, Lcom/android/server/biometrics/AuthenticationStats;

    .line 121
    .line 122
    iget v10, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    .line 123
    .line 124
    invoke-direct {v9, v15, v10}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(II)V

    .line 125
    .line 126
    .line 127
    check-cast v7, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_5
    iget-object v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 133
    .line 134
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v7, Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    check-cast v7, Lcom/android/server/biometrics/AuthenticationStats;

    .line 145
    .line 146
    iget v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 147
    .line 148
    if-lt v8, v11, :cond_6

    .line 149
    .line 150
    goto/16 :goto_e

    .line 151
    .line 152
    :cond_6
    if-nez v0, :cond_7

    .line 153
    .line 154
    iget v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 155
    .line 156
    add-int/2addr v8, v11

    .line 157
    iput v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 158
    .line 159
    :cond_7
    iget v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 160
    .line 161
    add-int/2addr v8, v11

    .line 162
    iput v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 163
    .line 164
    iget-object v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 165
    .line 166
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    check-cast v7, Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    check-cast v7, Lcom/android/server/biometrics/AuthenticationStats;

    .line 177
    .line 178
    iget v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 179
    .line 180
    const/16 v9, 0x96

    .line 181
    .line 182
    if-ge v8, v9, :cond_8

    .line 183
    .line 184
    goto/16 :goto_4

    .line 185
    .line 186
    :cond_8
    iget v9, v7, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 187
    .line 188
    if-ge v9, v11, :cond_e

    .line 189
    .line 190
    if-lez v8, :cond_9

    .line 191
    .line 192
    iget v9, v7, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 193
    .line 194
    int-to-float v9, v9

    .line 195
    int-to-float v8, v8

    .line 196
    div-float/2addr v9, v8

    .line 197
    goto :goto_0

    .line 198
    :cond_9
    move/from16 v9, v16

    .line 199
    .line 200
    :goto_0
    iget v8, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    .line 201
    .line 202
    cmpg-float v8, v9, v8

    .line 203
    .line 204
    if-gez v8, :cond_a

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_a
    iput v13, v7, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 208
    .line 209
    iput v13, v7, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 210
    .line 211
    const-string v8, "AuthenticationStats"

    .line 212
    .line 213
    const-string v9, "Reset Counters."

    .line 214
    .line 215
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    iget-object v8, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 219
    .line 220
    if-eqz v8, :cond_b

    .line 221
    .line 222
    invoke-virtual {v8, v15}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_b

    .line 227
    .line 228
    move v8, v11

    .line 229
    goto :goto_1

    .line 230
    :cond_b
    move v8, v13

    .line 231
    :goto_1
    iget-object v9, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 232
    .line 233
    if-eqz v9, :cond_c

    .line 234
    .line 235
    invoke-virtual {v9, v15}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    if-eqz v9, :cond_c

    .line 240
    .line 241
    move v9, v11

    .line 242
    goto :goto_2

    .line 243
    :cond_c
    move v9, v13

    .line 244
    :goto_2
    iget-object v10, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;

    .line 245
    .line 246
    if-eqz v8, :cond_d

    .line 247
    .line 248
    if-nez v9, :cond_d

    .line 249
    .line 250
    iget-object v8, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    .line 251
    .line 252
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-static {v8}, Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;->sendFpEnrollNotification(Landroid/content/Context;)V

    .line 256
    .line 257
    .line 258
    iget v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 259
    .line 260
    add-int/2addr v8, v11

    .line 261
    iput v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_d
    if-nez v8, :cond_f

    .line 265
    .line 266
    if-eqz v9, :cond_f

    .line 267
    .line 268
    iget-object v8, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    .line 269
    .line 270
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-static {v8}, Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;->sendFaceEnrollNotification(Landroid/content/Context;)V

    .line 274
    .line 275
    .line 276
    iget v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 277
    .line 278
    add-int/2addr v8, v11

    .line 279
    iput v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_e
    :goto_3
    iput v13, v7, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 283
    .line 284
    iput v13, v7, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 285
    .line 286
    const-string v7, "AuthenticationStats"

    .line 287
    .line 288
    const-string v8, "Reset Counters."

    .line 289
    .line 290
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    :cond_f
    :goto_4
    iget-object v7, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 294
    .line 295
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    check-cast v7, Ljava/util/HashMap;

    .line 300
    .line 301
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    check-cast v7, Lcom/android/server/biometrics/AuthenticationStats;

    .line 306
    .line 307
    iget v8, v7, Lcom/android/server/biometrics/AuthenticationStats;->mTotalAttempts:I

    .line 308
    .line 309
    rem-int/lit8 v9, v8, 0x32

    .line 310
    .line 311
    if-nez v9, :cond_16

    .line 312
    .line 313
    iget v9, v7, Lcom/android/server/biometrics/AuthenticationStats;->mRejectedAttempts:I

    .line 314
    .line 315
    iget v10, v7, Lcom/android/server/biometrics/AuthenticationStats;->mEnrollmentNotifications:I

    .line 316
    .line 317
    iget-object v5, v5, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    .line 318
    .line 319
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    const-string v12, "AuthenticationStatsPersister"

    .line 323
    .line 324
    :try_start_0
    new-instance v13, Ljava/util/HashSet;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 325
    .line 326
    :try_start_1
    iget-object v11, v5, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 327
    .line 328
    const-string/jumbo v1, "frr_stats"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 329
    .line 330
    .line 331
    move-object/from16 v18, v3

    .line 332
    .line 333
    :try_start_2
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-interface {v11, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-direct {v13, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 352
    iget v11, v7, Lcom/android/server/biometrics/AuthenticationStats;->mUserId:I

    .line 353
    .line 354
    move-object/from16 v19, v6

    .line 355
    .line 356
    const-string/jumbo v6, "user_id"

    .line 357
    .line 358
    .line 359
    if-eqz v3, :cond_12

    .line 360
    .line 361
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    check-cast v3, Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 366
    .line 367
    move/from16 v20, v15

    .line 368
    .line 369
    :try_start_4
    new-instance v15, Lorg/json/JSONObject;

    .line 370
    .line 371
    invoke-direct {v15, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const-string/jumbo v3, "user_id"

    .line 375
    .line 376
    .line 377
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v21

    .line 381
    if-eqz v21, :cond_10

    .line 382
    .line 383
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    :goto_6
    move-object/from16 v21, v15

    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_10
    const-string v3, ""

    .line 391
    .line 392
    goto :goto_6

    .line 393
    :goto_7
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v15

    .line 397
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-eqz v3, :cond_11

    .line 402
    .line 403
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 404
    .line 405
    .line 406
    move-object/from16 v15, v21

    .line 407
    .line 408
    goto :goto_a

    .line 409
    :catch_0
    :goto_8
    const/4 v11, 0x1

    .line 410
    goto/16 :goto_d

    .line 411
    .line 412
    :cond_11
    move-object/from16 v6, v19

    .line 413
    .line 414
    move/from16 v15, v20

    .line 415
    .line 416
    goto :goto_5

    .line 417
    :catch_1
    :goto_9
    move/from16 v20, v15

    .line 418
    .line 419
    goto :goto_8

    .line 420
    :cond_12
    move/from16 v20, v15

    .line 421
    .line 422
    const/4 v15, 0x0

    .line 423
    :goto_a
    if-nez v15, :cond_13

    .line 424
    .line 425
    new-instance v1, Lorg/json/JSONObject;

    .line 426
    .line 427
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 431
    .line 432
    .line 433
    move-result-object v15

    .line 434
    :cond_13
    const-string/jumbo v1, "enrollment_notifications"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 435
    .line 436
    .line 437
    iget v3, v7, Lcom/android/server/biometrics/AuthenticationStats;->mModality:I

    .line 438
    .line 439
    const/4 v6, 0x4

    .line 440
    if-ne v3, v6, :cond_14

    .line 441
    .line 442
    :try_start_5
    const-string/jumbo v3, "face_attempts"

    .line 443
    .line 444
    .line 445
    invoke-virtual {v15, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    const-string/jumbo v6, "face_rejections"

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-virtual {v3, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 464
    const/4 v11, 0x1

    .line 465
    goto :goto_b

    .line 466
    :cond_14
    const/4 v11, 0x1

    .line 467
    if-ne v3, v11, :cond_15

    .line 468
    .line 469
    :try_start_6
    const-string/jumbo v3, "fingerprint_attempts"

    .line 470
    .line 471
    .line 472
    invoke-virtual {v15, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    const-string/jumbo v6, "fingerprint_rejections"

    .line 477
    .line 478
    .line 479
    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-virtual {v3, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    goto :goto_b

    .line 492
    :cond_15
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    :goto_b
    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    const-string/jumbo v3, "frrStatsSet to persist: "

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    iget-object v1, v5, Lcom/android/server/biometrics/AuthenticationStatsPersister;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 521
    .line 522
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    const-string/jumbo v3, "frr_stats"

    .line 527
    .line 528
    .line 529
    invoke-interface {v1, v3, v13}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 534
    .line 535
    .line 536
    goto :goto_f

    .line 537
    :catch_2
    :goto_c
    move-object/from16 v19, v6

    .line 538
    .line 539
    goto :goto_9

    .line 540
    :catch_3
    move-object/from16 v18, v3

    .line 541
    .line 542
    goto :goto_c

    .line 543
    :catch_4
    move-object/from16 v18, v3

    .line 544
    .line 545
    move-object/from16 v19, v6

    .line 546
    .line 547
    move/from16 v20, v15

    .line 548
    .line 549
    :catch_5
    :goto_d
    const-string v1, "Unable to persist authentication stats"

    .line 550
    .line 551
    invoke-static {v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    goto :goto_f

    .line 555
    :cond_16
    :goto_e
    move-object/from16 v18, v3

    .line 556
    .line 557
    move-object/from16 v19, v6

    .line 558
    .line 559
    move/from16 v20, v15

    .line 560
    .line 561
    :goto_f
    if-nez v0, :cond_17

    .line 562
    .line 563
    move v13, v11

    .line 564
    goto :goto_10

    .line 565
    :cond_17
    if-eqz v4, :cond_18

    .line 566
    .line 567
    if-eqz v14, :cond_18

    .line 568
    .line 569
    const/4 v13, 0x2

    .line 570
    goto :goto_10

    .line 571
    :cond_18
    const/4 v1, 0x3

    .line 572
    move v13, v1

    .line 573
    :goto_10
    iget-wide v3, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 574
    .line 575
    const-wide/16 v5, 0x0

    .line 576
    .line 577
    cmp-long v1, v3, v5

    .line 578
    .line 579
    if-eqz v1, :cond_19

    .line 580
    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 582
    .line 583
    .line 584
    move-result-wide v3

    .line 585
    iget-wide v5, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 586
    .line 587
    sub-long/2addr v3, v5

    .line 588
    :goto_11
    move-wide v9, v3

    .line 589
    goto :goto_12

    .line 590
    :cond_19
    const-wide/16 v3, -0x1

    .line 591
    .line 592
    goto :goto_11

    .line 593
    :goto_12
    sget-boolean v1, Lcom/android/server/biometrics/log/BiometricLogger;->DEBUG:Z

    .line 594
    .line 595
    if-eqz v1, :cond_1a

    .line 596
    .line 597
    const-string v1, "BiometricLogger"

    .line 598
    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    const-string v4, "Authenticated! Modality: "

    .line 602
    .line 603
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget v4, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 607
    .line 608
    const-string v5, ", User: "

    .line 609
    .line 610
    const-string v6, ", IsCrypto: "

    .line 611
    .line 612
    move/from16 v15, v20

    .line 613
    .line 614
    invoke-static {v4, v15, v5, v6, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 615
    .line 616
    .line 617
    move-object/from16 v6, v19

    .line 618
    .line 619
    iget-object v4, v6, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 620
    .line 621
    iget-boolean v4, v4, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 622
    .line 623
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v4, ", Client: "

    .line 627
    .line 628
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    iget v4, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 632
    .line 633
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    const-string v4, ", RequireConfirmation: "

    .line 637
    .line 638
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    const-string v4, ", State: "

    .line 645
    .line 646
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    const-string v4, ", Latency: "

    .line 653
    .line 654
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    const-string v4, ", Lux: "

    .line 661
    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    iget-object v4, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 666
    .line 667
    iget v4, v4, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 668
    .line 669
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .line 678
    .line 679
    goto :goto_13

    .line 680
    :cond_1a
    move-object/from16 v6, v19

    .line 681
    .line 682
    move/from16 v15, v20

    .line 683
    .line 684
    const-string v1, "BiometricLogger"

    .line 685
    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    const-string v4, "Authentication latency: "

    .line 689
    .line 690
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .line 702
    .line 703
    :goto_13
    invoke-virtual {v2}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    .line 704
    .line 705
    .line 706
    move-result v1

    .line 707
    if-eqz v1, :cond_1b

    .line 708
    .line 709
    const/4 v1, 0x0

    .line 710
    :goto_14
    move-object/from16 v2, p0

    .line 711
    .line 712
    goto :goto_16

    .line 713
    :cond_1b
    iget-object v5, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 714
    .line 715
    iget v7, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 716
    .line 717
    iget v8, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 718
    .line 719
    iget v1, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 720
    .line 721
    move-object/from16 v3, v18

    .line 722
    .line 723
    invoke-static {v3, v15}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    iget-object v2, v2, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 728
    .line 729
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 730
    .line 731
    .line 732
    new-instance v12, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;

    .line 733
    .line 734
    move-object v4, v12

    .line 735
    move-wide/from16 v17, v9

    .line 736
    .line 737
    move v9, v1

    .line 738
    move v10, v3

    .line 739
    move v1, v11

    .line 740
    move-object v3, v12

    .line 741
    move-wide/from16 v11, v17

    .line 742
    .line 743
    const/4 v1, 0x0

    .line 744
    invoke-direct/range {v4 .. v15}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZI)V

    .line 745
    .line 746
    .line 747
    monitor-enter v2

    .line 748
    :try_start_7
    new-instance v4, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 749
    .line 750
    invoke-direct {v4, v3}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;-><init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda2;)V

    .line 751
    .line 752
    .line 753
    iget v3, v2, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 754
    .line 755
    cmpl-float v5, v3, v16

    .line 756
    .line 757
    if-lez v5, :cond_1c

    .line 758
    .line 759
    invoke-virtual {v4, v3}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V

    .line 760
    .line 761
    .line 762
    goto :goto_15

    .line 763
    :catchall_0
    move-exception v0

    .line 764
    goto/16 :goto_24

    .line 765
    .line 766
    :cond_1c
    iget-object v5, v2, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 767
    .line 768
    if-eqz v5, :cond_1d

    .line 769
    .line 770
    iget-object v3, v5, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->mOthers:Ljava/util/List;

    .line 771
    .line 772
    check-cast v3, Ljava/util/ArrayList;

    .line 773
    .line 774
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    goto :goto_15

    .line 778
    :cond_1d
    iget-object v5, v2, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    .line 779
    .line 780
    if-eqz v5, :cond_1e

    .line 781
    .line 782
    iput-boolean v1, v2, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    .line 783
    .line 784
    iput-object v4, v2, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 785
    .line 786
    invoke-virtual {v2}, Lcom/android/server/biometrics/log/ALSProbe;->enableLightSensorLoggingLocked()V

    .line 787
    .line 788
    .line 789
    goto :goto_15

    .line 790
    :cond_1e
    const-string v5, "ALSProbe"

    .line 791
    .line 792
    const-string v6, "No light sensor - use current to consume"

    .line 793
    .line 794
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .line 796
    .line 797
    invoke-virtual {v4, v3}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 798
    .line 799
    .line 800
    :goto_15
    monitor-exit v2

    .line 801
    goto :goto_14

    .line 802
    :goto_16
    iget-object v3, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 803
    .line 804
    const-string v4, "Biometrics/AuthenticationClient"

    .line 805
    .line 806
    const-string/jumbo v5, "onAuthenticated("

    .line 807
    .line 808
    .line 809
    const-string v6, "), ID:"

    .line 810
    .line 811
    invoke-static {v5, v6, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    move-result-object v5

    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 816
    .line 817
    .line 818
    move-result v6

    .line 819
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    const-string v6, ", Owner: "

    .line 823
    .line 824
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    iget-object v6, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 828
    .line 829
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    const-string v6, ", isBP: "

    .line 833
    .line 834
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 838
    .line 839
    .line 840
    move-result v6

    .line 841
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    const-string v6, ", listener: "

    .line 845
    .line 846
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    const-string v6, ", requireConfirmation: "

    .line 853
    .line 854
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    iget-boolean v6, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    .line 858
    .line 859
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    const-string v6, ", user: "

    .line 863
    .line 864
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    iget v6, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 868
    .line 869
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    const-string v6, ", isStrong: "

    .line 873
    .line 874
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    iget-boolean v6, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    .line 878
    .line 879
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    const-string v6, ", clientMonitor: "

    .line 883
    .line 884
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v5

    .line 894
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .line 896
    .line 897
    iget v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 898
    .line 899
    invoke-static {v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 900
    .line 901
    .line 902
    move-result-object v4

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    .line 904
    .line 905
    .line 906
    move-result v5

    .line 907
    if-eqz v5, :cond_20

    .line 908
    .line 909
    iget v5, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 910
    .line 911
    invoke-virtual {v4, v5}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 912
    .line 913
    .line 914
    if-eqz v0, :cond_1f

    .line 915
    .line 916
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 917
    .line 918
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v4

    .line 922
    check-cast v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 923
    .line 924
    iget v5, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    .line 925
    .line 926
    const/4 v6, 0x1

    .line 927
    add-int/2addr v5, v6

    .line 928
    iput v5, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    .line 929
    .line 930
    goto :goto_17

    .line 931
    :cond_1f
    const/4 v6, 0x1

    .line 932
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 933
    .line 934
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v4

    .line 938
    check-cast v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 939
    .line 940
    iget v5, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    .line 941
    .line 942
    add-int/2addr v5, v6

    .line 943
    iput v5, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    .line 944
    .line 945
    goto :goto_17

    .line 946
    :cond_20
    iget v5, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 947
    .line 948
    invoke-virtual {v4, v5}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 949
    .line 950
    .line 951
    if-eqz v0, :cond_21

    .line 952
    .line 953
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 954
    .line 955
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v4

    .line 959
    check-cast v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 960
    .line 961
    iget v5, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    .line 962
    .line 963
    const/4 v6, 0x1

    .line 964
    add-int/2addr v5, v6

    .line 965
    iput v5, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    .line 966
    .line 967
    goto :goto_17

    .line 968
    :cond_21
    const/4 v6, 0x1

    .line 969
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 970
    .line 971
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    check-cast v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 976
    .line 977
    iget v5, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    .line 978
    .line 979
    add-int/2addr v5, v6

    .line 980
    iput v5, v4, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    .line 981
    .line 982
    :goto_17
    iget-boolean v4, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    .line 983
    .line 984
    if-eqz v4, :cond_22

    .line 985
    .line 986
    const-string v4, "Biometrics/AuthenticationClient"

    .line 987
    .line 988
    const-string v5, "Allowing background authentication, this is allowed only for platform or test invocations"

    .line 989
    .line 990
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    .line 992
    .line 993
    :cond_22
    iget-boolean v4, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    .line 994
    .line 995
    if-nez v4, :cond_23

    .line 996
    .line 997
    if-eqz v0, :cond_23

    .line 998
    .line 999
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 1000
    .line 1001
    iget-object v5, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 1002
    .line 1003
    invoke-static {v4, v5}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v4

    .line 1007
    if-nez v4, :cond_23

    .line 1008
    .line 1009
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 1010
    .line 1011
    iget-object v5, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 1012
    .line 1013
    invoke-static {v4, v5}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v4

    .line 1017
    if-nez v4, :cond_23

    .line 1018
    .line 1019
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 1020
    .line 1021
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v13

    .line 1025
    goto :goto_18

    .line 1026
    :cond_23
    move v13, v1

    .line 1027
    :goto_18
    const/4 v4, -0x1

    .line 1028
    const v5, 0x534e4554

    .line 1029
    .line 1030
    .line 1031
    if-eqz v13, :cond_25

    .line 1032
    .line 1033
    const-string v0, "Biometrics/AuthenticationClient"

    .line 1034
    .line 1035
    const-string v6, "Failing possible background authentication"

    .line 1036
    .line 1037
    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    .line 1039
    .line 1040
    iget-object v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 1041
    .line 1042
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    const-string v6, "159249069"

    .line 1047
    .line 1048
    if-eqz v0, :cond_24

    .line 1049
    .line 1050
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1051
    .line 1052
    goto :goto_19

    .line 1053
    :cond_24
    move v0, v4

    .line 1054
    :goto_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    const-string v7, "Attempted background authentication"

    .line 1059
    .line 1060
    filled-new-array {v6, v0, v7}, [Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1065
    .line 1066
    .line 1067
    move v9, v1

    .line 1068
    goto :goto_1a

    .line 1069
    :cond_25
    move v9, v0

    .line 1070
    :goto_1a
    if-eqz v9, :cond_2e

    .line 1071
    .line 1072
    if-eqz v13, :cond_27

    .line 1073
    .line 1074
    iget-object v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 1075
    .line 1076
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    const-string v6, "159249069"

    .line 1081
    .line 1082
    if-eqz v0, :cond_26

    .line 1083
    .line 1084
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1085
    .line 1086
    :cond_26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    const-string v4, "Successful background authentication!"

    .line 1091
    .line 1092
    filled-new-array {v6, v0, v4}, [Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1097
    .line 1098
    .line 1099
    :cond_27
    const/4 v0, 0x1

    .line 1100
    iput-boolean v0, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    .line 1101
    .line 1102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    const-string/jumbo v5, "marking operation as done: "

    .line 1105
    .line 1106
    .line 1107
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v4

    .line 1117
    const-string v5, "BaseClientMonitor"

    .line 1118
    .line 1119
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .line 1121
    .line 1122
    iput-boolean v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 1123
    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1128
    .line 1129
    .line 1130
    move-result v0

    .line 1131
    new-array v6, v0, [B

    .line 1132
    .line 1133
    move v13, v1

    .line 1134
    :goto_1b
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1135
    .line 1136
    .line 1137
    move-result v4

    .line 1138
    if-ge v13, v4, :cond_28

    .line 1139
    .line 1140
    move-object/from16 v4, p3

    .line 1141
    .line 1142
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v5

    .line 1146
    check-cast v5, Ljava/lang/Byte;

    .line 1147
    .line 1148
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    .line 1149
    .line 1150
    .line 1151
    move-result v5

    .line 1152
    aput-byte v5, v6, v13

    .line 1153
    .line 1154
    add-int/lit8 v13, v13, 0x1

    .line 1155
    .line 1156
    goto :goto_1b

    .line 1157
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    .line 1158
    .line 1159
    .line 1160
    move-result v4

    .line 1161
    if-nez v4, :cond_2b

    .line 1162
    .line 1163
    const/4 v4, 0x1

    .line 1164
    if-le v0, v4, :cond_2b

    .line 1165
    .line 1166
    iget-boolean v0, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    .line 1167
    .line 1168
    if-eqz v0, :cond_29

    .line 1169
    .line 1170
    iget-object v10, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 1171
    .line 1172
    iget-object v11, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 1173
    .line 1174
    iget-object v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 1175
    .line 1176
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v12

    .line 1180
    iget v13, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 1181
    .line 1182
    iget v14, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 1183
    .line 1184
    move-object v15, v6

    .line 1185
    invoke-virtual/range {v10 .. v15}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 1186
    .line 1187
    .line 1188
    :cond_29
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v0

    .line 1192
    invoke-virtual {v0, v6}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    .line 1193
    .line 1194
    .line 1195
    move-result v0

    .line 1196
    if-eqz v0, :cond_2a

    .line 1197
    .line 1198
    const-string v4, "Biometrics/AuthenticationClient"

    .line 1199
    .line 1200
    const-string v5, "Error adding auth token : "

    .line 1201
    .line 1202
    invoke-static {v0, v5, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    goto :goto_1c

    .line 1206
    :cond_2a
    const-string v0, "Biometrics/AuthenticationClient"

    .line 1207
    .line 1208
    const-string v4, "addAuthToken succeeded"

    .line 1209
    .line 1210
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    .line 1212
    .line 1213
    goto :goto_1c

    .line 1214
    :cond_2b
    const-string v0, "Biometrics/AuthenticationClient"

    .line 1215
    .line 1216
    const-string v4, "Skipping addAuthToken"

    .line 1217
    .line 1218
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    .line 1220
    .line 1221
    :goto_1c
    :try_start_8
    iget-boolean v0, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    .line 1222
    .line 1223
    if-eqz v0, :cond_2d

    .line 1224
    .line 1225
    iget v0, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    .line 1226
    .line 1227
    if-eqz v0, :cond_2c

    .line 1228
    .line 1229
    goto :goto_1d

    .line 1230
    :cond_2c
    iget v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 1231
    .line 1232
    iget v7, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 1233
    .line 1234
    iget-boolean v8, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    .line 1235
    .line 1236
    const/4 v5, 0x0

    .line 1237
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V

    .line 1238
    .line 1239
    .line 1240
    goto/16 :goto_22

    .line 1241
    .line 1242
    :catch_6
    move-exception v0

    .line 1243
    goto :goto_1e

    .line 1244
    :cond_2d
    :goto_1d
    iget v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 1245
    .line 1246
    iget v7, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 1247
    .line 1248
    iget-boolean v8, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    .line 1249
    .line 1250
    move-object/from16 v5, p1

    .line 1251
    .line 1252
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1253
    .line 1254
    .line 1255
    goto/16 :goto_22

    .line 1256
    .line 1257
    :goto_1e
    const-string v3, "Biometrics/AuthenticationClient"

    .line 1258
    .line 1259
    const-string v4, "Unable to notify listener"

    .line 1260
    .line 1261
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1262
    .line 1263
    .line 1264
    iget-object v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 1265
    .line 1266
    invoke-interface {v0, v2, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 1267
    .line 1268
    .line 1269
    return-void

    .line 1270
    :cond_2e
    if-eqz v13, :cond_31

    .line 1271
    .line 1272
    const-string v0, "Biometrics/AuthenticationClient"

    .line 1273
    .line 1274
    const-string v3, "Sending cancel to client(Due to background auth)"

    .line 1275
    .line 1276
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    .line 1280
    .line 1281
    .line 1282
    iget-boolean v0, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldCancelIfBackgroundAuthentication:Z

    .line 1283
    .line 1284
    if-eqz v0, :cond_2f

    .line 1285
    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    .line 1287
    .line 1288
    .line 1289
    goto/16 :goto_22

    .line 1290
    .line 1291
    :cond_2f
    iget-object v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 1292
    .line 1293
    const-string v3, "Biometrics/AuthenticationClient"

    .line 1294
    .line 1295
    if-nez v0, :cond_30

    .line 1296
    .line 1297
    const-string v0, "Unable to sendAuthenticationCanceled, listener null"

    .line 1298
    .line 1299
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    .line 1301
    .line 1302
    goto :goto_1f

    .line 1303
    :cond_30
    :try_start_9
    iget v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 1304
    .line 1305
    iget v5, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 1306
    .line 1307
    const/4 v6, 0x5

    .line 1308
    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1309
    .line 1310
    .line 1311
    goto :goto_1f

    .line 1312
    :catch_7
    move-exception v0

    .line 1313
    const-string v4, "Remote exception"

    .line 1314
    .line 1315
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1316
    .line 1317
    .line 1318
    :goto_1f
    iget-object v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 1319
    .line 1320
    invoke-interface {v0, v2, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 1321
    .line 1322
    .line 1323
    goto :goto_22

    .line 1324
    :cond_31
    iget-boolean v0, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    .line 1325
    .line 1326
    if-eqz v0, :cond_35

    .line 1327
    .line 1328
    iget v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 1329
    .line 1330
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 1331
    .line 1332
    if-eqz v4, :cond_32

    .line 1333
    .line 1334
    invoke-interface {v4, v0}, Lcom/android/server/biometrics/sensors/LockoutTracker;->addFailedAttemptForUser(I)V

    .line 1335
    .line 1336
    .line 1337
    :cond_32
    iget-object v4, v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 1338
    .line 1339
    invoke-interface {v4, v0}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    .line 1340
    .line 1341
    .line 1342
    move-result v4

    .line 1343
    iget v5, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 1344
    .line 1345
    invoke-static {v5}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v5

    .line 1349
    const/4 v6, 0x2

    .line 1350
    if-ne v4, v6, :cond_33

    .line 1351
    .line 1352
    invoke-virtual {v5, v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementPermanentLockoutForUser(I)V

    .line 1353
    .line 1354
    .line 1355
    goto :goto_20

    .line 1356
    :cond_33
    const/4 v6, 0x1

    .line 1357
    if-ne v4, v6, :cond_34

    .line 1358
    .line 1359
    invoke-virtual {v5, v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementTimedLockoutForUser(I)V

    .line 1360
    .line 1361
    .line 1362
    :cond_34
    :goto_20
    if-eqz v4, :cond_35

    .line 1363
    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    const-string/jumbo v4, "marking operation as done: "

    .line 1367
    .line 1368
    .line 1369
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0

    .line 1379
    const-string v4, "BaseClientMonitor"

    .line 1380
    .line 1381
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    .line 1383
    .line 1384
    const/4 v0, 0x1

    .line 1385
    iput-boolean v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 1386
    .line 1387
    :cond_35
    :try_start_a
    iget-boolean v0, v2, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    .line 1388
    .line 1389
    if-eqz v0, :cond_36

    .line 1390
    .line 1391
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->vibrateError()V

    .line 1392
    .line 1393
    .line 1394
    goto :goto_21

    .line 1395
    :catch_8
    move-exception v0

    .line 1396
    goto :goto_23

    .line 1397
    :cond_36
    :goto_21
    iget v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 1398
    .line 1399
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 1400
    .line 1401
    if-eqz v4, :cond_37

    .line 1402
    .line 1403
    invoke-interface {v4, v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAuthenticationFailed(I)V

    .line 1404
    .line 1405
    .line 1406
    goto :goto_22

    .line 1407
    :cond_37
    iget-object v0, v3, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 1408
    .line 1409
    if-eqz v0, :cond_38

    .line 1410
    .line 1411
    invoke-interface {v0}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed()V

    .line 1412
    .line 1413
    .line 1414
    goto :goto_22

    .line 1415
    :cond_38
    iget-object v0, v3, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1416
    .line 1417
    if-eqz v0, :cond_39

    .line 1418
    .line 1419
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8

    .line 1420
    .line 1421
    .line 1422
    :cond_39
    :goto_22
    invoke-virtual {v2, v9}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleLifecycleAfterAuth(Z)V

    .line 1423
    .line 1424
    .line 1425
    return-void

    .line 1426
    :goto_23
    const-string v3, "Biometrics/AuthenticationClient"

    .line 1427
    .line 1428
    const-string v4, "Unable to notify listener"

    .line 1429
    .line 1430
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    .line 1432
    .line 1433
    iget-object v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 1434
    .line 1435
    invoke-interface {v0, v2, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 1436
    .line 1437
    .line 1438
    return-void

    .line 1439
    :goto_24
    monitor-exit v2

    .line 1440
    throw v0
.end method

.method public onError(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->unregisterListenersForTaskStack()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public semHasPromptPrivilegedAttr()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public semIsAllowedBackgroundAuthentication()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    .line 2
    .line 3
    return p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 9
    .line 10
    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 18
    .line 19
    check-cast p1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 22
    .line 23
    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 24
    .line 25
    iget v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    .line 26
    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object v2, p1, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->mMultiBiometricLockoutState:Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;

    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getLockoutState(II)I

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p1

    .line 35
    move p1, v0

    .line 36
    :goto_0
    const-string v0, "Biometrics/AuthenticationClient"

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "In lockout mode("

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, ") ; disallowing authentication"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    if-ne p1, v1, :cond_1

    .line 64
    .line 65
    const/4 p1, 0x7

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/16 p1, 0x9

    .line 68
    .line 69
    :goto_1
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 79
    .line 80
    invoke-virtual {v2, p1}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 84
    .line 85
    instance-of v2, p1, Landroid/app/ActivityManager$SemProcessListener;

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityManager:Landroid/app/ActivityManager;

    .line 90
    .line 91
    check-cast p1, Landroid/app/ActivityManager$SemProcessListener;

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "Requesting auth for "

    .line 99
    .line 100
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    .line 120
    .line 121
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthAttempted:Z

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    monitor-exit p1

    .line 129
    throw p0
.end method

.method public final unregisterListenersForTaskStack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 11
    .line 12
    instance-of v1, v0, Landroid/app/ActivityManager$SemProcessListener;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityManager:Landroid/app/ActivityManager;

    .line 17
    .line 18
    check-cast v0, Landroid/app/ActivityManager$SemProcessListener;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->semUnregisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
