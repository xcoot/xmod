.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;IIII)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$3:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$1:I

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$2:I

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$3:I

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mSysUiDisplayStateCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-interface {v0, v1, v2, p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;->onFinish(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const-string p0, "FingerprintService.Ext"

    .line 25
    .line 26
    const-string/jumbo v0, "onFinishDisplayState: failed to invoke onFinishCallback"

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;

    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$1:I

    .line 36
    .line 37
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$2:I

    .line 38
    .line 39
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;->f$3:I

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mSysUiDisplayStateCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    :try_start_1
    invoke-interface {v0, v1, v2, p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;->onStart(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_1
    const-string p0, "FingerprintService.Ext"

    .line 52
    .line 53
    const-string/jumbo v0, "onStartDisplayState: failed to invoke onStartCallback"

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_1
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
