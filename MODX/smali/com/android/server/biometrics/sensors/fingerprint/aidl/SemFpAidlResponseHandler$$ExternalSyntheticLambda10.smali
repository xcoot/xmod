.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda10;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda10;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda10;->f$1:I

    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda10;->f$2:I

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const/4 v2, 0x6

    .line 11
    if-eq v1, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x2712

    .line 16
    const/4 v2, 0x0

    .line 17
    if-ne p0, v1, :cond_2

    .line 19
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mHalCallbackEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 21
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mCaptureEventListeners:Ljava/util/List;

    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 43
    throw v2

    .line 44
    :cond_2
    const/16 v1, 0x2713

    .line 46
    if-ne p0, v1, :cond_4

    .line 48
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mHalCallbackEx:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 50
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mCaptureEventListeners:Ljava/util/List;

    .line 52
    check-cast p0, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 72
    throw v2

    .line 73
    :cond_4
    :goto_0
    return-void
.end method
