.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mHalCallbackEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 5
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 7
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mUserId:I

    .line 9
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEnrollListeners:Ljava/util/List;

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    .line 29
    invoke-interface {v2, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;->onEnrollFinished(II)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
