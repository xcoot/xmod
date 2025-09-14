.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 10
    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 23
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string p1, "FingerprintAuthenticationClient"

    .line 30
    const-string v1, "Unable to notify context changed"

    .line 32
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_0
    :goto_0
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 37
    check-cast p0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 39
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAwake()Z

    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 45
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 47
    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 49
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->enable()V

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 55
    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 57
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->disable()V

    .line 60
    :goto_1
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    .line 63
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 65
    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 76
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 78
    iget-wide v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    .line 80
    invoke-interface {p0, v1, v2, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 83
    move-result-object p0

    .line 84
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 86
    goto :goto_2

    .line 87
    :catch_1
    move-exception p0

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 91
    iget-wide v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    .line 93
    invoke-interface {p0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 96
    move-result-object p0

    .line 97
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 99
    :goto_2
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 101
    check-cast p0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 103
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAwake()Z

    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_3

    .line 109
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 111
    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 113
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->enable()V

    .line 116
    goto :goto_4

    .line 117
    :cond_3
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    .line 119
    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->disable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    goto :goto_4

    .line 125
    :goto_3
    const-string p1, "FingerprintAuthenticationClient"

    .line 127
    const-string v1, "Remote exception"

    .line 129
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 p0, 0x1

    .line 133
    const/4 p1, 0x0

    .line 134
    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onError(II)V

    .line 137
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 139
    iget v1, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    .line 144
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 146
    invoke-interface {p0, v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 149
    :goto_4
    return-void

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
