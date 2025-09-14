.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

.field public final mHalInterfaceVersion:I

.field public mLazySehFingerprint:Ljava/util/function/Function;

.field public final mSession:Landroid/hardware/biometrics/fingerprint/ISession;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/hardware/biometrics/fingerprint/ISession;ILcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 3
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    .line 4
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    .line 5
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 6
    const-string p0, "AidlSession: Ver = "

    const-string p2, "FingerprintService"

    .line 7
    invoke-static {p1, p0, p2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;ILcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSessionAdapter;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;ILcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 16
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mUserId:I

    .line 17
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 18
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mLazySehFingerprint:Ljava/util/function/Function;

    .line 19
    const-string p0, "AidlSession: Ver = 0"

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final hasContextMethods()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 3
    const/4 v0, 0x2

    .line 4
    if-lt p0, v0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method
