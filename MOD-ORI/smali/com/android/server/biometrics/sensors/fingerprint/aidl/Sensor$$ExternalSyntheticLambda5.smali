.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getHalInstance()Landroid/hardware/biometrics/fingerprint/IFingerprint;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
