.class public abstract Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;


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
        -0x3dt
        0x2et
        0x54t
        -0x8t
        -0x13t
        0x16t
        0x6dt
        -0x57t
        -0x4t
        -0x13t
        -0x1t
        -0x29t
        -0x52t
        -0x2at
        0x26t
        0x33t
        -0x11t
        0x10t
        0x8t
        0x5t
        0x37t
        0x7t
        -0x2ct
        0x5dt
        -0x6et
        0x3ct
        0x73t
        -0x52t
        0x6dt
        0x4dt
        -0x57t
        -0x7ft
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    :array_1
    .array-data 1
        0x8t
        0x1ct
        0x60t
        -0x44t
        -0x65t
        -0x9t
        -0x50t
        0x5ft
        0x35t
        -0x2bt
        0x47t
        -0x75t
        -0x3et
        0x6bt
        -0x3ft
        0x6dt
        -0x5ft
        -0x80t
        -0x3t
        -0x21t
        0x77t
        -0x79t
        0x40t
        0x36t
        0x76t
        0xct
        0x4ft
        0x6ct
        -0xet
        0x7et
        -0x16t
        0x44t
    .end array-data

    :array_2
    .array-data 1
        -0x1ft
        -0x71t
        -0xdt
        0x18t
        -0xdt
        -0x4t
        0x43t
        -0x25t
        0x37t
        -0xbt
        0x54t
        0x69t
        0x6dt
        -0x3ct
        -0x1bt
        0x51t
        -0x55t
        -0x47t
        -0x4ft
        0x19t
        -0x43t
        -0x1bt
        0x39t
        0x50t
        -0x9t
        0x3et
        0x28t
        -0x32t
        0x33t
        -0x57t
        0x7at
        0x40t
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

    .line 2
    .line 3
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string/jumbo v2, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

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
    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace"

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

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 8

    .line 1
    const/4 p4, 0x0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-string/jumbo v3, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace"

    .line 6
    .line 7
    .line 8
    const-string v4, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    .line 9
    .line 10
    const-string/jumbo v5, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace"

    .line 11
    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string v2, "android.hidl.base@1.0::IBase"

    .line 17
    .line 18
    sparse-switch p1, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Landroid/os/HwBlob;

    .line 76
    .line 77
    const/16 p2, 0x10

    .line 78
    .line 79
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const-wide/16 v2, 0x8

    .line 87
    .line 88
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v2, 0xc

    .line 92
    .line 93
    invoke-virtual {p1, v2, v3, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Landroid/os/HwBlob;

    .line 97
    .line 98
    mul-int/lit8 v3, p2, 0x20

    .line 99
    .line 100
    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 101
    .line 102
    .line 103
    :goto_0
    if-ge p4, p2, :cond_1

    .line 104
    .line 105
    mul-int/lit8 v3, p4, 0x20

    .line 106
    .line 107
    int-to-long v3, v3

    .line 108
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, [B

    .line 113
    .line 114
    if-eqz v5, :cond_0

    .line 115
    .line 116
    array-length v6, v5

    .line 117
    const/16 v7, 0x20

    .line 118
    .line 119
    if-ne v6, v7, :cond_0

    .line 120
    .line 121
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 p4, p4, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string p1, "Array element is not of the expected length"

    .line 130
    .line 131
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_1
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_4

    .line 159
    .line 160
    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_4

    .line 194
    .line 195
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 199
    .line 200
    .line 201
    move-result-wide v2

    .line 202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    move-object v0, p0

    .line 219
    invoke-interface/range {v0 .. v6}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;->sehAuthenticateForIssuance(IJLjava/util/ArrayList;ZZ)I

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_4

    .line 233
    .line 234
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    if-nez p1, :cond_2

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_2
    const-string/jumbo p2, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFaceClientCallback"

    .line 245
    .line 246
    .line 247
    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-eqz v0, :cond_3

    .line 252
    .line 253
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 254
    .line 255
    if-eqz v1, :cond_3

    .line 256
    .line 257
    move-object v2, v0

    .line 258
    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_3
    new-instance v0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;

    .line 262
    .line 263
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 264
    .line 265
    .line 266
    iput-object p1, v0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 267
    .line 268
    :try_start_0
    invoke-virtual {v0}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_5

    .line 281
    .line 282
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    check-cast v1, Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    if-eqz v1, :cond_4

    .line 293
    .line 294
    move-object v2, v0

    .line 295
    :catch_0
    :cond_5
    :goto_1
    invoke-interface {p0, v2}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;->sehSetCallbackEx(Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_4

    .line 309
    .line 310
    :pswitch_2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    invoke-interface {p0, p2, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetFaceTag(Ljava/util/ArrayList;I)I

    .line 322
    .line 323
    .line 324
    move-result p0

    .line 325
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :pswitch_3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 340
    .line 341
    .line 342
    goto/16 :goto_4

    .line 343
    .line 344
    :pswitch_4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_4

    .line 348
    .line 349
    :pswitch_5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 353
    .line 354
    .line 355
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_4

    .line 365
    .line 366
    :pswitch_6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    new-instance p1, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;

    .line 370
    .line 371
    invoke-direct {p1, p3}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;-><init>(Landroid/os/HwParcel;)V

    .line 372
    .line 373
    .line 374
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_4

    .line 378
    .line 379
    :pswitch_7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_4

    .line 392
    .line 393
    :pswitch_8
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 397
    .line 398
    .line 399
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_4

    .line 412
    .line 413
    :pswitch_9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 417
    .line 418
    .line 419
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_4

    .line 429
    .line 430
    :pswitch_a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    :try_start_1
    invoke-virtual {p2}, Landroid/os/HwParcel;->readHidlMemory()Landroid/os/HidlMemory;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    invoke-virtual {p0}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_4

    .line 450
    .line 451
    :catch_1
    move-exception p0

    .line 452
    new-instance p1, Ljava/lang/RuntimeException;

    .line 453
    .line 454
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 455
    .line 456
    .line 457
    throw p1

    .line 458
    :pswitch_b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_4

    .line 471
    .line 472
    :pswitch_c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetRotation(I)I

    .line 480
    .line 481
    .line 482
    move-result p0

    .line 483
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_4

    .line 493
    .line 494
    :pswitch_d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetEngineVersion()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p0

    .line 501
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_4

    .line 511
    .line 512
    :pswitch_e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetTaInfo()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object p0

    .line 519
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_4

    .line 529
    .line 530
    :pswitch_f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehResumeEnrollment()I

    .line 534
    .line 535
    .line 536
    move-result p0

    .line 537
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_4

    .line 547
    .line 548
    :pswitch_10
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    .line 552
    .line 553
    .line 554
    move-result p0

    .line 555
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 562
    .line 563
    .line 564
    goto/16 :goto_4

    .line 565
    .line 566
    :pswitch_11
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehIsTaSessionClosed()Z

    .line 570
    .line 571
    .line 572
    move-result p0

    .line 573
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_4

    .line 583
    .line 584
    :pswitch_12
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehCloseTaSession()I

    .line 588
    .line 589
    .line 590
    move-result p0

    .line 591
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 598
    .line 599
    .line 600
    goto/16 :goto_4

    .line 601
    .line 602
    :pswitch_13
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehOpenTaSession()I

    .line 606
    .line 607
    .line 608
    move-result p0

    .line 609
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_4

    .line 619
    .line 620
    :pswitch_14
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 624
    .line 625
    .line 626
    move-result-wide v0

    .line 627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 628
    .line 629
    .line 630
    move-result p1

    .line 631
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 632
    .line 633
    .line 634
    move-result-object p2

    .line 635
    invoke-interface {p0, p1, v0, v1, p2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehAuthenticate(IJLjava/util/ArrayList;)I

    .line 636
    .line 637
    .line 638
    move-result p0

    .line 639
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 646
    .line 647
    .line 648
    goto/16 :goto_4

    .line 649
    .line 650
    :pswitch_15
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 654
    .line 655
    .line 656
    move-result-object p1

    .line 657
    if-nez p1, :cond_6

    .line 658
    .line 659
    goto :goto_2

    .line 660
    :cond_6
    const-string/jumbo p2, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    .line 661
    .line 662
    .line 663
    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    if-eqz v0, :cond_7

    .line 668
    .line 669
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    .line 670
    .line 671
    if-eqz v1, :cond_7

    .line 672
    .line 673
    move-object v2, v0

    .line 674
    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    .line 675
    .line 676
    goto :goto_2

    .line 677
    :cond_7
    new-instance v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Proxy;

    .line 678
    .line 679
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 680
    .line 681
    .line 682
    iput-object p1, v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 683
    .line 684
    :try_start_2
    invoke-virtual {v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 685
    .line 686
    .line 687
    move-result-object p1

    .line 688
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 693
    .line 694
    .line 695
    move-result v1

    .line 696
    if-eqz v1, :cond_9

    .line 697
    .line 698
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    check-cast v1, Ljava/lang/String;

    .line 703
    .line 704
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 708
    if-eqz v1, :cond_8

    .line 709
    .line 710
    move-object v2, v0

    .line 711
    :catch_2
    :cond_9
    :goto_2
    invoke-interface {p0, v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 712
    .line 713
    .line 714
    move-result-object p0

    .line 715
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 722
    .line 723
    .line 724
    goto/16 :goto_4

    .line 725
    .line 726
    :pswitch_16
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 730
    .line 731
    .line 732
    move-result-object p1

    .line 733
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->resetLockout(Ljava/util/ArrayList;)I

    .line 734
    .line 735
    .line 736
    move-result p0

    .line 737
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_4

    .line 747
    .line 748
    :pswitch_17
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->userActivity()V

    .line 752
    .line 753
    .line 754
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 761
    .line 762
    .line 763
    goto/16 :goto_4

    .line 764
    .line 765
    :pswitch_18
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 769
    .line 770
    .line 771
    move-result-wide p1

    .line 772
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    .line 773
    .line 774
    .line 775
    move-result p0

    .line 776
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 783
    .line 784
    .line 785
    goto/16 :goto_4

    .line 786
    .line 787
    :pswitch_19
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 791
    .line 792
    .line 793
    move-result p1

    .line 794
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    .line 795
    .line 796
    .line 797
    move-result p0

    .line 798
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 805
    .line 806
    .line 807
    goto/16 :goto_4

    .line 808
    .line 809
    :pswitch_1a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

    .line 813
    .line 814
    .line 815
    move-result p0

    .line 816
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 823
    .line 824
    .line 825
    goto/16 :goto_4

    .line 826
    .line 827
    :pswitch_1b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I

    .line 831
    .line 832
    .line 833
    move-result p0

    .line 834
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_4

    .line 844
    .line 845
    :pswitch_1c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 849
    .line 850
    .line 851
    move-result-object p0

    .line 852
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 859
    .line 860
    .line 861
    goto/16 :goto_4

    .line 862
    .line 863
    :pswitch_1d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 867
    .line 868
    .line 869
    move-result p1

    .line 870
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 871
    .line 872
    .line 873
    move-result p2

    .line 874
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    .line 875
    .line 876
    .line 877
    move-result-object p0

    .line 878
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 879
    .line 880
    .line 881
    new-instance p1, Landroid/os/HwBlob;

    .line 882
    .line 883
    const/16 p2, 0x8

    .line 884
    .line 885
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 886
    .line 887
    .line 888
    iget p2, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    .line 889
    .line 890
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 891
    .line 892
    .line 893
    const-wide/16 v0, 0x4

    .line 894
    .line 895
    iget-boolean p0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    .line 896
    .line 897
    invoke-virtual {p1, v0, v1, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 904
    .line 905
    .line 906
    goto/16 :goto_4

    .line 907
    .line 908
    :pswitch_1e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 912
    .line 913
    .line 914
    move-result p1

    .line 915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 916
    .line 917
    .line 918
    move-result v0

    .line 919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 924
    .line 925
    .line 926
    move-result p2

    .line 927
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    .line 928
    .line 929
    .line 930
    move-result p0

    .line 931
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 938
    .line 939
    .line 940
    goto/16 :goto_4

    .line 941
    .line 942
    :pswitch_1f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    invoke-interface {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    .line 946
    .line 947
    .line 948
    move-result p0

    .line 949
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 956
    .line 957
    .line 958
    goto/16 :goto_4

    .line 959
    .line 960
    :pswitch_20
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 964
    .line 965
    .line 966
    move-result-object p1

    .line 967
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    .line 972
    .line 973
    .line 974
    move-result-object p2

    .line 975
    invoke-interface {p0, p1, v0, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    .line 976
    .line 977
    .line 978
    move-result p0

    .line 979
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 980
    .line 981
    .line 982
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 986
    .line 987
    .line 988
    goto/16 :goto_4

    .line 989
    .line 990
    :pswitch_21
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 994
    .line 995
    .line 996
    move-result p1

    .line 997
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 998
    .line 999
    .line 1000
    move-result-object p0

    .line 1001
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1008
    .line 1009
    .line 1010
    goto :goto_4

    .line 1011
    :pswitch_22
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 1015
    .line 1016
    .line 1017
    move-result p1

    .line 1018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object p2

    .line 1022
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    .line 1023
    .line 1024
    .line 1025
    move-result p0

    .line 1026
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1033
    .line 1034
    .line 1035
    goto :goto_4

    .line 1036
    :pswitch_23
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 1040
    .line 1041
    .line 1042
    move-result-object p1

    .line 1043
    if-nez p1, :cond_a

    .line 1044
    .line 1045
    goto :goto_3

    .line 1046
    :cond_a
    const-string p2, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    .line 1047
    .line 1048
    invoke-interface {p1, p2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    if-eqz v0, :cond_b

    .line 1053
    .line 1054
    instance-of v1, v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    .line 1055
    .line 1056
    if-eqz v1, :cond_b

    .line 1057
    .line 1058
    move-object v2, v0

    .line 1059
    check-cast v2, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    .line 1060
    .line 1061
    goto :goto_3

    .line 1062
    :cond_b
    new-instance v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Proxy;

    .line 1063
    .line 1064
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1065
    .line 1066
    .line 1067
    iput-object p1, v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 1068
    .line 1069
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 1070
    .line 1071
    .line 1072
    move-result-object p1

    .line 1073
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1074
    .line 1075
    .line 1076
    move-result-object p1

    .line 1077
    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1078
    .line 1079
    .line 1080
    move-result v1

    .line 1081
    if-eqz v1, :cond_d

    .line 1082
    .line 1083
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    check-cast v1, Ljava/lang/String;

    .line 1088
    .line 1089
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1093
    if-eqz v1, :cond_c

    .line 1094
    .line 1095
    move-object v2, v0

    .line 1096
    :catch_3
    :cond_d
    :goto_3
    invoke-interface {p0, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 1097
    .line 1098
    .line 1099
    move-result-object p0

    .line 1100
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {p0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1107
    .line 1108
    .line 1109
    :goto_4
    return-void

    .line 1110
    nop

    .line 1111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
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
    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace"

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

.method public sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public sehSetCallbackEx(Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
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
    const-string/jumbo p0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace@Stub"

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
