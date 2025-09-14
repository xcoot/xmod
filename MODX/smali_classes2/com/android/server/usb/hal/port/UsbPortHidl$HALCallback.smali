.class public final Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/usb/V1_0/IUsbCallback;


# instance fields
.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

.field public preDataRole:I


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
        0x46t
        -0x67t
        0x6ct
        -0x2et
        -0x5ft
        -0x3at
        0x62t
        0x61t
        -0x59t
        0x5at
        0x1ft
        0x6et
        -0x36t
        -0x26t
        0x77t
        -0x12t
        -0x4bt
        -0x7at
        0x1et
        -0x4et
        0x64t
        -0x6t
        0x39t
        -0x47t
        -0x6at
        0x54t
        -0x71t
        -0x20t
        -0x59t
        -0xet
        0x2dt
        -0x2dt
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    :array_1
    .array-data 1
        0x13t
        -0x5bt
        -0x80t
        -0x1dt
        0x5at
        -0x10t
        0x12t
        0x70t
        -0x5ft
        -0x17t
        0x77t
        0x41t
        0x77t
        -0x3bt
        0x1dt
        -0x4bt
        0x1dt
        -0x7at
        0x72t
        -0x1at
        0x13t
        -0x65t
        -0x60t
        0x8t
        0x51t
        -0x1at
        0x54t
        -0x1at
        -0x76t
        0x4dt
        0x7dt
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x4bt
        -0x19t
        -0x78t
        0x1et
        0x41t
        0x1bt
        -0x5ct
        0x27t
        -0x7ct
        -0x41t
        0x5bt
        0x73t
        0x54t
        -0x3ft
        0x4at
        -0x20t
        -0x31t
        0x16t
        0x10t
        0x4t
        -0x2dt
        -0x6ct
        0x33t
        -0x56t
        -0x14t
        -0x56t
        -0x50t
        -0x2ft
        -0x62t
        -0x57t
        -0x6dt
        0x54t
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
    const-string v0, "android.hardware.usb@1.0::IUsbCallback"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v2, "android.hardware.usb@1.2::IUsbCallback"

    .line 8
    .line 9
    const-string v3, "android.hardware.usb@1.1::IUsbCallback"

    .line 10
    .line 11
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.usb@1.2::IUsbCallback"

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

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    const/4 v10, 0x1

    .line 10
    const-string v3, "android.hardware.usb@1.0::IUsbCallback"

    .line 11
    .line 12
    const-string/jumbo v11, "port status enquiry failed"

    .line 13
    .line 14
    .line 15
    const-wide/16 v4, 0x10

    .line 16
    .line 17
    const/4 v12, 0x6

    .line 18
    const-wide/16 v6, 0x8

    .line 19
    .line 20
    const/4 v13, 0x4

    .line 21
    const/4 v14, 0x0

    .line 22
    if-eq v1, v10, :cond_18

    .line 23
    .line 24
    move-object v15, v11

    .line 25
    const-wide/16 v10, 0x0

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    if-eq v1, v8, :cond_16

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    const-wide/16 v16, 0x2c

    .line 32
    .line 33
    const-wide/16 v18, 0x28

    .line 34
    .line 35
    if-eq v1, v3, :cond_c

    .line 36
    .line 37
    const-string v3, "android.hardware.usb@1.2::IUsbCallback"

    .line 38
    .line 39
    if-eq v1, v13, :cond_2

    .line 40
    .line 41
    const-string v4, "android.hidl.base@1.0::IBase"

    .line 42
    .line 43
    sparse-switch v1, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_9

    .line 47
    .line 48
    :sswitch_0
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_9

    .line 55
    .line 56
    :sswitch_1
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v2, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :sswitch_2
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_9

    .line 84
    .line 85
    :sswitch_3
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_9

    .line 89
    .line 90
    :sswitch_4
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->getHashChain()Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v2, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Landroid/os/HwBlob;

    .line 101
    .line 102
    const/16 v3, 0x10

    .line 103
    .line 104
    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 112
    .line 113
    .line 114
    const-wide/16 v4, 0xc

    .line 115
    .line 116
    invoke-virtual {v1, v4, v5, v14}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Landroid/os/HwBlob;

    .line 120
    .line 121
    mul-int/lit8 v5, v3, 0x20

    .line 122
    .line 123
    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 124
    .line 125
    .line 126
    :goto_0
    if-ge v14, v3, :cond_1

    .line 127
    .line 128
    mul-int/lit8 v5, v14, 0x20

    .line 129
    .line 130
    int-to-long v5, v5

    .line 131
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, [B

    .line 136
    .line 137
    if-eqz v7, :cond_0

    .line 138
    .line 139
    array-length v8, v7

    .line 140
    const/16 v9, 0x20

    .line 141
    .line 142
    if-ne v8, v9, :cond_0

    .line 143
    .line 144
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v14, v14, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string v1, "Array element is not of the expected length"

    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_1
    invoke-virtual {v1, v10, v11, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_9

    .line 168
    .line 169
    :sswitch_5
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_9

    .line 182
    .line 183
    :sswitch_6
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_9

    .line 199
    .line 200
    :sswitch_7
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->interfaceChain()Ljava/util/ArrayList;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v2, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_9

    .line 217
    .line 218
    :cond_2
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-instance v10, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    mul-int/lit8 v2, v11, 0x48

    .line 235
    .line 236
    int-to-long v2, v2

    .line 237
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 238
    .line 239
    .line 240
    move-result-wide v4

    .line 241
    const-wide/16 v6, 0x0

    .line 242
    .line 243
    const/16 v20, 0x1

    .line 244
    .line 245
    move-object/from16 v1, p2

    .line 246
    .line 247
    move v13, v8

    .line 248
    move/from16 v8, v20

    .line 249
    .line 250
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 255
    .line 256
    .line 257
    move v2, v14

    .line 258
    :goto_1
    if-ge v2, v11, :cond_3

    .line 259
    .line 260
    new-instance v3, Landroid/hardware/usb/V1_2/PortStatus;

    .line 261
    .line 262
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 263
    .line 264
    .line 265
    new-instance v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 266
    .line 267
    invoke-direct {v4}, Landroid/hardware/usb/V1_1/PortStatus_1_1;-><init>()V

    .line 268
    .line 269
    .line 270
    iput-object v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 271
    .line 272
    iput-boolean v14, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 273
    .line 274
    iput v14, v3, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    .line 275
    .line 276
    iput-boolean v14, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 277
    .line 278
    iput v14, v3, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    .line 279
    .line 280
    mul-int/lit8 v5, v2, 0x48

    .line 281
    .line 282
    int-to-long v5, v5

    .line 283
    iget-object v7, v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 284
    .line 285
    invoke-virtual {v7, v9, v1, v5, v6}, Landroid/hardware/usb/V1_0/PortStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 286
    .line 287
    .line 288
    add-long v7, v5, v18

    .line 289
    .line 290
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    iput v7, v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 295
    .line 296
    add-long v7, v5, v16

    .line 297
    .line 298
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    iput v7, v4, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 303
    .line 304
    const-wide/16 v7, 0x30

    .line 305
    .line 306
    add-long/2addr v7, v5

    .line 307
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    iput v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    .line 312
    .line 313
    const-wide/16 v7, 0x34

    .line 314
    .line 315
    add-long/2addr v7, v5

    .line 316
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getBool(J)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    iput-boolean v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 321
    .line 322
    const-wide/16 v7, 0x38

    .line 323
    .line 324
    add-long/2addr v7, v5

    .line 325
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    iput v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    .line 330
    .line 331
    const-wide/16 v7, 0x3c

    .line 332
    .line 333
    add-long/2addr v7, v5

    .line 334
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getBool(J)Z

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    iput-boolean v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 339
    .line 340
    const-wide/16 v7, 0x40

    .line 341
    .line 342
    add-long/2addr v5, v7

    .line 343
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    iput v4, v3, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    .line 348
    .line 349
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 353
    .line 354
    goto :goto_1

    .line 355
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    iget-object v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    .line 360
    .line 361
    iget-boolean v2, v2, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    .line 362
    .line 363
    if-nez v2, :cond_4

    .line 364
    .line 365
    goto/16 :goto_9

    .line 366
    .line 367
    :cond_4
    if-eqz v1, :cond_5

    .line 368
    .line 369
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 370
    .line 371
    move-object v10, v15

    .line 372
    invoke-static {v12, v0, v10}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_9

    .line 376
    .line 377
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    move v3, v14

    .line 387
    :goto_2
    if-ge v3, v2, :cond_b

    .line 388
    .line 389
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    check-cast v4, Landroid/hardware/usb/V1_2/PortStatus;

    .line 394
    .line 395
    new-instance v5, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 396
    .line 397
    iget-object v6, v4, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 398
    .line 399
    iget-object v7, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 400
    .line 401
    iget-object v8, v7, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    .line 402
    .line 403
    iget v9, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 404
    .line 405
    iget v11, v4, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    .line 406
    .line 407
    iget v6, v6, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 408
    .line 409
    iget-boolean v12, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    .line 410
    .line 411
    iget v15, v7, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    .line 412
    .line 413
    iget-boolean v13, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    .line 414
    .line 415
    iget v14, v7, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 416
    .line 417
    iget-boolean v7, v7, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    .line 418
    .line 419
    move/from16 p1, v2

    .line 420
    .line 421
    iget-boolean v2, v4, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 422
    .line 423
    move-object/from16 p3, v10

    .line 424
    .line 425
    iget v10, v4, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    .line 426
    .line 427
    move/from16 v16, v3

    .line 428
    .line 429
    iget-boolean v3, v4, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 430
    .line 431
    iget v0, v4, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    .line 432
    .line 433
    sget v35, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    .line 434
    .line 435
    move-object/from16 v17, v1

    .line 436
    .line 437
    move-object/from16 p2, v4

    .line 438
    .line 439
    const/4 v4, 0x0

    .line 440
    new-array v1, v4, [I

    .line 441
    .line 442
    move-object/from16 v39, v1

    .line 443
    .line 444
    const/16 v41, 0x0

    .line 445
    .line 446
    const/16 v42, 0x0

    .line 447
    .line 448
    const/16 v36, 0x0

    .line 449
    .line 450
    const/16 v37, 0x0

    .line 451
    .line 452
    const/16 v38, 0x0

    .line 453
    .line 454
    const/16 v40, 0x0

    .line 455
    .line 456
    move-object/from16 v21, v5

    .line 457
    .line 458
    move-object/from16 v22, v8

    .line 459
    .line 460
    move/from16 v23, v9

    .line 461
    .line 462
    move/from16 v24, v11

    .line 463
    .line 464
    move/from16 v25, v6

    .line 465
    .line 466
    move/from16 v26, v12

    .line 467
    .line 468
    move/from16 v27, v15

    .line 469
    .line 470
    move/from16 v28, v13

    .line 471
    .line 472
    move/from16 v29, v14

    .line 473
    .line 474
    move/from16 v30, v7

    .line 475
    .line 476
    move/from16 v31, v2

    .line 477
    .line 478
    move/from16 v32, v10

    .line 479
    .line 480
    move/from16 v33, v3

    .line 481
    .line 482
    move/from16 v34, v0

    .line 483
    .line 484
    invoke-direct/range {v21 .. v42}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 485
    .line 486
    .line 487
    move-object/from16 v0, v17

    .line 488
    .line 489
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-object/from16 v4, p2

    .line 493
    .line 494
    iget-object v1, v4, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 495
    .line 496
    iget-object v2, v1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 497
    .line 498
    iget v2, v2, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 499
    .line 500
    const/4 v3, 0x1

    .line 501
    if-ne v2, v3, :cond_7

    .line 502
    .line 503
    move-object/from16 v13, p0

    .line 504
    .line 505
    iget v3, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    .line 506
    .line 507
    const/4 v4, 0x2

    .line 508
    if-eqz v3, :cond_6

    .line 509
    .line 510
    if-ne v3, v4, :cond_8

    .line 511
    .line 512
    :cond_6
    iget-object v3, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 513
    .line 514
    invoke-virtual {v3}, Lcom/android/server/usb/UsbPortManager;->startBoost()V

    .line 515
    .line 516
    .line 517
    goto :goto_3

    .line 518
    :cond_7
    const/4 v4, 0x2

    .line 519
    move-object/from16 v13, p0

    .line 520
    .line 521
    :cond_8
    iget v3, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    .line 522
    .line 523
    const/4 v5, 0x1

    .line 524
    if-ne v3, v5, :cond_a

    .line 525
    .line 526
    if-eqz v2, :cond_9

    .line 527
    .line 528
    if-ne v2, v4, :cond_a

    .line 529
    .line 530
    :cond_9
    iget-object v3, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 531
    .line 532
    invoke-virtual {v3}, Lcom/android/server/usb/UsbPortManager;->stopBoost()V

    .line 533
    .line 534
    .line 535
    :cond_a
    :goto_3
    iput v2, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    .line 536
    .line 537
    iget-object v2, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 538
    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    const-string v4, "ClientCallback V1_2: "

    .line 542
    .line 543
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    iget-object v1, v1, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 547
    .line 548
    iget-object v1, v1, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    .line 549
    .line 550
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    const/4 v3, 0x4

    .line 558
    invoke-static {v3, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    add-int/lit8 v3, v16, 0x1

    .line 562
    .line 563
    move/from16 v2, p1

    .line 564
    .line 565
    move-object/from16 v10, p3

    .line 566
    .line 567
    move-object v1, v0

    .line 568
    move-object v0, v13

    .line 569
    const/4 v13, 0x2

    .line 570
    const/4 v14, 0x0

    .line 571
    goto/16 :goto_2

    .line 572
    .line 573
    :cond_b
    move-object v13, v0

    .line 574
    move-object v0, v1

    .line 575
    iget-object v1, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 576
    .line 577
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_9

    .line 581
    .line 582
    :cond_c
    move-object v13, v0

    .line 583
    move-object v10, v15

    .line 584
    const-string v0, "android.hardware.usb@1.1::IUsbCallback"

    .line 585
    .line 586
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    new-instance v0, Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v9, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    .line 599
    .line 600
    .line 601
    move-result v11

    .line 602
    mul-int/lit8 v2, v11, 0x30

    .line 603
    .line 604
    int-to-long v2, v2

    .line 605
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 606
    .line 607
    .line 608
    move-result-wide v4

    .line 609
    const-wide/16 v6, 0x0

    .line 610
    .line 611
    const/4 v8, 0x1

    .line 612
    move-object/from16 v1, p2

    .line 613
    .line 614
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 619
    .line 620
    .line 621
    const/4 v2, 0x0

    .line 622
    :goto_4
    if-ge v2, v11, :cond_d

    .line 623
    .line 624
    new-instance v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 625
    .line 626
    invoke-direct {v3}, Landroid/hardware/usb/V1_1/PortStatus_1_1;-><init>()V

    .line 627
    .line 628
    .line 629
    mul-int/lit8 v4, v2, 0x30

    .line 630
    .line 631
    int-to-long v4, v4

    .line 632
    iget-object v6, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 633
    .line 634
    invoke-virtual {v6, v9, v1, v4, v5}, Landroid/hardware/usb/V1_0/PortStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 635
    .line 636
    .line 637
    add-long v6, v4, v18

    .line 638
    .line 639
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    .line 640
    .line 641
    .line 642
    move-result v6

    .line 643
    iput v6, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 644
    .line 645
    add-long v4, v4, v16

    .line 646
    .line 647
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    iput v4, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 652
    .line 653
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    add-int/lit8 v2, v2, 0x1

    .line 657
    .line 658
    goto :goto_4

    .line 659
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    iget-object v2, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    .line 664
    .line 665
    iget-boolean v2, v2, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    .line 666
    .line 667
    if-nez v2, :cond_e

    .line 668
    .line 669
    goto/16 :goto_9

    .line 670
    .line 671
    :cond_e
    if-eqz v1, :cond_f

    .line 672
    .line 673
    iget-object v0, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 674
    .line 675
    invoke-static {v12, v0, v10}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_9

    .line 679
    .line 680
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    .line 681
    .line 682
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 686
    .line 687
    .line 688
    move-result v2

    .line 689
    const/4 v4, 0x0

    .line 690
    :goto_5
    if-ge v4, v2, :cond_15

    .line 691
    .line 692
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    check-cast v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 697
    .line 698
    new-instance v5, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 699
    .line 700
    iget-object v6, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 701
    .line 702
    iget-object v7, v6, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    .line 703
    .line 704
    iget v8, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    .line 705
    .line 706
    iget v9, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    .line 707
    .line 708
    iget-boolean v10, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    .line 709
    .line 710
    iget v11, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    .line 711
    .line 712
    iget-boolean v12, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    .line 713
    .line 714
    iget v14, v6, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 715
    .line 716
    iget-boolean v6, v6, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    .line 717
    .line 718
    sget v35, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    .line 719
    .line 720
    move-object/from16 p1, v0

    .line 721
    .line 722
    const/4 v15, 0x0

    .line 723
    new-array v0, v15, [I

    .line 724
    .line 725
    move-object/from16 v39, v0

    .line 726
    .line 727
    const/16 v41, 0x0

    .line 728
    .line 729
    const/16 v42, 0x0

    .line 730
    .line 731
    const/16 v24, 0x0

    .line 732
    .line 733
    const/16 v31, 0x0

    .line 734
    .line 735
    const/16 v32, 0x0

    .line 736
    .line 737
    const/16 v33, 0x0

    .line 738
    .line 739
    const/16 v34, 0x0

    .line 740
    .line 741
    const/16 v36, 0x0

    .line 742
    .line 743
    const/16 v37, 0x0

    .line 744
    .line 745
    const/16 v38, 0x0

    .line 746
    .line 747
    const/16 v40, 0x0

    .line 748
    .line 749
    move-object/from16 v21, v5

    .line 750
    .line 751
    move-object/from16 v22, v7

    .line 752
    .line 753
    move/from16 v23, v8

    .line 754
    .line 755
    move/from16 v25, v9

    .line 756
    .line 757
    move/from16 v26, v10

    .line 758
    .line 759
    move/from16 v27, v11

    .line 760
    .line 761
    move/from16 v28, v12

    .line 762
    .line 763
    move/from16 v29, v14

    .line 764
    .line 765
    move/from16 v30, v6

    .line 766
    .line 767
    invoke-direct/range {v21 .. v42}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    iget-object v0, v3, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    .line 774
    .line 775
    iget v3, v0, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 776
    .line 777
    const/4 v5, 0x1

    .line 778
    if-ne v3, v5, :cond_11

    .line 779
    .line 780
    iget v5, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    .line 781
    .line 782
    const/4 v6, 0x2

    .line 783
    if-eqz v5, :cond_10

    .line 784
    .line 785
    if-ne v5, v6, :cond_12

    .line 786
    .line 787
    :cond_10
    iget-object v5, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 788
    .line 789
    invoke-virtual {v5}, Lcom/android/server/usb/UsbPortManager;->startBoost()V

    .line 790
    .line 791
    .line 792
    const/4 v7, 0x1

    .line 793
    goto :goto_6

    .line 794
    :cond_11
    const/4 v6, 0x2

    .line 795
    :cond_12
    iget v5, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    .line 796
    .line 797
    const/4 v7, 0x1

    .line 798
    if-ne v5, v7, :cond_14

    .line 799
    .line 800
    if-eqz v3, :cond_13

    .line 801
    .line 802
    if-ne v3, v6, :cond_14

    .line 803
    .line 804
    :cond_13
    iget-object v5, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 805
    .line 806
    invoke-virtual {v5}, Lcom/android/server/usb/UsbPortManager;->stopBoost()V

    .line 807
    .line 808
    .line 809
    :cond_14
    :goto_6
    iput v3, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    .line 810
    .line 811
    iget-object v3, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 812
    .line 813
    new-instance v5, Ljava/lang/StringBuilder;

    .line 814
    .line 815
    const-string v8, "ClientCallback V1_1: "

    .line 816
    .line 817
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    iget-object v0, v0, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    .line 821
    .line 822
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    const/4 v5, 0x4

    .line 830
    invoke-static {v5, v3, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    add-int/lit8 v4, v4, 0x1

    .line 834
    .line 835
    move-object/from16 v0, p1

    .line 836
    .line 837
    goto/16 :goto_5

    .line 838
    .line 839
    :cond_15
    iget-object v0, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 840
    .line 841
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    .line 842
    .line 843
    .line 844
    goto/16 :goto_9

    .line 845
    .line 846
    :cond_16
    move-object v13, v0

    .line 847
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    invoke-virtual {v9, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    .line 859
    .line 860
    .line 861
    const-wide/16 v2, 0x4

    .line 862
    .line 863
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 864
    .line 865
    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 867
    .line 868
    .line 869
    move-result v1

    .line 870
    if-nez v1, :cond_17

    .line 871
    .line 872
    iget-object v1, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 873
    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    const-string v0, " role switch successful"

    .line 883
    .line 884
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    const/4 v2, 0x4

    .line 892
    invoke-static {v2, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    goto/16 :goto_9

    .line 896
    .line 897
    :cond_17
    iget-object v1, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 898
    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    .line 900
    .line 901
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    const-string v0, " role switch failed"

    .line 908
    .line 909
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-static {v12, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    goto/16 :goto_9

    .line 920
    .line 921
    :cond_18
    move-object v13, v0

    .line 922
    move-object v10, v11

    .line 923
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    new-instance v0, Ljava/util/ArrayList;

    .line 927
    .line 928
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v9, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    .line 936
    .line 937
    .line 938
    move-result v11

    .line 939
    mul-int/lit8 v2, v11, 0x28

    .line 940
    .line 941
    int-to-long v2, v2

    .line 942
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 943
    .line 944
    .line 945
    move-result-wide v4

    .line 946
    const-wide/16 v6, 0x0

    .line 947
    .line 948
    const/4 v8, 0x1

    .line 949
    move-object/from16 v1, p2

    .line 950
    .line 951
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 956
    .line 957
    .line 958
    const/4 v4, 0x0

    .line 959
    :goto_7
    if-ge v4, v11, :cond_19

    .line 960
    .line 961
    new-instance v2, Landroid/hardware/usb/V1_0/PortStatus;

    .line 962
    .line 963
    invoke-direct {v2}, Landroid/hardware/usb/V1_0/PortStatus;-><init>()V

    .line 964
    .line 965
    .line 966
    mul-int/lit8 v3, v4, 0x28

    .line 967
    .line 968
    int-to-long v5, v3

    .line 969
    invoke-virtual {v2, v9, v1, v5, v6}, Landroid/hardware/usb/V1_0/PortStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    .line 974
    .line 975
    add-int/lit8 v4, v4, 0x1

    .line 976
    .line 977
    goto :goto_7

    .line 978
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 979
    .line 980
    .line 981
    move-result v1

    .line 982
    iget-object v2, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    .line 983
    .line 984
    iget-boolean v2, v2, Lcom/android/server/usb/hal/port/UsbPortHidl;->mSystemReady:Z

    .line 985
    .line 986
    if-nez v2, :cond_1a

    .line 987
    .line 988
    goto/16 :goto_9

    .line 989
    .line 990
    :cond_1a
    if-eqz v1, :cond_1b

    .line 991
    .line 992
    iget-object v0, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 993
    .line 994
    invoke-static {v12, v0, v10}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    goto/16 :goto_9

    .line 998
    .line 999
    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    .line 1000
    .line 1001
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v2

    .line 1012
    if-eqz v2, :cond_1c

    .line 1013
    .line 1014
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v2

    .line 1018
    check-cast v2, Landroid/hardware/usb/V1_0/PortStatus;

    .line 1019
    .line 1020
    new-instance v3, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 1021
    .line 1022
    iget-object v4, v2, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    .line 1023
    .line 1024
    iget v5, v2, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    .line 1025
    .line 1026
    iget v6, v2, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    .line 1027
    .line 1028
    iget-boolean v7, v2, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    .line 1029
    .line 1030
    iget v8, v2, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    .line 1031
    .line 1032
    iget-boolean v9, v2, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    .line 1033
    .line 1034
    iget v10, v2, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    .line 1035
    .line 1036
    iget-boolean v11, v2, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    .line 1037
    .line 1038
    sget v35, Lcom/android/server/usb/hal/port/UsbPortHidl;->sUsbDataStatus:I

    .line 1039
    .line 1040
    const/4 v12, 0x0

    .line 1041
    new-array v14, v12, [I

    .line 1042
    .line 1043
    move-object/from16 v39, v14

    .line 1044
    .line 1045
    const/16 v41, 0x0

    .line 1046
    .line 1047
    const/16 v42, 0x0

    .line 1048
    .line 1049
    const/16 v24, 0x0

    .line 1050
    .line 1051
    const/16 v31, 0x0

    .line 1052
    .line 1053
    const/16 v32, 0x0

    .line 1054
    .line 1055
    const/16 v33, 0x0

    .line 1056
    .line 1057
    const/16 v34, 0x0

    .line 1058
    .line 1059
    const/16 v36, 0x0

    .line 1060
    .line 1061
    const/16 v37, 0x0

    .line 1062
    .line 1063
    const/16 v38, 0x0

    .line 1064
    .line 1065
    const/16 v40, 0x0

    .line 1066
    .line 1067
    move-object/from16 v21, v3

    .line 1068
    .line 1069
    move-object/from16 v22, v4

    .line 1070
    .line 1071
    move/from16 v23, v5

    .line 1072
    .line 1073
    move/from16 v25, v6

    .line 1074
    .line 1075
    move/from16 v26, v7

    .line 1076
    .line 1077
    move/from16 v27, v8

    .line 1078
    .line 1079
    move/from16 v28, v9

    .line 1080
    .line 1081
    move/from16 v29, v10

    .line 1082
    .line 1083
    move/from16 v30, v11

    .line 1084
    .line 1085
    invoke-direct/range {v21 .. v42}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    iget-object v3, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 1092
    .line 1093
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    const-string v5, "ClientCallback V1_0: "

    .line 1096
    .line 1097
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    iget-object v2, v2, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    .line 1101
    .line 1102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v2

    .line 1109
    const/4 v4, 0x4

    .line 1110
    invoke-static {v4, v3, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    goto :goto_8

    .line 1114
    :cond_1c
    iget-object v0, v13, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1115
    .line 1116
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    .line 1117
    .line 1118
    .line 1119
    :goto_9
    return-void

    .line 1120
    nop

    .line 1121
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
    const-string v0, "android.hardware.usb@1.2::IUsbCallback"

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
    const-string p0, "android.hardware.usb@1.2::IUsbCallback@Stub"

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
