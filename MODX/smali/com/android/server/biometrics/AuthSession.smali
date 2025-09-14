.class public final Lcom/android/server/biometrics/AuthSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAuthenticatedSensorId:I

.field public mAuthenticatedTimeMs:J

.field public final mAuthenticationResults:Landroid/util/SparseArray;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field final mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public mCancelled:Z

.field public final mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

.field public final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

.field public final mDebugEnabled:Z

.field public mErrorEscrow:I

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mOpPackageName:Ljava/lang/String;

.field public final mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

.field public final mOperationId:J

.field public final mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

.field final mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public final mRandom:Ljava/util/Random;

.field public final mRequestId:J

.field final mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

.field public mSensors:[I

.field public final mSfpsSensorIds:Ljava/util/List;

.field public mStartTimeMs:J

.field public mState:I

.field public final mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

.field final mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

.field final mToken:Landroid/os/IBinder;

.field public mTokenEscrow:[B

.field public mUseSwitchingMode:Z

.field public final mUserId:I

.field public mVendorCodeEscrow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/SemBiometricSysUiWrapper;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p8

    move-wide/from16 v4, p10

    move-object/from16 v6, p17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    .line 2
    iput v7, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v8, -0x1

    .line 3
    iput v8, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 4
    iput-boolean v7, v0, Lcom/android/server/biometrics/AuthSession;->mUseSwitchingMode:Z

    .line 5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Creating AuthSession with: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BiometricService/AuthSession"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    move-object/from16 v8, p2

    .line 7
    iput-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v8, p3

    .line 8
    iput-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 9
    iput-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-object/from16 v8, p5

    .line 10
    iput-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    move-object/from16 v8, p6

    .line 11
    iput-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    move-object/from16 v8, p7

    .line 12
    iput-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    .line 13
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    move-object/from16 v8, p9

    .line 14
    iput-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    .line 15
    iput-wide v4, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    move-wide/from16 v10, p12

    .line 16
    iput-wide v10, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    move/from16 v10, p14

    .line 17
    iput v10, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    move-object/from16 v10, p15

    .line 18
    iput-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-object/from16 v10, p16

    .line 19
    iput-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 20
    iput-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    move-object/from16 v11, p18

    .line 21
    iput-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    move/from16 v11, p19

    .line 22
    iput-boolean v11, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    .line 23
    iput-boolean v7, v0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    move-object/from16 v11, p21

    .line 24
    iput-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 25
    new-instance v11, Lcom/android/server/biometrics/log/OperationContextExt;

    .line 26
    iget-boolean v3, v3, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    .line 27
    new-instance v12, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v12}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13, v7, v3}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V

    .line 28
    iput-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 29
    const-class v3, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricManager;

    iput-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 30
    invoke-interface/range {p20 .. p20}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    const/4 v11, 0x0

    invoke-direct {v3, v11}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    .line 31
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mSfpsSensorIds:Ljava/util/List;

    .line 33
    :try_start_0
    invoke-interface/range {p16 .. p16}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    const-string v1, "Unable to link to death"

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 36
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "set to unknown state sensor: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v3, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 37
    invoke-static {v10, v11, v9}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 38
    iput v7, v3, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 39
    iput v7, v3, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    goto :goto_1

    .line 40
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v13}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticationResults:Landroid/util/SparseArray;

    .line 41
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    instance-of v1, v2, Lcom/android/server/biometrics/BiometricService$2;

    if-eqz v1, :cond_1

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p9 .. p9}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/android/server/biometrics/BiometricService$2;

    .line 44
    iget-object v3, v2, Lcom/android/server/biometrics/BiometricService$2;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;

    .line 45
    iget-object v8, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v8, v1, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result v1

    .line 46
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v8, Landroid/util/Pair;

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v8, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    long-to-int v1, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    new-instance v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    invoke-direct {v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>()V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 52
    const-string v3, "AP"

    iput-object v3, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 53
    iput-object v6, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 54
    iget-object v3, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 55
    iget-object v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sget v2, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-lt v1, v2, :cond_2

    .line 56
    iget-object v0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public allCookiesReceived()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_1

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 24
    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 26
    if-ne v4, v3, :cond_0

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    const-string v4, "Sensor ID: "

    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v4, " Waiting for cookie: "

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    const-string v3, "BiometricService/PreAuthInfo"

    .line 56
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string p0, "Remaining cookies: "

    .line 64
    const-string v2, "BiometricService/AuthSession"

    .line 66
    invoke-static {v1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    if-nez v1, :cond_2

    .line 71
    move v0, v3

    .line 72
    :cond_2
    return v0
.end method

.method public final binderDied()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Binder died, session: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BiometricService/AuthSession"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    .line 22
    check-cast p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;

    .line 24
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;

    .line 31
    iget-wide v2, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;->f$1:J

    .line 33
    const/4 p0, 0x0

    .line 34
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;-><init>(IJLjava/lang/Object;)V

    .line 37
    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 39
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method

.method public final cancelAllSensors()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final cancelAllSensors(Ljava/util/function/Function;)V
    .locals 9

    .line 2
    const-string v0, "BiometricService/AuthSession"

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 3
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling sensorId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 6
    iget v7, v2, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    .line 7
    iget-object v7, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v7, v3, v4, v5, v6}, Landroid/hardware/biometrics/IBiometricAuthenticator;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 8
    iput v8, v2, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    const-string v2, "Unable to cancel authentication"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final destroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 3
    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 5
    iget-object v3, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mShowDialogWatchdog:Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

    .line 7
    iget-object v4, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v3, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object v4

    .line 18
    check-cast v3, Ljava/util/HashMap;

    .line 20
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/util/Pair;

    .line 26
    if-nez v3, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v3, "closeSession: no session info with "

    .line 33
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    const-string v1, "SemBiometricSysUiWrapper"

    .line 45
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v4, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    move-result-object v1

    .line 55
    check-cast v4, Ljava/util/HashMap;

    .line 57
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 62
    check-cast v1, Ljava/lang/Integer;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 67
    move-result v1

    .line 68
    const-wide/16 v2, 0x3e8

    .line 70
    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 72
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(IJ)V

    .line 75
    :goto_0
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 78
    move-result-object v0

    .line 79
    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 81
    long-to-int v1, v1

    .line 82
    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    .line 84
    iget-object v2, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 92
    if-eqz v2, :cond_2

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    move-result-wide v3

    .line 98
    iput-wide v3, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 100
    const-string v3, "E"

    .line 102
    iput-object v3, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 104
    iput p0, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 106
    monitor-enter v0

    .line 107
    :try_start_0
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 121
    move-result p0

    .line 122
    sget v2, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    .line 124
    if-le p0, v2, :cond_1

    .line 126
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    .line 128
    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    goto :goto_1

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    goto :goto_2

    .line 135
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    .line 138
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 141
    goto :goto_3

    .line 142
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    throw p0

    .line 144
    :cond_2
    :goto_3
    return-void
.end method

.method public final goToInitialState()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    const/16 v0, 0x9

    .line 18
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 20
    new-array v5, v2, [I

    .line 22
    iput-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 24
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 26
    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 28
    iget v8, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 30
    iget-wide v9, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    .line 32
    iget-object v11, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    .line 34
    iget-wide v12, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZIJLjava/lang/String;J)V

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 44
    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 52
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthSession;->mUseSwitchingMode:Z

    .line 54
    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 58
    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v1

    .line 64
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 76
    iget v4, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 78
    const/4 v5, 0x2

    .line 79
    if-ne v4, v5, :cond_1

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    move-object v3, v0

    .line 87
    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 89
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Lcom/android/server/biometrics/BiometricSensor;Z)V

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Z)V

    .line 96
    :goto_1
    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 99
    :goto_2
    return-void

    .line 100
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 102
    const-string v0, "No authenticators requested"

    .line 104
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p0
.end method

