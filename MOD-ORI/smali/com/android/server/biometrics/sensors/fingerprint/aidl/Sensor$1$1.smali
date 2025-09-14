.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

.field public final synthetic val$newUserId:I

.field public final synthetic val$sensorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->val$sensorId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->val$newUserId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onEnrollSuccess()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->val$sensorId:I

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->val$newUserId:I

    .line 10
    .line 11
    invoke-virtual {v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v3, v0, p0, v2, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;III)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onHardwareUnavailable()V
    .locals 2

    .line 1
    const-string v0, "Sensor"

    .line 2
    .line 3
    const-string v1, "Fingerprint sensor hardware unavailable."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 14
    .line 15
    return-void
.end method
