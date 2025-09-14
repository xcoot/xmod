.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->unregisterAodController()V

    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mSysUiDisplayBrightnessCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayBrightnessCallback;

    .line 21
    return-void

    .line 22
    :pswitch_1
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->bind()V

    .line 34
    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;

    .line 36
    const/16 v1, 0x76

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    .line 45
    return-void

    .line 46
    :pswitch_2
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 48
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getServiceProvider()Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_0

    .line 54
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 56
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semUpdateTpaAction()V

    .line 59
    :cond_0
    return-void

    .line 60
    :pswitch_3
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 62
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mSysUiDisplayStateCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
