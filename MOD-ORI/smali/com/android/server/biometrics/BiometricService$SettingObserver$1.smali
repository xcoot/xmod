.class public final Lcom/android/server/biometrics/BiometricService$SettingObserver$1;
.super Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field public final synthetic val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;->this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 16
    .line 17
    iget v0, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver$1;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    :goto_0
    const-string p0, "BiometricService"

    .line 34
    .line 35
    const-string p1, "No fingerprint authenticators registered."

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void
.end method
