.class public final synthetic Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$2;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    .line 10
    iget p0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->f$1:I

    .line 12
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 14
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 16
    iget-object v0, v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 18
    const/16 v1, 0xf

    .line 20
    const-wide/16 v2, -0x1

    .line 22
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->resetLockoutFor(IIJ)V

    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 28
    check-cast v0, Lcom/android/server/biometrics/BiometricService$2;

    .line 30
    iget p0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;->f$1:I

    .line 32
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 34
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    .line 36
    if-nez v0, :cond_0

    .line 38
    const-string p0, "BiometricService"

    .line 40
    const-string/jumbo v0, "handleOnSwitchingSensorPressed: AuthSession is null"

    .line 43
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    goto :goto_3

    .line 47
    :cond_0
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 49
    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v1

    .line 55
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 67
    :try_start_0
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 69
    const/4 v4, 0x0

    .line 70
    if-ne v3, p0, :cond_1

    .line 72
    invoke-virtual {v0, v2, v4}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Lcom/android/server/biometrics/BiometricSensor;Z)V

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception v3

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 80
    if-eqz v3, :cond_3

    .line 82
    iget-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    .line 84
    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    .line 86
    iget-wide v6, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    .line 88
    iget v8, v2, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 90
    const/4 v9, 0x4

    .line 91
    if-eq v8, v9, :cond_2

    .line 93
    iget-object v8, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 95
    invoke-interface {v8, v3, v5, v6, v7}, Landroid/hardware/biometrics/IBiometricAuthenticator;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 98
    iput v9, v2, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 100
    :cond_2
    iput v4, v2, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 102
    iput v4, v2, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 104
    :cond_3
    :goto_1
    const/4 v3, 0x5

    .line 105
    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 108
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v5, "onSwitchingSensorPressed, sensor: "

    .line 113
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    const-string v4, "BiometricService/AuthSession"

    .line 125
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    goto :goto_0

    .line 129
    :cond_4
    :goto_3
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
