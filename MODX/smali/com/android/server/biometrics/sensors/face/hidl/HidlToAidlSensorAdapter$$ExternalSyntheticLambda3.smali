.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    .line 6
    return-void
.end method


# virtual methods
.method public final onUserStarted(IILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    .line 5
    iget p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    .line 7
    if-eq p1, p2, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->handleUserChanged(I)V

    .line 12
    :cond_0
    return-void
.end method
