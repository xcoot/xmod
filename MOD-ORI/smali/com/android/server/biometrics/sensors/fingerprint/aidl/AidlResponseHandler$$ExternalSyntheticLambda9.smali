.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

.field public final synthetic f$1:Landroid/hardware/fingerprint/Fingerprint;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;->f$1:Landroid/hardware/fingerprint/Fingerprint;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda9;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 13
    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 18
    .line 19
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onEnrollSuccess()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
