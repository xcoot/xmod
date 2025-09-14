.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;


# instance fields
.field public final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 1
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 18
    .line 19
    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    new-array v2, v0, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    fill-array-data v0, :array_2

    .line 18
    .line 19
    .line 20
    filled-new-array {v1, v2, v0}, [[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        -0x7et
        -0x36t
        -0x27t
        -0x61t
        0x5ft
        -0x15t
        0x2et
        -0x57t
        -0x44t
        -0x2ct
        0x57t
        -0x70t
        0x55t
        -0x13t
        -0xct
        -0x51t
        -0x71t
        -0x15t
        -0x61t
        -0x3at
        0x2t
        -0x5at
        -0x1ct
        -0x7et
        0x7dt
        -0x23t
        0x72t
        0x7dt
        0x25t
        0x4dt
        0x49t
        -0x6ft
    .end array-data

    .line 34
    .line 35
    :array_1
    .array-data 1
        -0x56t
        -0x45t
        0x5ct
        0x3ct
        0x58t
        0x55t
        -0x6et
        -0x29t
        0x1et
        -0x1bt
        0x7bt
        0x77t
        0x29t
        -0x74t
        0x14t
        -0x67t
        0x3dt
        0x77t
        -0x6ft
        0x4dt
        -0x22t
        -0x56t
        0x64t
        -0x4et
        -0x3bt
        0x10t
        -0x66t
        0x60t
        0x2bt
        0x2t
        -0x16t
        0x47t
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v2, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    .line 8
    .line 9
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    .line 2
    .line 3
    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onAcquired(IIJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAcquired(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    new-array p1, p1, [B

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    if-ge p2, p4, :cond_0

    .line 15
    .line 16
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    check-cast p4, Ljava/lang/Byte;

    .line 21
    .line 22
    invoke-virtual {p4}, Ljava/lang/Byte;->byteValue()B

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    aput-byte p4, p1, p2

    .line 27
    .line 28
    add-int/lit8 p2, p2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAuthenticationFailed()V

    .line 44
    .line 45
    .line 46
    :goto_1
    return-void
.end method

.method public final onEnrollResult(IIIJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onEnrollmentProgress(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onEnumerate(IIIJ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroid/hardware/fingerprint/Fingerprint;

    .line 7
    .line 8
    iget p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 9
    .line 10
    int-to-long p4, p4

    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-direct {p2, v0, p1, p4, p5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;

    .line 17
    .line 18
    const/4 p4, 0x1

    .line 19
    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/fingerprint/Fingerprint;II)V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    const-class p3, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 24
    .line 25
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onError(IIJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda11;

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    invoke-direct {v2, v0, p1, p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;III)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    const-class v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Ljava/util/function/Consumer;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onRemoved(IIIJ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroid/hardware/fingerprint/Fingerprint;

    .line 7
    .line 8
    iget p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->mSensorId:I

    .line 9
    .line 10
    int-to-long p4, p4

    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-direct {p2, v0, p1, p4, p5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/fingerprint/Fingerprint;II)V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    const-class p3, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 24
    .line 25
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11

    .line 1
    const-string v3, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    .line 2
    .line 3
    const-string v4, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "android.hidl.base@1.0::IBase"

    .line 10
    .line 11
    sparse-switch p1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :sswitch_0
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :sswitch_1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :sswitch_2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :sswitch_3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :sswitch_4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->getHashChain()Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Landroid/os/HwBlob;

    .line 69
    .line 70
    const/16 v3, 0x10

    .line 71
    .line 72
    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const-wide/16 v5, 0x8

    .line 80
    .line 81
    invoke-virtual {v1, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v5, 0xc

    .line 85
    .line 86
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 87
    .line 88
    .line 89
    new-instance v5, Landroid/os/HwBlob;

    .line 90
    .line 91
    mul-int/lit8 v6, v3, 0x20

    .line 92
    .line 93
    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    if-ge v4, v3, :cond_1

    .line 97
    .line 98
    mul-int/lit8 v6, v4, 0x20

    .line 99
    .line 100
    int-to-long v6, v6

    .line 101
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    check-cast v8, [B

    .line 106
    .line 107
    if-eqz v8, :cond_0

    .line 108
    .line 109
    array-length v9, v8

    .line 110
    const/16 v10, 0x20

    .line 111
    .line 112
    if-ne v9, v10, :cond_0

    .line 113
    .line 114
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    const-string v1, "Array element is not of the expected length"

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_1
    const-wide/16 v3, 0x0

    .line 129
    .line 130
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :sswitch_5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :sswitch_6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :sswitch_7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->interfaceChain()Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 205
    .line 206
    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAcquired(II)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :pswitch_1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 215
    .line 216
    .line 217
    move-result-wide v4

    .line 218
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    move-object v0, p0

    .line 231
    move v1, v2

    .line 232
    move v2, v3

    .line 233
    move v3, v6

    .line 234
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->onEnumerate(IIIJ)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :pswitch_2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 243
    .line 244
    .line 245
    move-result-wide v4

    .line 246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    move-object v0, p0

    .line 259
    move v1, v2

    .line 260
    move v2, v3

    .line 261
    move v3, v6

    .line 262
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->onRemoved(IIIJ)V

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :pswitch_3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 270
    .line 271
    .line 272
    move-result-wide v2

    .line 273
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->onError(IIJ)V

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :pswitch_4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 289
    .line 290
    .line 291
    move-result-wide v2

    .line 292
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    move-object v0, p0

    .line 305
    move-wide v1, v2

    .line 306
    move v3, v4

    .line 307
    move v4, v5

    .line 308
    move-object v5, v6

    .line 309
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 310
    .line 311
    .line 312
    goto :goto_1

    .line 313
    :pswitch_5
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 317
    .line 318
    .line 319
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 328
    .line 329
    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->onAcquired(II)V

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :pswitch_6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 337
    .line 338
    .line 339
    move-result-wide v4

    .line 340
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    move-object v0, p0

    .line 353
    move v1, v2

    .line 354
    move v2, v3

    .line 355
    move v3, v6

    .line 356
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->onEnrollResult(IIIJ)V

    .line 357
    .line 358
    .line 359
    :goto_1
    return-void

    .line 360
    nop

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1
    return-void
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    const-string v0, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprintClientCallback@Stub"

    .line 2
    .line 3
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final unsupportedClientScheduled(Ljava/lang/Class;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " is not supported in the HAL."

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "AidlResponseHandler"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
