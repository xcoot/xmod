.class public abstract Landroid/hidl/manager/V1_2/IServiceManager$Stub;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/manager/V1_2/IServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
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
        0x6ft
        0x3at
        -0x76t
        0x3ft
        -0x2ct
        -0x41t
        -0x43t
        0x2t
        -0x1ct
        -0x1at
        0x1ct
        0x73t
        0x2dt
        0x2dt
        -0xat
        0x16t
        -0x1t
        0x69t
        0x43t
        0x4at
        0x1et
        -0x28t
        0x3ct
        -0x26t
        0x33t
        0x73t
        0x3t
        -0x53t
        -0x3at
        -0x29t
        0x14t
        -0x21t
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
        0xbt
        -0x6ct
        -0x24t
        -0x79t
        0x6ft
        0x74t
        -0x62t
        -0x2et
        0x4at
        -0x68t
        -0xat
        0x1ct
        0x41t
        -0x2ct
        0x6at
        -0x29t
        0x5at
        0x27t
        0x51t
        0x11t
        0x63t
        -0xft
        -0x6at
        -0x76t
        0x8t
        0x42t
        0x13t
        -0x5dt
        0x3ct
        0x68t
        0x4et
        -0xat
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
        -0x7bt
        0x39t
        0x4ft
        -0x76t
        0xdt
        0x15t
        -0x19t
        -0x5t
        0x2et
        -0x1ct
        0x5ct
        0x52t
        -0x2ft
        -0x5t
        -0x75t
        -0x71t
        -0x2dt
        -0x3ft
        0x3ct
        0x33t
        0x3et
        0x63t
        -0x39t
        -0x74t
        0x4at
        -0x5ft
        -0x1t
        -0x7at
        -0x7ct
        0xct
        -0xat
        -0x24t
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
    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v2, "android.hidl.manager@1.2::IServiceManager"

    .line 8
    .line 9
    const-string v3, "android.hidl.manager@1.1::IServiceManager"

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
    const-string p0, "android.hidl.manager@1.2::IServiceManager"

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

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string p4, "android.hidl.manager@1.2::IServiceManager"

    .line 2
    .line 3
    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string p4, "android.hidl.base@1.0::IBase"

    .line 10
    .line 11
    sparse-switch p1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->notifySyspropsChanged()V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->ping()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->setHALInstrumentation()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Landroid/os/HwBlob;

    .line 75
    .line 76
    const/16 p2, 0x10

    .line 77
    .line 78
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    const-wide/16 v2, 0x8

    .line 86
    .line 87
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v2, 0xc

    .line 91
    .line 92
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 93
    .line 94
    .line 95
    new-instance p4, Landroid/os/HwBlob;

    .line 96
    .line 97
    mul-int/lit8 v0, p2, 0x20

    .line 98
    .line 99
    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 100
    .line 101
    .line 102
    :goto_0
    if-ge v1, p2, :cond_1

    .line 103
    .line 104
    mul-int/lit8 v0, v1, 0x20

    .line 105
    .line 106
    int-to-long v2, v0

    .line 107
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, [B

    .line 112
    .line 113
    if-eqz v0, :cond_0

    .line 114
    .line 115
    array-length v4, v0

    .line 116
    const/16 v5, 0x20

    .line 117
    .line 118
    if-ne v4, v5, :cond_0

    .line 119
    .line 120
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string p1, "Array element is not of the expected length"

    .line 129
    .line 130
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_1
    const-wide/16 v0, 0x0

    .line 135
    .line 136
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :sswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_2

    .line 204
    .line 205
    :pswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p4

    .line 216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-static {p2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-interface {p0, p1, p4, p2}, Landroid/hidl/manager/V1_2/IServiceManager;->tryUnregister(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :pswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-interface {p0, p1}, Landroid/hidl/manager/V1_2/IServiceManager;->listManifestByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :pswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 269
    .line 270
    .line 271
    move-result-object p4

    .line 272
    invoke-static {p4}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    .line 273
    .line 274
    .line 275
    move-result-object p4

    .line 276
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    invoke-interface {p0, p1, p4, p2}, Landroid/hidl/manager/V1_2/IServiceManager;->addWithChain(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;Ljava/util/ArrayList;)Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :pswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-static {p1}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-static {p2}, Landroid/hidl/manager/V1_2/IClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_2/IClientCallback;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_2/IServiceManager;->unregisterClientCallback(Landroid/hidl/base/V1_0/IBase;Landroid/hidl/manager/V1_2/IClientCallback;)Z

    .line 315
    .line 316
    .line 317
    move-result p0

    .line 318
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_2

    .line 328
    .line 329
    :pswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p4

    .line 340
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v0}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    invoke-static {p2}, Landroid/hidl/manager/V1_2/IClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_2/IClientCallback;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    invoke-interface {p0, p1, p4, v0, p2}, Landroid/hidl/manager/V1_2/IServiceManager;->registerClientCallback(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;Landroid/hidl/manager/V1_2/IClientCallback;)Z

    .line 357
    .line 358
    .line 359
    move-result p0

    .line 360
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_2

    .line 370
    .line 371
    :pswitch_5
    const-string p1, "android.hidl.manager@1.1::IServiceManager"

    .line 372
    .line 373
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p4

    .line 384
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 385
    .line 386
    .line 387
    move-result-object p2

    .line 388
    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 389
    .line 390
    .line 391
    move-result-object p2

    .line 392
    invoke-interface {p0, p1, p4, p2}, Landroid/hidl/manager/V1_1/IServiceManager;->unregisterForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    .line 393
    .line 394
    .line 395
    move-result p0

    .line 396
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_2

    .line 406
    .line 407
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p2

    .line 418
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_2

    .line 428
    .line 429
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-interface {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 437
    .line 438
    .line 439
    invoke-static {p3, p0}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 443
    .line 444
    .line 445
    goto/16 :goto_2

    .line 446
    .line 447
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p4

    .line 458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 459
    .line 460
    .line 461
    move-result-object p2

    .line 462
    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 463
    .line 464
    .line 465
    move-result-object p2

    .line 466
    invoke-interface {p0, p1, p4, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    .line 467
    .line 468
    .line 469
    move-result p0

    .line 470
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_2

    .line 480
    .line 481
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-interface {p0, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 489
    .line 490
    .line 491
    move-result-object p0

    .line 492
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 499
    .line 500
    .line 501
    goto :goto_2

    .line 502
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-interface {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->list()Ljava/util/ArrayList;

    .line 506
    .line 507
    .line 508
    move-result-object p0

    .line 509
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 516
    .line 517
    .line 518
    goto :goto_2

    .line 519
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object p2

    .line 530
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    .line 531
    .line 532
    .line 533
    move-result p0

    .line 534
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 541
    .line 542
    .line 543
    goto :goto_2

    .line 544
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 552
    .line 553
    .line 554
    move-result-object p2

    .line 555
    invoke-static {p2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    .line 556
    .line 557
    .line 558
    move-result-object p2

    .line 559
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    .line 560
    .line 561
    .line 562
    move-result p0

    .line 563
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 570
    .line 571
    .line 572
    goto :goto_2

    .line 573
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p2

    .line 584
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;

    .line 585
    .line 586
    .line 587
    move-result-object p0

    .line 588
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 589
    .line 590
    .line 591
    if-nez p0, :cond_2

    .line 592
    .line 593
    const/4 p0, 0x0

    .line 594
    goto :goto_1

    .line 595
    :cond_2
    invoke-interface {p0}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    .line 596
    .line 597
    .line 598
    move-result-object p0

    .line 599
    :goto_1
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 603
    .line 604
    .line 605
    :goto_2
    return-void

    .line 606
    nop

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
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

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    const-string v0, "android.hidl.manager@1.2::IServiceManager"

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

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "@Stub"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
