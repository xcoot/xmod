.class public final Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;


# instance fields
.field public final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

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

    .line 3
    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 19
    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 3
    const/16 v0, 0x20

    .line 5
    new-array v1, v0, [B

    .line 7
    fill-array-data v1, :array_0

    .line 10
    new-array v2, v0, [B

    .line 12
    fill-array-data v2, :array_1

    .line 15
    new-array v3, v0, [B

    .line 17
    fill-array-data v3, :array_2

    .line 20
    new-array v0, v0, [B

    .line 22
    fill-array-data v0, :array_3

    .line 25
    filled-new-array {v1, v2, v3, v0}, [[B

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    return-object p0

    .line 37
    :array_0
    .array-data 1
        -0x6dt
        0x5bt
        -0xet
        0x43t
        0x43t
        0x5et
        0x6ct
        -0x10t
        -0x76t
        0x24t
        0x1ct
        -0x3dt
        -0x15t
        -0x1bt
        -0x16t
        -0x6at
        -0x19t
        -0x5et
        -0x27t
        0x68t
        -0x32t
        0x62t
        0x1at
        -0x4et
        0x47t
        0x68t
        -0x50t
        -0x5ct
        0x2ft
        0x4at
        0x51t
        -0x49t
    .end array-data

    .line 57
    :array_1
    .array-data 1
        0x7t
        -0x69t
        0x10t
        -0x29t
        -0x6dt
        0xat
        -0x25t
        -0x10t
        0x7t
        0x54t
        -0x44t
        -0x7bt
        -0x66t
        0x1ft
        -0x2bt
        -0x40t
        0x71t
        -0x68t
        0xft
        -0x60t
        -0x75t
        0x35t
        0x28t
        -0x33t
        -0x1dt
        -0x39t
        -0x65t
        -0x44t
        -0xbt
        -0x73t
        -0xet
        0x4at
    .end array-data

    .line 77
    :array_2
    .array-data 1
        -0x4at
        -0x1bt
        0x5dt
        0x77t
        -0x6bt
        -0x45t
        -0x51t
        -0x30t
        0x11t
        -0x5t
        -0x6bt
        -0x5dt
        -0x4at
        -0x2dt
        -0x6bt
        0x4bt
        -0xat
        0x6ct
        0x34t
        -0x62t
        0x14t
        -0x31t
        0x10t
        0x7ft
        0x3bt
        0x72t
        0x3t
        0x2ct
        -0x1dt
        -0x32t
        -0x4ct
        0x48t
    .end array-data

    :array_3
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
    .locals 4

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 3
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 7
    const-string/jumbo v2, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    .line 10
    const-string/jumbo v3, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    .line 13
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    .line 4
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

    .line 4
    return-void
.end method

.method public final onAcquired(IIIJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string p1, "AidlResponseHandler"

    .line 8
    const-string/jumbo p4, "onAcquired"

    .line 11
    invoke-static {p1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-class p1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 16
    new-instance p4, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;

    .line 18
    invoke-direct {p4, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;-><init>(II)V

    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 25
    return-void
.end method

.method public final onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x1

    .line 3
    if-lez p3, :cond_0

    .line 5
    move p4, p2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move p4, p1

    .line 8
    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    new-array v1, v0, [B

    .line 14
    :goto_1
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v2

    .line 18
    if-ge p1, v2, :cond_1

    .line 20
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Byte;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 29
    move-result v2

    .line 30
    aput-byte v2, v1, p1

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    if-eqz p4, :cond_3

    .line 37
    if-le v0, p2, :cond_2

    .line 39
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 41
    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/4 p1, -0x1

    .line 57
    if-ne p3, p1, :cond_4

    .line 59
    new-instance p1, Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 61
    invoke-direct {p1}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    .line 64
    new-instance p2, Landroid/hardware/biometrics/face/BaseFrame;

    .line 66
    invoke-direct {p2}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    .line 69
    iput-object p2, p1, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 71
    const/16 p3, 0x17

    .line 73
    iput-byte p3, p2, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 75
    const/16 p3, 0x3fa

    .line 77
    iput p3, p2, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 79
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 81
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    .line 84
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFailed()V

    .line 89
    :goto_2
    return-void
.end method

.method public final onEnrollResult(IIIJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentProgress(II)V

    .line 6
    return-void
.end method

.method public final onEnumerate(IJLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p1

    .line 5
    new-array p1, p1, [I

    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result p3

    .line 12
    if-ge p2, p3, :cond_0

    .line 14
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Ljava/lang/Integer;

    .line 20
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result p3

    .line 24
    aput p3, p1, p2

    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentsEnumerated([I)V

    .line 34
    return-void
.end method

.method public final onError(IIIJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(II)V

    .line 6
    return-void
.end method

.method public final onRemoved(IJLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p1

    .line 5
    new-array p1, p1, [I

    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result p3

    .line 12
    if-ge p2, p3, :cond_0

    .line 14
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Ljava/lang/Integer;

    .line 20
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result p3

    .line 24
    aput p3, p1, p2

    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentsRemoved([I)V

    .line 34
    return-void
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    const-string/jumbo v3, "sehOnPreviewUpdated: skip after stop"

    .line 10
    const-string v4, "] "

    .line 12
    const-string/jumbo v5, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    .line 15
    const-string/jumbo v6, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    .line 18
    const-string v7, "SemFace"

    .line 20
    const-string v8, ","

    .line 22
    const-string v9, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    .line 24
    const/4 v10, 0x0

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 28
    const-string v3, "android.hidl.base@1.0::IBase"

    .line 30
    sparse-switch p1, :sswitch_data_0

    .line 33
    goto/16 :goto_6

    .line 35
    :sswitch_0
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 41
    goto/16 :goto_6

    .line 43
    :sswitch_1
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 59
    goto/16 :goto_6

    .line 61
    :sswitch_2
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 70
    goto/16 :goto_6

    .line 72
    :sswitch_3
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    goto/16 :goto_6

    .line 77
    :sswitch_4
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->getHashChain()Ljava/util/ArrayList;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 87
    new-instance v1, Landroid/os/HwBlob;

    .line 89
    const/16 v3, 0x10

    .line 91
    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 97
    move-result v3

    .line 98
    const-wide/16 v4, 0x8

    .line 100
    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 103
    const-wide/16 v4, 0xc

    .line 105
    invoke-virtual {v1, v4, v5, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 108
    new-instance v4, Landroid/os/HwBlob;

    .line 110
    mul-int/lit8 v5, v3, 0x20

    .line 112
    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 115
    :goto_0
    if-ge v10, v3, :cond_1

    .line 117
    mul-int/lit8 v5, v10, 0x20

    .line 119
    int-to-long v5, v5

    .line 120
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v7

    .line 124
    check-cast v7, [B

    .line 126
    if-eqz v7, :cond_0

    .line 128
    array-length v8, v7

    .line 129
    const/16 v9, 0x20

    .line 131
    if-ne v8, v9, :cond_0

    .line 133
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 136
    add-int/lit8 v10, v10, 0x1

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 141
    const-string v1, "Array element is not of the expected length"

    .line 143
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    throw v0

    .line 147
    :cond_1
    const-wide/16 v5, 0x0

    .line 149
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 152
    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 158
    goto/16 :goto_6

    .line 160
    :sswitch_5
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 166
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 172
    goto/16 :goto_6

    .line 174
    :sswitch_6
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 189
    goto/16 :goto_6

    .line 191
    :sswitch_7
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->interfaceChain()Ljava/util/ArrayList;

    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 201
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 207
    goto/16 :goto_6

    .line 209
    :pswitch_0
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 215
    move-result-wide v2

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 219
    move-result v5

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 223
    move-result v6

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 227
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    .line 234
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    const-string/jumbo v9, "sehOnAuthenticatedFromMemory: ["

    .line 250
    invoke-static {v6, v5, v9, v4, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    move-result-object v4

    .line 254
    invoke-static {v4, v2, v3, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 257
    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 259
    if-nez v2, :cond_2

    .line 261
    const-string/jumbo v0, "sehOnAuthenticatedFromMemory: auth preview mode is off"

    .line 264
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    goto/16 :goto_6

    .line 269
    :cond_2
    if-nez v5, :cond_3

    .line 271
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendFailed()V

    .line 274
    goto/16 :goto_6

    .line 276
    :cond_3
    if-nez v1, :cond_4

    .line 278
    const-string/jumbo v0, "sehOnAuthenticatedFromMemory: result data is null"

    .line 281
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    goto/16 :goto_6

    .line 286
    :cond_4
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 288
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;

    .line 290
    invoke-direct {v3, v0, v1, v5}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/os/HidlMemory;I)V

    .line 293
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    goto/16 :goto_6

    .line 298
    :catch_0
    move-exception v0

    .line 299
    new-instance v1, Ljava/lang/RuntimeException;

    .line 301
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 304
    throw v1

    .line 305
    :pswitch_1
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {v4}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    .line 315
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 319
    move-result v13

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 323
    move-result v14

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 327
    move-result v5

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 331
    move-result v15

    .line 332
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 340
    move-result-object v12

    .line 341
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    const-string/jumbo v0, "sehOnPreviewFrame: "

    .line 347
    invoke-static {v13, v14, v0, v8, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object v0

    .line 364
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-boolean v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 369
    if-nez v0, :cond_5

    .line 371
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    goto :goto_1

    .line 375
    :cond_5
    if-nez v4, :cond_6

    .line 377
    const-string/jumbo v0, "sehOnPreviewFrame: preview data is null"

    .line 380
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    goto :goto_1

    .line 384
    :cond_6
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 386
    if-eqz v0, :cond_7

    .line 388
    const-string/jumbo v0, "sehOnPreviewFrame: previous preview is not processed yet"

    .line 391
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    goto :goto_1

    .line 395
    :cond_7
    invoke-static {v4}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    .line 398
    move-result-object v0

    .line 399
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 401
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 403
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;

    .line 405
    move-object v11, v1

    .line 406
    move/from16 v16, v5

    .line 408
    invoke-direct/range {v11 .. v16}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;IIII)V

    .line 411
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    :goto_1
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 420
    goto/16 :goto_6

    .line 422
    :catch_1
    move-exception v0

    .line 423
    new-instance v1, Ljava/lang/RuntimeException;

    .line 425
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 428
    throw v1

    .line 429
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 435
    move-result-wide v2

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 439
    move-result v5

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 443
    move-result v6

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 447
    move-result-object v9

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 451
    move-result-object v1

    .line 452
    const-string/jumbo v11, "sehOnAuthenticated: ["

    .line 455
    invoke-static {v6, v5, v11, v4, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    move-result-object v4

    .line 459
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 468
    move-result v8

    .line 469
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    move-result-object v4

    .line 476
    const-string v8, ""

    .line 478
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 484
    move-result v4

    .line 485
    if-lez v4, :cond_9

    .line 487
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 490
    move-result v4

    .line 491
    new-array v4, v4, [B

    .line 493
    sput-object v4, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 495
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 498
    move-result v4

    .line 499
    if-ge v10, v4, :cond_8

    .line 501
    sget-object v4, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 503
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    move-result-object v8

    .line 507
    check-cast v8, Ljava/lang/Byte;

    .line 509
    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    .line 512
    move-result v8

    .line 513
    aput-byte v8, v4, v10

    .line 515
    add-int/lit8 v10, v10, 0x1

    .line 517
    goto :goto_2

    .line 518
    :cond_8
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 520
    if-eqz v4, :cond_9

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    .line 524
    const-string/jumbo v8, "fidoResultData("

    .line 527
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 533
    move-result v1

    .line 534
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, ") = "

    .line 539
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    sget-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 544
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    move-result-object v1

    .line 555
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_9
    move-object/from16 v1, p0

    .line 560
    move v4, v5

    .line 561
    move v5, v6

    .line 562
    move-object v6, v9

    .line 563
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 566
    goto/16 :goto_6

    .line 568
    :pswitch_3
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 574
    move-result-object v4

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 578
    move-result v13

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 582
    move-result v14

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 586
    move-result v5

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 590
    move-result v15

    .line 591
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 593
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 599
    move-result-object v12

    .line 600
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    const-string/jumbo v0, "sehOnPreviewUpdated: "

    .line 606
    invoke-static {v13, v14, v0, v8, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    move-result-object v0

    .line 623
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-boolean v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 628
    if-nez v0, :cond_a

    .line 630
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    goto :goto_5

    .line 634
    :cond_a
    if-eqz v4, :cond_e

    .line 636
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 639
    move-result v0

    .line 640
    if-nez v0, :cond_b

    .line 642
    goto :goto_4

    .line 643
    :cond_b
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 645
    if-eqz v0, :cond_c

    .line 647
    const-string/jumbo v0, "sehOnPreviewUpdated: previous preview is not processed yet"

    .line 650
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    goto :goto_5

    .line 654
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 657
    move-result v0

    .line 658
    new-array v0, v0, [B

    .line 660
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 662
    move v0, v10

    .line 663
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 666
    move-result v1

    .line 667
    if-ge v0, v1, :cond_d

    .line 669
    iget-object v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 671
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 674
    move-result-object v3

    .line 675
    check-cast v3, Ljava/lang/Byte;

    .line 677
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    .line 680
    move-result v3

    .line 681
    aput-byte v3, v1, v0

    .line 683
    add-int/lit8 v0, v0, 0x1

    .line 685
    goto :goto_3

    .line 686
    :cond_d
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 688
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;

    .line 690
    move-object v11, v1

    .line 691
    move/from16 v16, v5

    .line 693
    invoke-direct/range {v11 .. v16}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;IIII)V

    .line 696
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    goto :goto_5

    .line 700
    :cond_e
    :goto_4
    const-string/jumbo v0, "sehOnPreviewUpdated: preview data is null or size is 0"

    .line 703
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_5
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 712
    goto/16 :goto_6

    .line 714
    :pswitch_4
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 720
    move-result-wide v1

    .line 721
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 723
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    const-string v3, "AidlResponseHandler"

    .line 728
    const-string/jumbo v4, "onLockoutChanged"

    .line 731
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 736
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 738
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;

    .line 740
    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V

    .line 743
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 746
    goto/16 :goto_6

    .line 748
    :pswitch_5
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 754
    move-result-wide v2

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    .line 758
    move-result-object v4

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 762
    move-result v1

    .line 763
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onEnumerate(IJLjava/util/ArrayList;)V

    .line 766
    goto/16 :goto_6

    .line 768
    :pswitch_6
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 774
    move-result-wide v2

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    .line 778
    move-result-object v4

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 782
    move-result v1

    .line 783
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onRemoved(IJLjava/util/ArrayList;)V

    .line 786
    goto :goto_6

    .line 787
    :pswitch_7
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 793
    move-result-wide v5

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 797
    move-result v2

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 801
    move-result v3

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 805
    move-result v4

    .line 806
    move-object/from16 v1, p0

    .line 808
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onError(IIIJ)V

    .line 811
    goto :goto_6

    .line 812
    :pswitch_8
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 818
    move-result-wide v5

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 822
    move-result v2

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 826
    move-result v3

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 830
    move-result v4

    .line 831
    move-object/from16 v1, p0

    .line 833
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onAcquired(IIIJ)V

    .line 836
    goto :goto_6

    .line 837
    :pswitch_9
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 843
    move-result-wide v2

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 847
    move-result v4

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 851
    move-result v5

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 855
    move-result-object v6

    .line 856
    move-object/from16 v1, p0

    .line 858
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 861
    goto :goto_6

    .line 862
    :pswitch_a
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 868
    move-result-wide v5

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 872
    move-result v2

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 876
    move-result v3

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 880
    move-result v4

    .line 881
    move-object/from16 v1, p0

    .line 883
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onEnrollResult(IIIJ)V

    .line 886
    :goto_6
    return-void

    .line 887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 913
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
    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
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
    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback@Stub"

    .line 4
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
