.class public final Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final synthetic val$fingerprintSensorProperties:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$SettingObserver$1;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->val$fingerprintSensorProperties:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$SettingObserver$2;Landroid/hardware/face/FaceSensorPropertiesInternal;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->val$fingerprintSensorProperties:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollmentsChanged(IIZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->val$fingerprintSensorProperties:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 10
    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 12
    if-ne p2, v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->this$1:Ljava/lang/Object;

    .line 16
    check-cast p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object p2

    .line 30
    check-cast p0, Ljava/util/HashMap;

    .line 32
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->val$fingerprintSensorProperties:Ljava/lang/Object;

    .line 38
    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 40
    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 42
    if-ne p2, v0, :cond_1

    .line 44
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1$1;->this$1:Ljava/lang/Object;

    .line 46
    check-cast p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;

    .line 48
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$1;->this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 50
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p1

    .line 56
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    move-result-object p2

    .line 60
    check-cast p0, Ljava/util/HashMap;

    .line 62
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
