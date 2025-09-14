.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;
.implements Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;
.implements Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onUserStarted(IILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    .line 6
    .line 7
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 8
    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->handleUserChanged(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onUserStopped()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;

    .line 6
    .line 7
    const/16 v0, -0x2710

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter;->mSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 13
    .line 14
    return-void
.end method
