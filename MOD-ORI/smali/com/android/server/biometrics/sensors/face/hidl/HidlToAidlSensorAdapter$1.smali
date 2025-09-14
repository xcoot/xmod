.class public final Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEnrollSuccess()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->scheduleFaceUpdateActiveUserClient(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onHardwareUnavailable()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 5
    .line 6
    const/16 v0, -0x2710

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 9
    .line 10
    return-void
.end method
