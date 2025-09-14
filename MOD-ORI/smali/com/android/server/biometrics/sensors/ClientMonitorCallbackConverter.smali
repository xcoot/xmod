.class public final Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field public final mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

.field public final mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public final mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/face/IFaceServiceReceiver;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 7
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 8
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 11
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 12
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 16
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 17
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method


# virtual methods
.method public final onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    new-instance p4, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p5

    .line 16
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    if-nez p5, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p5

    .line 30
    const-string v0, "KEY_IDENTIFIER_NAME"

    .line 31
    .line 32
    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string p5, "KEY_BIOMETRICS_ID"

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p4, p5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 45
    .line 46
    invoke-interface {p0, p1, p3, p4}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onSemAuthenticationSucceeded(I[BLandroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    sget-object p1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 55
    .line 56
    const/4 p3, 0x0

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, [B

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move-object p1, p3

    .line 67
    :goto_0
    sput-object p3, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 68
    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 72
    .line 73
    check-cast p2, Landroid/hardware/face/Face;

    .line 74
    .line 75
    invoke-interface {p0, p2, p4, p5}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 80
    .line 81
    check-cast p2, Landroid/hardware/face/Face;

    .line 82
    .line 83
    invoke-interface {p0, p2, p4, p5, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onSemAuthenticationSucceeded(Landroid/hardware/face/Face;IZ[B)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 88
    .line 89
    if-eqz p0, :cond_6

    .line 90
    .line 91
    check-cast p2, Landroid/hardware/fingerprint/Fingerprint;

    .line 92
    .line 93
    invoke-interface {p0, p2, p4, p5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    .line 94
    .line 95
    .line 96
    :cond_6
    :goto_1
    return-void
.end method

.method public final onError(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onError(IIII)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-interface {p1, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-interface {p0, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V

    .line 22
    .line 23
    .line 24
    :cond_2
    :goto_0
    return-void
.end method
