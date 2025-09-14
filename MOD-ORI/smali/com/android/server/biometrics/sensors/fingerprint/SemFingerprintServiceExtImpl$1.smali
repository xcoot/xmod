.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayOn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onFinishDisplayState(III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v6, 0x1

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p0

    .line 10
    move v3, p1

    .line 11
    move v4, p2

    .line 12
    move v5, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;IIII)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onStartDisplayState(III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p0

    .line 10
    move v3, p1

    .line 11
    move v4, p2

    .line 12
    move v5, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;IIII)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