.method public final hasAuthenticatedAndConfirmed()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 3
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    and-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 15
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 18
    move-result v0

    .line 19
    and-int/lit8 v0, v0, 0x40

    .line 21
    if-eqz v0, :cond_1

    .line 23
    :goto_0
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, v2

    .line 26
    :goto_1
    if-eqz v0, :cond_2

    .line 28
    return v2

    .line 29
    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 31
    const/4 v3, -0x1

    .line 32
    if-eq v0, v3, :cond_3

    .line 34
    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 36
    const/4 v0, 0x7

    .line 37
    if-ne p0, v0, :cond_3

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move v1, v2

    .line 41
    :goto_2
    return v1
.end method

.method public final isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z
    .locals 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 9
    const/16 v1, 0x8

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x4

    .line 14
    iget v0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 16
    if-eq v0, v4, :cond_0

    .line 18
    if-eq v0, v1, :cond_0

    .line 20
    move v0, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    if-eqz v0, :cond_3

    .line 25
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 27
    check-cast p1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;

    .line 29
    iget-object v4, p1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;->this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    .line 31
    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 33
    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 35
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 37
    if-eq p1, v1, :cond_1

    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    move p1, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object p1, v4, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 50
    check-cast p1, Ljava/util/HashMap;

    .line 52
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 58
    iget-object p1, v4, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    .line 60
    invoke-virtual {v4, v2, p1, v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 63
    :cond_2
    iget-object p1, v4, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v0

    .line 69
    check-cast p1, Ljava/util/HashMap;

    .line 71
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/Boolean;

    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    move-result p1

    .line 81
    :goto_1
    if-nez p1, :cond_4

    .line 83
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 85
    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    .line 87
    if-eqz p0, :cond_3

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move v2, v3

    .line 91
    :cond_4
    :goto_2
    return v2
.end method

.method public final isCrypto()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long p0, v0, v2

    .line 7
    if-eqz p0, :cond_0

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

.method public final onCancelAuthSession(Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "BiometricService/AuthSession"

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo p0, "onCancelAuthSession after successful auth"

    .line 13
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v2

    .line 17
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    .line 19
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eq v0, v2, :cond_2

    .line 24
    const/4 v4, 0x2

    .line 25
    if-eq v0, v4, :cond_2

    .line 27
    const/4 v4, 0x3

    .line 28
    if-ne v0, v4, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v0, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    move v0, v2

    .line 34
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 37
    if-eqz v0, :cond_3

    .line 39
    if-nez p1, :cond_3

    .line 41
    return v3

    .line 42
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 44
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 46
    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    .line 49
    move-result v0

    .line 50
    const/4 v4, 0x5

    .line 51
    invoke-interface {p1, v0, v4, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 54
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 56
    iget-wide v4, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 58
    invoke-virtual {p1, v4, v5}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->hideAuthenticationDialog(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return v2

    .line 62
    :catch_0
    move-exception p0

    .line 63
    const-string p1, "Remote exception"

    .line 65
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    return v3
.end method

.method public final onErrorReceived(IIII)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    move/from16 v4, p4

    .line 11
    const/4 v5, 0x0

    .line 12
    const-string/jumbo v6, "onErrorReceived sensor: "

    .line 15
    const-string v7, " error: "

    .line 17
    const-string v8, "BiometricService/AuthSession"

    .line 19
    invoke-static {v1, v3, v6, v7, v8}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 24
    iget-object v6, v6, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 26
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v6

    .line 30
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v7

    .line 34
    const/4 v9, 0x1

    .line 35
    if-eqz v7, :cond_1

    .line 37
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Lcom/android/server/biometrics/BiometricSensor;

    .line 43
    iget v7, v7, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 45
    if-ne v7, v2, :cond_0

    .line 47
    move v6, v9

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v6, v5

    .line 50
    :goto_0
    if-nez v6, :cond_2

    .line 52
    const-string v0, "Unknown/expired cookie: "

    .line 54
    invoke-static {v2, v0, v8}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    return v5

    .line 58
    :cond_2
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 60
    iget-object v6, v6, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 62
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v6

    .line 66
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v7

    .line 70
    const/4 v10, 0x5

    .line 71
    const/4 v11, 0x3

    .line 72
    if-eqz v7, :cond_4

    .line 74
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Lcom/android/server/biometrics/BiometricSensor;

    .line 80
    iget v12, v7, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 82
    if-ne v12, v11, :cond_3

    .line 84
    iget v11, v7, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 86
    if-ne v2, v11, :cond_3

    .line 88
    new-instance v11, Ljava/lang/StringBuilder;

    .line 90
    const-string v12, "Sensor("

    .line 92
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget v12, v7, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 97
    const-string v13, ") now in STATE_STOPPED"

    .line 99
    const-string v14, "BiometricService/Sensor"

    .line 101
    invoke-static {v11, v12, v13, v14}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    iput v10, v7, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    iget v2, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 109
    const/4 v6, -0x1

    .line 110
    if-eq v2, v6, :cond_5

    .line 112
    const-string/jumbo v0, "onErrorReceived after successful auth (ignoring)"

    .line 115
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v5

    .line 119
    :cond_5
    const/4 v2, 0x7

    .line 120
    const/16 v6, 0x9

    .line 122
    if-eq v3, v2, :cond_7

    .line 124
    if-ne v3, v6, :cond_6

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    move v2, v5

    .line 128
    goto :goto_3

    .line 129
    :cond_7
    :goto_2
    move v2, v9

    .line 130
    :goto_3
    if-eqz v2, :cond_8

    .line 132
    new-instance v7, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;

    .line 134
    invoke-direct {v7, v0, v1, v5}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/AuthSession;II)V

    .line 137
    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    .line 140
    :cond_8
    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    .line 142
    iput v4, v0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 144
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    .line 147
    move-result v1

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v12, "onErrorReceived: "

    .line 153
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    iget v12, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 158
    invoke-static {v7, v12, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 161
    iget v7, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 163
    if-eq v7, v9, :cond_f

    .line 165
    const/4 v12, 0x2

    .line 166
    if-eq v7, v12, :cond_c

    .line 168
    if-eq v7, v11, :cond_c

    .line 170
    const/4 v11, 0x4

    .line 171
    if-eq v7, v11, :cond_b

    .line 173
    const/4 v11, 0x6

    .line 174
    if-eq v7, v11, :cond_c

    .line 176
    if-eq v7, v6, :cond_a

    .line 178
    const/16 v1, 0xa

    .line 180
    if-eq v7, v1, :cond_9

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    const-string v2, "Unhandled error state, mState: "

    .line 186
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 191
    invoke-static {v1, v0, v8}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 194
    goto/16 :goto_4

    .line 196
    :cond_9
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 198
    iget-wide v2, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 200
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->hideAuthenticationDialog(J)V

    .line 203
    return v9

    .line 204
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    const-string v2, "Biometric canceled, ignoring from state: "

    .line 208
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 213
    invoke-static {v1, v0, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 216
    goto :goto_4

    .line 217
    :cond_b
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 219
    invoke-interface {v2, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 222
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 224
    iget-wide v2, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 226
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->hideAuthenticationDialog(J)V

    .line 229
    return v9

    .line 230
    :cond_c
    iget-object v7, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 232
    sget-boolean v8, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 234
    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 237
    move-result v7

    .line 238
    invoke-static {v7}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    .line 241
    move-result v7

    .line 242
    if-eqz v7, :cond_d

    .line 244
    if-eqz v2, :cond_d

    .line 246
    iput v6, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 248
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 250
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->onBiometricError(III)V

    .line 253
    goto :goto_4

    .line 254
    :cond_d
    if-ne v3, v10, :cond_e

    .line 256
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 258
    iget-wide v5, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 260
    invoke-virtual {v2, v5, v6}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->hideAuthenticationDialog(J)V

    .line 263
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 265
    invoke-interface {v0, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 268
    return v9

    .line 269
    :cond_e
    const/16 v2, 0x8

    .line 271
    iput v2, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 273
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 275
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->onBiometricError(III)V

    .line 278
    goto :goto_4

    .line 279
    :cond_f
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 281
    sget-boolean v7, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 283
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 286
    move-result v2

    .line 287
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_10

    .line 293
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 295
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 298
    move-result v1

    .line 299
    and-int/lit16 v1, v1, -0x8000

    .line 301
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 303
    invoke-virtual {v2, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 306
    iput v6, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 308
    new-array v9, v5, [I

    .line 310
    iput-object v9, v0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 312
    iget-object v7, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 314
    iget-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 316
    iget v12, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 318
    iget-wide v13, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    .line 320
    iget-object v15, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    .line 322
    iget-wide v0, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 324
    const/4 v10, 0x1

    .line 325
    const/4 v11, 0x0

    .line 326
    move-wide/from16 v16, v0

    .line 328
    invoke-virtual/range {v7 .. v17}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZIJLjava/lang/String;J)V

    .line 331
    :goto_4
    return v5

    .line 332
    :cond_10
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 334
    invoke-interface {v0, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 337
    return v9
.end method

.method public final pauseSensorIfSupported(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 22
    iget v3, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 24
    if-ne p1, v3, :cond_0

    .line 26
    iget v0, v1, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "Unknown sensor: "

    .line 31
    const-string v1, "BiometricService/AuthSession"

    .line 33
    invoke-static {p1, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    move v0, v2

    .line 37
    :goto_0
    const/4 v1, 0x4

    .line 38
    const/4 v3, 0x1

    .line 39
    if-ne v0, v1, :cond_2

    .line 41
    move v0, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v0, v2

    .line 44
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    .line 47
    move-result v1

    .line 48
    const/16 v4, 0x8

    .line 50
    if-ne v1, v4, :cond_3

    .line 52
    if-nez v0, :cond_3

    .line 54
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-direct {v0, p1, v1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;-><init>(II)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    .line 63
    return v3

    .line 64
    :cond_3
    return v2
.end method

.method public final sensorIdToModality(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 21
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 23
    if-ne p1, v1, :cond_0

    .line 25
    iget p0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 27
    return p0

    .line 28
    :cond_1
    const-string p0, "Unknown sensor: "

    .line 30
    const-string v0, "BiometricService/AuthSession"

    .line 32
    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final setSensorsToStateWaitingForCookie(Lcom/android/server/biometrics/BiometricSensor;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    const/4 v3, 0x5

    if-eqz p2, :cond_0

    if-eq v2, v3, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Skip retry because sensor: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 4
    :cond_1
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v14, v2, 0x1

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v5

    .line 6
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v7, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 7
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v15

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 8
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result v16

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 9
    iget-boolean v2, v2, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    .line 10
    iput v14, v1, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 11
    iget-object v4, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    move/from16 v17, v2

    invoke-interface/range {v4 .. v17}, Landroid/hardware/biometrics/IBiometricAuthenticator;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V

    .line 12
    iput v3, v1, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 13
    iput-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

    return-void
.end method

.method public final setSensorsToStateWaitingForCookie(Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 14
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 15
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 16
    const-string v4, "BiometricService/AuthSession"

    const/4 v5, 0x5

    iget v6, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eqz p1, :cond_0

    if-eq v3, v5, :cond_0

    const/4 v7, 0x4

    if-eq v3, v7, :cond_0

    .line 17
    const-string v2, "Skip retry because sensor: "

    const-string v5, " is: "

    .line 18
    invoke-static {v6, v3, v2, v5, v4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 19
    iput v5, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 20
    :cond_1
    iget-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v5, 0x7ffffffe

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 21
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v8

    .line 22
    const-string/jumbo v7, "waiting for cooking for sensor: "

    .line 23
    invoke-static {v6, v7, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v9, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v10, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v12, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v13, v0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v14, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 25
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v18

    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 26
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result v19

    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    .line 27
    iget-boolean v4, v4, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    .line 28
    iput v3, v2, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 29
    iget-object v15, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    move-wide/from16 v16, v6

    move-object v7, v15

    move-wide/from16 v15, v16

    move/from16 v17, v3

    move/from16 v20, v4

    invoke-interface/range {v7 .. v20}, Landroid/hardware/biometrics/IBiometricAuthenticator;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V

    .line 30
    iput v5, v2, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final startAllPreparedSensors(Ljava/util/function/Function;)V
    .locals 5

    .line 1
    const-string v0, "BiometricService/AuthSession"

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 23
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 35
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v3, "Starting sensor: "

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v3, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 59
    if-nez v2, :cond_1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v3, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 64
    invoke-interface {v3, v2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->startPreparedClient(I)V

    .line 67
    const/4 v2, 0x3

    .line 68
    iput v2, v1, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    const-string v4, "Unable to start prepared client, sensor: "

    .line 76
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    return-void
.end method

.method public final statsModality()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 22
    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 24
    and-int/lit8 v2, v1, 0x2

    .line 26
    if-eqz v2, :cond_1

    .line 28
    or-int/lit8 v0, v0, 0x1

    .line 30
    :cond_1
    and-int/lit8 v2, v1, 0x4

    .line 32
    if-eqz v2, :cond_2

    .line 34
    or-int/lit8 v0, v0, 0x2

    .line 36
    :cond_2
    and-int/lit8 v1, v1, 0x8

    .line 38
    if-eqz v1, :cond_0

    .line 40
    or-int/lit8 v0, v0, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "State: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", cancelled: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean v1, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", isCrypto: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", PreAuthInfo: "

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", requestId: "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
