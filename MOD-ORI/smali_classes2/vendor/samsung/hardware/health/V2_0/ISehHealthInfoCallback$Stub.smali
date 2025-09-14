.class public abstract Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealthInfoCallback;


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
        -0x10t
        0x33t
        0x48t
        0x2et
        0x75t
        -0x33t
        0x10t
        -0x5bt
        -0x4dt
        0x31t
        0xet
        -0x75t
        -0x13t
        0x48t
        -0xct
        -0x1at
        0x14t
        -0x28t
        -0x59t
        0x6dt
        -0x7dt
        -0x62t
        -0x52t
        -0x72t
        0x49t
        -0x9t
        0x6dt
        0x36t
        -0x36t
        0x60t
        0x1bt
        -0x2bt
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    :array_1
    .array-data 1
        0x26t
        -0x10t
        0x45t
        0x10t
        -0x60t
        -0x4bt
        0x7at
        -0x46t
        0x51t
        0x67t
        -0x3bt
        -0x40t
        -0x59t
        -0x3et
        -0x10t
        0x77t
        -0x3et
        -0x54t
        -0x45t
        -0x68t
        -0x48t
        0x19t
        0x2t
        -0x60t
        0x72t
        0x51t
        0x78t
        0x29t
        -0x3t
        -0x61t
        -0x2at
        0x7ft
    .end array-data

    :array_2
    .array-data 1
        0x43t
        0x4ct
        0x4ct
        0x32t
        -0x40t
        0xbt
        0xet
        0x54t
        -0x45t
        0x5t
        -0x1ct
        0xct
        0x79t
        0x50t
        0x32t
        0x8t
        -0x4ct
        0xft
        0x78t
        0x6at
        0x31t
        -0x80t
        0x29t
        -0x5et
        -0x5ct
        -0xat
        0x6et
        0x34t
        -0xft
        0xft
        0x2at
        0x76t
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
    const-string v0, "android.hardware.health@2.0::IHealthInfoCallback"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string/jumbo v2, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

    .line 8
    .line 9
    .line 10
    const-string v3, "android.hardware.health@2.1::IHealthInfoCallback"

    .line 11
    .line 12
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

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
    .locals 6

    .line 1
    const/4 p4, 0x1

    .line 2
    if-eq p1, p4, :cond_4

    .line 3
    .line 4
    const/4 p4, 0x2

    .line 5
    const-wide/16 v0, 0x88

    .line 6
    .line 7
    if-eq p1, p4, :cond_3

    .line 8
    .line 9
    const/4 p4, 0x3

    .line 10
    const-string/jumbo v2, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

    .line 11
    .line 12
    .line 13
    if-eq p1, p4, :cond_2

    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 17
    .line 18
    sparse-switch p1, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

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
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

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
    goto/16 :goto_1

    .line 59
    .line 60
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->getHashChain()Ljava/util/ArrayList;

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
    const-wide/16 v0, 0x8

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v0, 0xc

    .line 92
    .line 93
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Landroid/os/HwBlob;

    .line 97
    .line 98
    mul-int/lit8 v1, p2, 0x20

    .line 99
    .line 100
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 101
    .line 102
    .line 103
    :goto_0
    if-ge p4, p2, :cond_1

    .line 104
    .line 105
    mul-int/lit8 v1, p4, 0x20

    .line 106
    .line 107
    int-to-long v1, v1

    .line 108
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, [B

    .line 113
    .line 114
    if-eqz v3, :cond_0

    .line 115
    .line 116
    array-length v4, v3

    .line 117
    const/16 v5, 0x20

    .line 118
    .line 119
    if-ne v4, v5, :cond_0

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

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
    const-wide/16 v1, 0x0

    .line 136
    .line 137
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 201
    .line 202
    invoke-direct {p1}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    .line 203
    .line 204
    .line 205
    const-wide/16 p3, 0xb0

    .line 206
    .line 207
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    iget-object p4, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 212
    .line 213
    invoke-virtual {p4, p2, p3}, Landroid/hardware/health/V2_1/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 221
    .line 222
    const-wide/16 v0, 0x8c

    .line 223
    .line 224
    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 229
    .line 230
    const-wide/16 v0, 0x90

    .line 231
    .line 232
    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 237
    .line 238
    const-wide/16 v0, 0x94

    .line 239
    .line 240
    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    iput-boolean p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 245
    .line 246
    const-wide/16 v0, 0x95

    .line 247
    .line 248
    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    iput-boolean p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 253
    .line 254
    const-wide/16 v0, 0x98

    .line 255
    .line 256
    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 261
    .line 262
    const-wide/16 v0, 0x9c

    .line 263
    .line 264
    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 269
    .line 270
    const-wide/16 v0, 0xa0

    .line 271
    .line 272
    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 277
    .line 278
    const-wide/16 v0, 0xa4

    .line 279
    .line 280
    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 281
    .line 282
    .line 283
    move-result p2

    .line 284
    iput-boolean p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 285
    .line 286
    const-wide/16 v0, 0xa8

    .line 287
    .line 288
    invoke-virtual {p3, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    iput p2, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 293
    .line 294
    check-cast p0, Lcom/android/server/health/HealthHalCallbackHidl;

    .line 295
    .line 296
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;

    .line 297
    .line 298
    invoke-static {p1}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 303
    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_3
    const-string p1, "android.hardware.health@2.1::IHealthInfoCallback"

    .line 307
    .line 308
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    new-instance p1, Landroid/hardware/health/V2_1/HealthInfo;

    .line 312
    .line 313
    invoke-direct {p1}, Landroid/hardware/health/V2_1/HealthInfo;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 317
    .line 318
    .line 319
    move-result-object p3

    .line 320
    invoke-virtual {p1, p2, p3}, Landroid/hardware/health/V2_1/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    .line 321
    .line 322
    .line 323
    check-cast p0, Lcom/android/server/health/HealthHalCallbackHidl;

    .line 324
    .line 325
    new-instance p2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 326
    .line 327
    invoke-direct {p2}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    .line 328
    .line 329
    .line 330
    iput-object p1, p2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 331
    .line 332
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;

    .line 333
    .line 334
    invoke-static {p2}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 339
    .line 340
    .line 341
    goto :goto_1

    .line 342
    :cond_4
    const-string p1, "android.hardware.health@2.0::IHealthInfoCallback"

    .line 343
    .line 344
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    new-instance p1, Landroid/hardware/health/V2_0/HealthInfo;

    .line 348
    .line 349
    invoke-direct {p1}, Landroid/hardware/health/V2_0/HealthInfo;-><init>()V

    .line 350
    .line 351
    .line 352
    const-wide/16 p3, 0x70

    .line 353
    .line 354
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 355
    .line 356
    .line 357
    move-result-object p3

    .line 358
    invoke-virtual {p1, p2, p3}, Landroid/hardware/health/V2_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    .line 359
    .line 360
    .line 361
    check-cast p0, Lcom/android/server/health/HealthHalCallbackHidl;

    .line 362
    .line 363
    new-instance p2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 364
    .line 365
    invoke-direct {p2}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    .line 366
    .line 367
    .line 368
    iget-object p3, p2, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 369
    .line 370
    iput-object p1, p3, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 371
    .line 372
    const/4 p1, -0x1

    .line 373
    iput p1, p3, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 374
    .line 375
    const-wide/16 v0, -0x1

    .line 376
    .line 377
    iput-wide v0, p3, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 378
    .line 379
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;

    .line 380
    .line 381
    invoke-static {p2}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 386
    .line 387
    .line 388
    :goto_1
    return-void

    .line 389
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
    const-string/jumbo v0, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback"

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
    const-string/jumbo p0, "vendor.samsung.hardware.health@2.0::ISehHealthInfoCallback@Stub"

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
