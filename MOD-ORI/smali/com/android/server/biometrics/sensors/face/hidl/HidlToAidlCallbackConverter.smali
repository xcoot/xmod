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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

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
    .locals 4

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
    new-array v3, v0, [B

    .line 16
    .line 17
    fill-array-data v3, :array_2

    .line 18
    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_3

    .line 23
    .line 24
    .line 25
    filled-new-array {v1, v2, v3, v0}, [[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
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

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
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

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
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

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
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

    .line 2
    .line 3
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string/jumbo v2, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    .line 11
    .line 12
    .line 13
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    .line 2
    .line 3
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

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onAcquired(IIIJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p1, "AidlResponseHandler"

    .line 7
    .line 8
    const-string/jumbo p4, "onAcquired"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-class p1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 15
    .line 16
    new-instance p4, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;

    .line 17
    .line 18
    invoke-direct {p4, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda22;-><init>(II)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->handleResponse(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;)V

    .line 23
    .line 24
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

    .line 4
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

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-array v1, v0, [B

    .line 13
    .line 14
    :goto_1
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge p1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Byte;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    aput-byte v2, v1, p1

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    if-eqz p4, :cond_3

    .line 36
    .line 37
    if-le v0, p2, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/4 p1, -0x1

    .line 57
    if-ne p3, p1, :cond_4

    .line 58
    .line 59
    new-instance p1, Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 60
    .line 61
    invoke-direct {p1}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance p2, Landroid/hardware/biometrics/face/BaseFrame;

    .line 65
    .line 66
    invoke-direct {p2}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p2, p1, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 70
    .line 71
    const/16 p3, 0x17

    .line 72
    .line 73
    iput-byte p3, p2, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 74
    .line 75
    const/16 p3, 0x3fa

    .line 76
    .line 77
    iput p3, p2, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 78
    .line 79
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFailed()V

    .line 87
    .line 88
    .line 89
    :goto_2
    return-void
.end method

.method public final onEnrollResult(IIIJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentProgress(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onEnumerate(IJLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    new-array p1, p1, [I

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-ge p2, p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    aput p3, p1, p2

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentsEnumerated([I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onError(IIIJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRemoved(IJLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    new-array p1, p1, [I

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-ge p2, p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    aput p3, p1, p2

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentsRemoved([I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string/jumbo v3, "sehOnPreviewUpdated: skip after stop"

    .line 8
    .line 9
    .line 10
    const-string v4, "] "

    .line 11
    .line 12
    const-string/jumbo v5, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v6, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    .line 16
    .line 17
    .line 18
    const-string v7, "SemFace"

    .line 19
    .line 20
    const-string v8, ","

    .line 21
    .line 22
    const-string v9, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    const-string v3, "android.hidl.base@1.0::IBase"

    .line 29
    .line 30
    sparse-switch p1, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :sswitch_0
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :sswitch_1
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :sswitch_2
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :sswitch_3
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :sswitch_4
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->getHashChain()Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Landroid/os/HwBlob;

    .line 88
    .line 89
    const/16 v3, 0x10

    .line 90
    .line 91
    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const-wide/16 v4, 0x8

    .line 99
    .line 100
    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v4, 0xc

    .line 104
    .line 105
    invoke-virtual {v1, v4, v5, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 106
    .line 107
    .line 108
    new-instance v4, Landroid/os/HwBlob;

    .line 109
    .line 110
    mul-int/lit8 v5, v3, 0x20

    .line 111
    .line 112
    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 113
    .line 114
    .line 115
    :goto_0
    if-ge v10, v3, :cond_1

    .line 116
    .line 117
    mul-int/lit8 v5, v10, 0x20

    .line 118
    .line 119
    int-to-long v5, v5

    .line 120
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    check-cast v7, [B

    .line 125
    .line 126
    if-eqz v7, :cond_0

    .line 127
    .line 128
    array-length v8, v7

    .line 129
    const/16 v9, 0x20

    .line 130
    .line 131
    if-ne v8, v9, :cond_0

    .line 132
    .line 133
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v10, v10, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    const-string v1, "Array element is not of the expected length"

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_1
    const-wide/16 v5, 0x0

    .line 148
    .line 149
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_6

    .line 159
    .line 160
    :sswitch_5
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_6

    .line 173
    .line 174
    :sswitch_6
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_6

    .line 190
    .line 191
    :sswitch_7
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->interfaceChain()Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_6

    .line 208
    .line 209
    :pswitch_0
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 213
    .line 214
    .line 215
    move-result-wide v2

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 225
    .line 226
    .line 227
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    .line 232
    .line 233
    .line 234
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    const-string/jumbo v9, "sehOnAuthenticatedFromMemory: ["

    .line 248
    .line 249
    .line 250
    invoke-static {v6, v5, v9, v4, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-static {v4, v2, v3, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsAuthenticationExtOperation:Z

    .line 258
    .line 259
    if-nez v2, :cond_2

    .line 260
    .line 261
    const-string/jumbo v0, "sehOnAuthenticatedFromMemory: auth preview mode is off"

    .line 262
    .line 263
    .line 264
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    goto/16 :goto_6

    .line 268
    .line 269
    :cond_2
    if-nez v5, :cond_3

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendFailed()V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_6

    .line 275
    .line 276
    :cond_3
    if-nez v1, :cond_4

    .line 277
    .line 278
    const-string/jumbo v0, "sehOnAuthenticatedFromMemory: result data is null"

    .line 279
    .line 280
    .line 281
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    goto/16 :goto_6

    .line 285
    .line 286
    :cond_4
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 287
    .line 288
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;

    .line 289
    .line 290
    invoke-direct {v3, v0, v1, v5}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/os/HidlMemory;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    .line 295
    .line 296
    goto/16 :goto_6

    .line 297
    .line 298
    :catch_0
    move-exception v0

    .line 299
    new-instance v1, Ljava/lang/RuntimeException;

    .line 300
    .line 301
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 302
    .line 303
    .line 304
    throw v1

    .line 305
    :pswitch_1
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {v4}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    .line 313
    .line 314
    .line 315
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 317
    .line 318
    .line 319
    move-result v13

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 321
    .line 322
    .line 323
    move-result v14

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 329
    .line 330
    .line 331
    move-result v15

    .line 332
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 338
    .line 339
    .line 340
    move-result-object v12

    .line 341
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    const-string/jumbo v0, "sehOnPreviewFrame: "

    .line 345
    .line 346
    .line 347
    invoke-static {v13, v14, v0, v8, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    iget-boolean v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 368
    .line 369
    if-nez v0, :cond_5

    .line 370
    .line 371
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    goto :goto_1

    .line 375
    :cond_5
    if-nez v4, :cond_6

    .line 376
    .line 377
    const-string/jumbo v0, "sehOnPreviewFrame: preview data is null"

    .line 378
    .line 379
    .line 380
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    goto :goto_1

    .line 384
    :cond_6
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 385
    .line 386
    if-eqz v0, :cond_7

    .line 387
    .line 388
    const-string/jumbo v0, "sehOnPreviewFrame: previous preview is not processed yet"

    .line 389
    .line 390
    .line 391
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    goto :goto_1

    .line 395
    :cond_7
    invoke-static {v4}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 400
    .line 401
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 402
    .line 403
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;

    .line 404
    .line 405
    move-object v11, v1

    .line 406
    move/from16 v16, v5

    .line 407
    .line 408
    invoke-direct/range {v11 .. v16}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;IIII)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    .line 413
    .line 414
    :goto_1
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_6

    .line 421
    .line 422
    :catch_1
    move-exception v0

    .line 423
    new-instance v1, Ljava/lang/RuntimeException;

    .line 424
    .line 425
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 426
    .line 427
    .line 428
    throw v1

    .line 429
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 433
    .line 434
    .line 435
    move-result-wide v2

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 441
    .line 442
    .line 443
    move-result v6

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    const-string/jumbo v11, "sehOnAuthenticated: ["

    .line 453
    .line 454
    .line 455
    invoke-static {v6, v5, v11, v4, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    const-string v8, ""

    .line 477
    .line 478
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    if-lez v4, :cond_9

    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    new-array v4, v4, [B

    .line 492
    .line 493
    sput-object v4, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 494
    .line 495
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    if-ge v10, v4, :cond_8

    .line 500
    .line 501
    sget-object v4, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 502
    .line 503
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    check-cast v8, Ljava/lang/Byte;

    .line 508
    .line 509
    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    .line 510
    .line 511
    .line 512
    move-result v8

    .line 513
    aput-byte v8, v4, v10

    .line 514
    .line 515
    add-int/lit8 v10, v10, 0x1

    .line 516
    .line 517
    goto :goto_2

    .line 518
    :cond_8
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 519
    .line 520
    if-eqz v4, :cond_9

    .line 521
    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string/jumbo v8, "fidoResultData("

    .line 525
    .line 526
    .line 527
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    const-string v1, ") = "

    .line 538
    .line 539
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    sget-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoResultData:[B

    .line 543
    .line 544
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    :cond_9
    move-object/from16 v1, p0

    .line 559
    .line 560
    move v4, v5

    .line 561
    move v5, v6

    .line 562
    move-object v6, v9

    .line 563
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_6

    .line 567
    .line 568
    :pswitch_3
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 576
    .line 577
    .line 578
    move-result v13

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 580
    .line 581
    .line 582
    move-result v14

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 584
    .line 585
    .line 586
    move-result v5

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 588
    .line 589
    .line 590
    move-result v15

    .line 591
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 592
    .line 593
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 597
    .line 598
    .line 599
    move-result-object v12

    .line 600
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    const-string/jumbo v0, "sehOnPreviewUpdated: "

    .line 604
    .line 605
    .line 606
    invoke-static {v13, v14, v0, v8, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    iget-boolean v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 627
    .line 628
    if-nez v0, :cond_a

    .line 629
    .line 630
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    goto :goto_5

    .line 634
    :cond_a
    if-eqz v4, :cond_e

    .line 635
    .line 636
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    if-nez v0, :cond_b

    .line 641
    .line 642
    goto :goto_4

    .line 643
    :cond_b
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 644
    .line 645
    if-eqz v0, :cond_c

    .line 646
    .line 647
    const-string/jumbo v0, "sehOnPreviewUpdated: previous preview is not processed yet"

    .line 648
    .line 649
    .line 650
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    goto :goto_5

    .line 654
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    new-array v0, v0, [B

    .line 659
    .line 660
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 661
    .line 662
    move v0, v10

    .line 663
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-ge v0, v1, :cond_d

    .line 668
    .line 669
    iget-object v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHIDLpreviewImage:[B

    .line 670
    .line 671
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    check-cast v3, Ljava/lang/Byte;

    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    aput-byte v3, v1, v0

    .line 682
    .line 683
    add-int/lit8 v0, v0, 0x1

    .line 684
    .line 685
    goto :goto_3

    .line 686
    :cond_d
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 687
    .line 688
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;

    .line 689
    .line 690
    move-object v11, v1

    .line 691
    move/from16 v16, v5

    .line 692
    .line 693
    invoke-direct/range {v11 .. v16}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;IIII)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 697
    .line 698
    .line 699
    goto :goto_5

    .line 700
    :cond_e
    :goto_4
    const-string/jumbo v0, "sehOnPreviewUpdated: preview data is null or size is 0"

    .line 701
    .line 702
    .line 703
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    :goto_5
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 707
    .line 708
    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 710
    .line 711
    .line 712
    goto/16 :goto_6

    .line 713
    .line 714
    :pswitch_4
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 718
    .line 719
    .line 720
    move-result-wide v1

    .line 721
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 722
    .line 723
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    const-string v3, "AidlResponseHandler"

    .line 727
    .line 728
    const-string/jumbo v4, "onLockoutChanged"

    .line 729
    .line 730
    .line 731
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .line 733
    .line 734
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 735
    .line 736
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 737
    .line 738
    new-instance v4, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;

    .line 739
    .line 740
    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;J)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    .line 745
    .line 746
    goto/16 :goto_6

    .line 747
    .line 748
    :pswitch_5
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 752
    .line 753
    .line 754
    move-result-wide v2

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    .line 756
    .line 757
    .line 758
    move-result-object v4

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onEnumerate(IJLjava/util/ArrayList;)V

    .line 764
    .line 765
    .line 766
    goto/16 :goto_6

    .line 767
    .line 768
    :pswitch_6
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 772
    .line 773
    .line 774
    move-result-wide v2

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    .line 776
    .line 777
    .line 778
    move-result-object v4

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onRemoved(IJLjava/util/ArrayList;)V

    .line 784
    .line 785
    .line 786
    goto :goto_6

    .line 787
    :pswitch_7
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 791
    .line 792
    .line 793
    move-result-wide v5

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 799
    .line 800
    .line 801
    move-result v3

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 803
    .line 804
    .line 805
    move-result v4

    .line 806
    move-object/from16 v1, p0

    .line 807
    .line 808
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onError(IIIJ)V

    .line 809
    .line 810
    .line 811
    goto :goto_6

    .line 812
    :pswitch_8
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 816
    .line 817
    .line 818
    move-result-wide v5

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 820
    .line 821
    .line 822
    move-result v2

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 824
    .line 825
    .line 826
    move-result v3

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 828
    .line 829
    .line 830
    move-result v4

    .line 831
    move-object/from16 v1, p0

    .line 832
    .line 833
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onAcquired(IIIJ)V

    .line 834
    .line 835
    .line 836
    goto :goto_6

    .line 837
    :pswitch_9
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 841
    .line 842
    .line 843
    move-result-wide v2

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 845
    .line 846
    .line 847
    move-result v4

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 849
    .line 850
    .line 851
    move-result v5

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 853
    .line 854
    .line 855
    move-result-object v6

    .line 856
    move-object/from16 v1, p0

    .line 857
    .line 858
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 859
    .line 860
    .line 861
    goto :goto_6

    .line 862
    :pswitch_a
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    .line 866
    .line 867
    .line 868
    move-result-wide v5

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 870
    .line 871
    .line 872
    move-result v2

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 874
    .line 875
    .line 876
    move-result v3

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 878
    .line 879
    .line 880
    move-result v4

    .line 881
    move-object/from16 v1, p0

    .line 882
    .line 883
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->onEnrollResult(IIIJ)V

    .line 884
    .line 885
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

    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
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

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
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

    .line 2
    .line 3
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
