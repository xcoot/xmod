.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# instance fields
.field public final mCalibrationColor:Ljava/lang/String;

.field public mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda5;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsCalibrationMode:Z

.field public final mIsKeyguard:Z

.field public final mPackageName:Ljava/lang/String;

.field public mSessionId:I

.field public final mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .line 13
    sget-object v5, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 14
    sget-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;-><init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mHandler:Landroid/os/Handler;

    .line 3
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mToken:Landroid/os/IBinder;

    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsCalibrationMode:Z

    .line 7
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCalibrationColor:Ljava/lang/String;

    .line 8
    const-string/jumbo p3, "com.android.systemui"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsKeyguard:Z

    :cond_0
    const/4 p2, 0x0

    .line 10
    :try_start_0
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SemFpOpticalClient: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerprintService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SemFpOpticalClient: binderDied, "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "FingerprintService"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onError(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda5;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    new-instance p1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "KEY_PACKAGE_NAME"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "KEY_KEYGUARD"

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsKeyguard:Z

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsCalibrationMode:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string/jumbo v0, "nits"

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCalibrationColor:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x1f5

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v0, 0x1f4

    .line 38
    .line 39
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSessionId:I

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final stop()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mToken:Landroid/os/IBinder;

    .line 3
    .line 4
    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "SemFpOpticalClient: stop: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "FingerprintService"

    .line 17
    .line 18
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsCalibrationMode:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x1f5

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/16 v1, 0x1f4

    .line 29
    .line 30
    :goto_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 31
    .line 32
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSessionId:I

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v2, v4, v3, v1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 39
    .line 40
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSessionId:I

    .line 41
    .line 42
    const-wide/16 v1, 0xfa0

    .line 43
    .line 44
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(IJ)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
