.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Supplier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Supplier;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
