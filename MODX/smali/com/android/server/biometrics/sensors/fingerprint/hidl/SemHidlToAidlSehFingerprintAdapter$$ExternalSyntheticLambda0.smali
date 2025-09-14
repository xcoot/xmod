.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;

.field public final synthetic f$1:Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;

    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;->f$1:Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    .line 8
    return-void
.end method


# virtual methods
.method public final onValues(Ljava/util/ArrayList;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemHidlToAidlSehFingerprintAdapter$$ExternalSyntheticLambda0;->f$1:Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    .line 8
    iput p2, p0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    .line 10
    if-nez p2, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result p2

    .line 16
    new-array p2, p2, [B

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v1

    .line 23
    if-ge v0, v1, :cond_0

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Byte;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    .line 34
    move-result v1

    .line 35
    aput-byte v1, p2, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-object p2, p0, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->data:[B

    .line 42
    :cond_1
    return-void
.end method
