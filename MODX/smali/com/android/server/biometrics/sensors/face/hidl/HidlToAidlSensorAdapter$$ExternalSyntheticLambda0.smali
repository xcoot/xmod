.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getIBiometricsFace()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 24
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 26
    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;I)V

    .line 32
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 34
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->getAidlResponseHandler()Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V

    .line 41
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 43
    :goto_0
    return-object v0

    .line 44
    :pswitch_1
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
