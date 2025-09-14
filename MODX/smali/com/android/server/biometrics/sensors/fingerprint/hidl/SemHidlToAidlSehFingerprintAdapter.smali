.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;


# instance fields
.field public final mSession:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;->mSession:Ljava/util/function/Supplier;

    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string p0, "SemHidlToAidlSehFingerprintAdapter"

    .line 3
    const-string v0, "asBinder unsupported in HIDL"

    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;->mSession:Ljava/util/function/Supplier;

    .line 3
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 9
    new-instance v0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    .line 11
    invoke-direct {v0}, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;-><init>()V

    .line 14
    instance-of v1, p1, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    if-eqz p4, :cond_0

    .line 26
    array-length v3, p4

    .line 27
    if-lez v3, :cond_0

    .line 29
    array-length v3, p4

    .line 30
    :goto_0
    if-ge v2, v3, :cond_0

    .line 32
    aget-byte v4, p4, v2

    .line 34
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    check-cast p1, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    .line 46
    new-instance p4, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;

    .line 48
    invoke-direct {p4, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;)V

    .line 51
    invoke-interface {p1, p2, p3, v1, p4}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/16 p0, 0xb

    .line 57
    if-ne p2, p0, :cond_2

    .line 59
    iput v2, v0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 p0, -0x1

    .line 63
    iput p0, v0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    .line 65
    :goto_1
    return-object v0
.end method
