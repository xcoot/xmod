.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;


# instance fields
.field public mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field public final mContext:Landroid/content/Context;

.field public final mSensorId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mSensorId:I

    .line 8
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final authenticate(IJ)I
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.hidl.TestHal"

    .line 4
    const-string p1, "Authenticate"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final cancel()I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const-wide/16 v1, 0x0

    .line 8
    const/4 v3, 0x5

    .line 9
    invoke-interface {p0, v3, v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onError(IIJ)V

    .line 12
    :cond_0
    return v0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final enroll(II[B)I
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprint.hidl.TestHal"

    .line 4
    const-string/jumbo p1, "enroll"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final enumerate()I
    .locals 8

    .line 1
    const-string/jumbo v0, "fingerprint.hidl.TestHal"

    .line 4
    const-string v1, "Enumerate"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 11
    if-eqz v2, :cond_0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const-wide/16 v6, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onEnumerate(IIIJ)V

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final getAuthenticatorId()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    return-wide v0
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
        0x7at
        0x78t
        -0x17t
        -0x6at
        0x3bt
        -0x14t
        0xbt
        0x7t
        0x1et
        0x7dt
        0x46t
        -0x6et
        -0x74t
        0x61t
        0x0t
        -0x1et
        0x17t
        0x42t
        0x70t
        -0x77t
        0x2dt
        0x3ft
        0x15t
        -0x5ft
        -0x16t
        -0x53t
        0x7t
        0x49t
        -0x69t
        -0x53t
        -0xet
        0x79t
    .end array-data

    .line 57
    :array_1
    .array-data 1
        0x14t
        0xft
        -0x71t
        0x62t
        0x10t
        0xct
        -0x31t
        -0x64t
        -0x2et
        -0x7et
        -0x52t
        0x36t
        -0x7bt
        -0x60t
        -0xct
        -0x11t
        0xat
        -0x61t
        -0x69t
        0x1dt
        0x77t
        -0x21t
        -0x44t
        0x73t
        0x50t
        -0x34t
        -0x4ct
        -0x20t
        0x4ct
        -0xet
        -0x6bt
        -0x14t
    .end array-data

    .line 77
    :array_2
    .array-data 1
        0x1ft
        -0x43t
        -0x3ft
        -0x8t
        0x52t
        -0x8t
        -0x43t
        0x2et
        0x4at
        0x6ct
        0x5ct
        -0x4dt
        0xat
        -0x3et
        -0x49t
        -0x7at
        0x68t
        -0x37t
        -0x73t
        -0x32t
        0x11t
        -0x76t
        0x61t
        0x76t
        0x2dt
        0x40t
        0x34t
        -0x52t
        -0x7bt
        -0x61t
        0x43t
        -0x28t
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
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 7
    const-string v2, "android.hardware.biometrics.fingerprint@2.3::IBiometricsFingerprint"

    .line 9
    const-string v3, "android.hardware.biometrics.fingerprint@2.2::IBiometricsFingerprint"

    .line 11
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.biometrics.fingerprint@2.3::IBiometricsFingerprint"

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

    .line 4
    return-void
.end method

.method public final onFingerDown(IFFI)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFingerUp()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 8

    .line 1
    const-string p4, "android.hardware.biometrics.fingerprint@2.3::IBiometricsFingerprint"

    .line 3
    const-wide/16 v0, 0x0

    .line 5
    const-string v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 11
    const-string v2, "android.hidl.base@1.0::IBase"

    .line 13
    sparse-switch p1, :sswitch_data_0

    .line 16
    goto/16 :goto_1

    .line 18
    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 24
    goto/16 :goto_1

    .line 26
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 36
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 42
    goto/16 :goto_1

    .line 44
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 50
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 53
    goto/16 :goto_1

    .line 55
    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    goto/16 :goto_1

    .line 60
    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->getHashChain()Ljava/util/ArrayList;

    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 70
    new-instance p1, Landroid/os/HwBlob;

    .line 72
    const/16 p2, 0x10

    .line 74
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result p2

    .line 81
    const-wide/16 v4, 0x8

    .line 83
    invoke-virtual {p1, v4, v5, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 86
    const-wide/16 v4, 0xc

    .line 88
    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 91
    new-instance p4, Landroid/os/HwBlob;

    .line 93
    mul-int/lit8 v2, p2, 0x20

    .line 95
    invoke-direct {p4, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 98
    :goto_0
    if-ge v3, p2, :cond_1

    .line 100
    mul-int/lit8 v2, v3, 0x20

    .line 102
    int-to-long v4, v2

    .line 103
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v2

    .line 107
    check-cast v2, [B

    .line 109
    if-eqz v2, :cond_0

    .line 111
    array-length v6, v2

    .line 112
    const/16 v7, 0x20

    .line 114
    if-ne v6, v7, :cond_0

    .line 116
    invoke-virtual {p4, v4, v5, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    const-string p1, "Array element is not of the expected length"

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0

    .line 130
    :cond_1
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 133
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 139
    goto/16 :goto_1

    .line 141
    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 147
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 153
    goto/16 :goto_1

    .line 155
    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 170
    goto/16 :goto_1

    .line 172
    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->interfaceChain()Ljava/util/ArrayList;

    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 182
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 188
    goto/16 :goto_1

    .line 190
    :pswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 199
    goto/16 :goto_1

    .line 201
    :pswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 207
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 210
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    .line 213
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    .line 216
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 219
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 222
    goto/16 :goto_1

    .line 224
    :pswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 230
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 233
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 236
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 239
    goto/16 :goto_1

    .line 241
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 247
    move-result-wide v0

    .line 248
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 251
    move-result p1

    .line 252
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->authenticate(IJ)I

    .line 255
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 258
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 261
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 264
    goto/16 :goto_1

    .line 266
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 272
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 275
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 278
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 284
    goto/16 :goto_1

    .line 286
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 292
    move-result p1

    .line 293
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 296
    move-result p2

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->remove(II)I

    .line 300
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 303
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 306
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 309
    goto/16 :goto_1

    .line 311
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->enumerate()I

    .line 317
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 320
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 326
    goto/16 :goto_1

    .line 328
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->cancel()I

    .line 334
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 337
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 340
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 343
    goto :goto_1

    .line 344
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 350
    invoke-virtual {p3, v0, v1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 353
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 356
    goto :goto_1

    .line 357
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 363
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 366
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 369
    goto :goto_1

    .line 370
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    const/16 p1, 0x45

    .line 375
    new-array p4, p1, [B

    .line 377
    const-wide/16 v4, 0x45

    .line 379
    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v2, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 389
    move-result p1

    .line 390
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 393
    move-result p2

    .line 394
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->enroll(II[B)I

    .line 397
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 400
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 403
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 406
    goto :goto_1

    .line 407
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 413
    invoke-virtual {p3, v0, v1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 416
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 419
    goto :goto_1

    .line 420
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 426
    move-result-object p1

    .line 427
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 430
    move-result-object p1

    .line 431
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 433
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 436
    const-wide/16 p0, 0x1

    .line 438
    invoke-virtual {p3, p0, p1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 444
    :goto_1
    return-void

    .line 445
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
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

    .line 475
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

.method public final postEnroll()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final preEnroll()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    return-wide v0
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    const-string v0, "android.hardware.biometrics.fingerprint@2.3::IBiometricsFingerprint"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final remove(II)I
    .locals 9

    .line 1
    const-string/jumbo v0, "fingerprint.hidl.TestHal"

    .line 4
    const-string v1, "Remove"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 14
    if-nez p2, :cond_0

    .line 16
    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mSensorId:I

    .line 18
    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 21
    move-result-object p2

    .line 22
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p2, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 27
    move-result-object p2

    .line 28
    move v1, v0

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 32
    move-result v2

    .line 33
    if-ge v1, v2, :cond_1

    .line 35
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 41
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 43
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    .line 46
    move-result v4

    .line 47
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 50
    move-result v2

    .line 51
    sub-int/2addr v2, v1

    .line 52
    add-int/lit8 v6, v2, -0x1

    .line 54
    const-wide/16 v7, 0x0

    .line 56
    move v5, p1

    .line 57
    invoke-interface/range {v3 .. v8}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onRemoved(IIIJ)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-wide/16 v6, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    move v3, p2

    .line 67
    move v4, p1

    .line 68
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onRemoved(IIIJ)V

    .line 71
    :cond_1
    return v0
.end method

.method public final setActiveGroup(ILjava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 3
    const-wide/16 p0, 0x1

    .line 5
    return-wide p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.biometrics.fingerprint@2.3::IBiometricsFingerprint@Stub"

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
