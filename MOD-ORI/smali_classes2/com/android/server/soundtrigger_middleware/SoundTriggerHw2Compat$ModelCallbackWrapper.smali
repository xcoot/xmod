.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# instance fields
.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 8
    .line 9
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
        -0x18t
        -0x38t
        0x6ct
        0x69t
        -0x3ct
        0x38t
        -0x26t
        -0x73t
        0x15t
        0x49t
        -0x7bt
        0x6ct
        0x1bt
        -0x4dt
        -0x1et
        -0x2ft
        -0x48t
        -0x26t
        0x52t
        0x72t
        0x2ft
        -0x7et
        0x35t
        -0x1t
        0x49t
        -0x5dt
        0xft
        0x2ct
        -0x32t
        -0x6ft
        0x74t
        0x2ct
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :array_1
    .array-data 1
        0x1at
        0x6et
        0x2bt
        -0x2et
        -0x77t
        -0xet
        0x29t
        0x31t
        -0x3bt
        0x26t
        -0x4et
        0x19t
        0x16t
        -0x6ft
        0xft
        0x1dt
        0x4ct
        0x43t
        0x6bt
        0x7at
        -0x35t
        -0x6bt
        0x56t
        -0x1ct
        0x24t
        0x3dt
        -0x1ct
        -0x32t
        -0x72t
        0x6ct
        -0x3et
        -0x1ct
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
    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHwCallback"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v2, "android.hardware.soundtrigger@2.1::ISoundTriggerHwCallback"

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
    const-string p0, "android.hardware.soundtrigger@2.1::ISoundTriggerHwCallback"

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    const-string v11, "SoundTrigger RecognitionEvent"

    .line 8
    .line 9
    const-wide/16 v1, 0x10

    .line 10
    .line 11
    const-wide/16 v3, 0x4

    .line 12
    .line 13
    const-string v5, "android.hardware.soundtrigger@2.0::ISoundTriggerHwCallback"

    .line 14
    .line 15
    const-string v6, "android.hardware.soundtrigger@2.1::ISoundTriggerHwCallback"

    .line 16
    .line 17
    const-wide/16 v7, 0x0

    .line 18
    .line 19
    const/4 v12, 0x0

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 24
    .line 25
    sparse-switch p1, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :sswitch_0
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :sswitch_1
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v10}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :sswitch_2
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :sswitch_3
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :sswitch_4
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->getHashChain()Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Landroid/os/HwBlob;

    .line 83
    .line 84
    const/16 v2, 0x10

    .line 85
    .line 86
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const-wide/16 v3, 0x8

    .line 94
    .line 95
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v3, 0xc

    .line 99
    .line 100
    invoke-virtual {v1, v3, v4, v12}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Landroid/os/HwBlob;

    .line 104
    .line 105
    mul-int/lit8 v4, v2, 0x20

    .line 106
    .line 107
    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    if-ge v12, v2, :cond_1

    .line 111
    .line 112
    mul-int/lit8 v4, v12, 0x20

    .line 113
    .line 114
    int-to-long v4, v4

    .line 115
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    check-cast v6, [B

    .line 120
    .line 121
    if-eqz v6, :cond_0

    .line 122
    .line 123
    array-length v9, v6

    .line 124
    const/16 v11, 0x20

    .line 125
    .line 126
    if-ne v9, v11, :cond_0

    .line 127
    .line 128
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v12, v12, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    const-string v1, "Array element is not of the expected length"

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_1
    invoke-virtual {v1, v7, v8, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_5

    .line 152
    .line 153
    :sswitch_5
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10, v6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_5

    .line 166
    .line 167
    :sswitch_6
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 171
    .line 172
    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_5

    .line 183
    .line 184
    :sswitch_7
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->interfaceChain()Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_5

    .line 201
    .line 202
    :pswitch_0
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v11, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .line 209
    .line 210
    const-wide/16 v5, 0x40

    .line 211
    .line 212
    invoke-virtual {v9, v5, v6}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 213
    .line 214
    .line 215
    move-result-object v13

    .line 216
    invoke-virtual {v13, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 220
    .line 221
    .line 222
    invoke-virtual {v13, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    int-to-long v1, v8

    .line 227
    invoke-virtual {v13}, Landroid/os/HwBlob;->handle()J

    .line 228
    .line 229
    .line 230
    move-result-wide v3

    .line 231
    const/4 v7, 0x1

    .line 232
    const-wide/16 v5, 0x8

    .line 233
    .line 234
    move-object/from16 v0, p2

    .line 235
    .line 236
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 241
    .line 242
    .line 243
    move v1, v12

    .line 244
    :goto_1
    if-ge v1, v8, :cond_2

    .line 245
    .line 246
    int-to-long v2, v1

    .line 247
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    add-int/lit8 v1, v1, 0x1

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_2
    const-wide/16 v5, 0x18

    .line 262
    .line 263
    :try_start_0
    invoke-virtual {v13, v5, v6}, Landroid/os/HwBlob;->getFieldHandle(J)J

    .line 264
    .line 265
    .line 266
    move-result-wide v1

    .line 267
    invoke-virtual {v13}, Landroid/os/HwBlob;->handle()J

    .line 268
    .line 269
    .line 270
    move-result-wide v3

    .line 271
    move-object/from16 v0, p2

    .line 272
    .line 273
    invoke-virtual/range {v0 .. v6}, Landroid/os/HwParcel;->readEmbeddedHidlMemory(JJJ)Landroid/os/HidlMemory;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .line 279
    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 281
    .line 282
    .line 283
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_5

    .line 290
    .line 291
    :catch_0
    move-exception v0

    .line 292
    new-instance v1, Ljava/lang/RuntimeException;

    .line 293
    .line 294
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 295
    .line 296
    .line 297
    throw v1

    .line 298
    :pswitch_1
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    new-instance v11, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 302
    .line 303
    const/4 v1, 0x1

    .line 304
    invoke-direct {v11, v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;-><init>(I)V

    .line 305
    .line 306
    .line 307
    const-wide/16 v1, 0xb0

    .line 308
    .line 309
    invoke-virtual {v9, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    iget-object v2, v11, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 316
    .line 317
    invoke-virtual {v2, v9, v1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    .line 318
    .line 319
    .line 320
    const-wide/16 v2, 0xa8

    .line 321
    .line 322
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 323
    .line 324
    .line 325
    move-result v13

    .line 326
    mul-int/lit8 v2, v13, 0x20

    .line 327
    .line 328
    int-to-long v2, v2

    .line 329
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 330
    .line 331
    .line 332
    move-result-wide v4

    .line 333
    const/4 v8, 0x1

    .line 334
    const-wide/16 v6, 0xa0

    .line 335
    .line 336
    move-object/from16 v1, p2

    .line 337
    .line 338
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    iget-object v2, v11, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v2, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 347
    .line 348
    .line 349
    move v2, v12

    .line 350
    :goto_2
    if-ge v2, v13, :cond_3

    .line 351
    .line 352
    new-instance v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 353
    .line 354
    invoke-direct {v3}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;-><init>()V

    .line 355
    .line 356
    .line 357
    mul-int/lit8 v4, v2, 0x20

    .line 358
    .line 359
    int-to-long v4, v4

    .line 360
    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 361
    .line 362
    .line 363
    iget-object v4, v11, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v4, Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    add-int/lit8 v2, v2, 0x1

    .line 371
    .line 372
    goto :goto_2

    .line 373
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v11}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->phraseRecognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_5

    .line 386
    .line 387
    :pswitch_2
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    new-instance v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 391
    .line 392
    const/4 v2, 0x0

    .line 393
    invoke-direct {v1, v2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;-><init>(I)V

    .line 394
    .line 395
    .line 396
    const-wide/16 v2, 0xa0

    .line 397
    .line 398
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-virtual {v1, v9, v2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 406
    .line 407
    .line 408
    new-instance v2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;

    .line 409
    .line 410
    invoke-direct {v2}, Landroid/media/soundtrigger_middleware/RecognitionEventSys;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    iput-object v3, v2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    .line 418
    .line 419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 420
    .line 421
    .line 422
    move-result-wide v3

    .line 423
    iput-wide v3, v2, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->halEventReceivedMillis:J

    .line 424
    .line 425
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 426
    .line 427
    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 430
    .line 431
    iget v1, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 432
    .line 433
    invoke-interface {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_5

    .line 443
    .line 444
    :pswitch_3
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    new-instance v11, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .line 451
    .line 452
    const-wide/16 v5, 0x18

    .line 453
    .line 454
    invoke-virtual {v9, v5, v6}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v0, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    int-to-long v1, v8

    .line 469
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    .line 470
    .line 471
    .line 472
    move-result-wide v3

    .line 473
    const/4 v7, 0x1

    .line 474
    const-wide/16 v5, 0x8

    .line 475
    .line 476
    move-object/from16 v0, p2

    .line 477
    .line 478
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 483
    .line 484
    .line 485
    move v1, v12

    .line 486
    :goto_3
    if-ge v1, v8, :cond_4

    .line 487
    .line 488
    int-to-long v2, v1

    .line 489
    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    add-int/lit8 v1, v1, 0x1

    .line 501
    .line 502
    goto :goto_3

    .line 503
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 504
    .line 505
    .line 506
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_5

    .line 513
    .line 514
    :pswitch_4
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    new-instance v13, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 518
    .line 519
    invoke-direct {v13}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;-><init>()V

    .line 520
    .line 521
    .line 522
    new-instance v14, Ljava/util/ArrayList;

    .line 523
    .line 524
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .line 526
    .line 527
    const-wide/16 v1, 0x88

    .line 528
    .line 529
    invoke-virtual {v9, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-virtual {v13, v9, v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    .line 534
    .line 535
    .line 536
    const-wide/16 v2, 0x80

    .line 537
    .line 538
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 539
    .line 540
    .line 541
    move-result v15

    .line 542
    mul-int/lit8 v2, v15, 0x20

    .line 543
    .line 544
    int-to-long v2, v2

    .line 545
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 546
    .line 547
    .line 548
    move-result-wide v4

    .line 549
    const/4 v8, 0x1

    .line 550
    const-wide/16 v6, 0x78

    .line 551
    .line 552
    move-object/from16 v1, p2

    .line 553
    .line 554
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 559
    .line 560
    .line 561
    move v2, v12

    .line 562
    :goto_4
    if-ge v2, v15, :cond_5

    .line 563
    .line 564
    new-instance v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 565
    .line 566
    invoke-direct {v3}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;-><init>()V

    .line 567
    .line 568
    .line 569
    mul-int/lit8 v4, v2, 0x20

    .line 570
    .line 571
    int-to-long v4, v4

    .line 572
    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    add-int/lit8 v2, v2, 0x1

    .line 579
    .line 580
    goto :goto_4

    .line 581
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 582
    .line 583
    .line 584
    new-instance v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 585
    .line 586
    const/4 v2, 0x1

    .line 587
    invoke-direct {v1, v2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;-><init>(I)V

    .line 588
    .line 589
    .line 590
    new-instance v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 591
    .line 592
    const/4 v3, 0x0

    .line 593
    invoke-direct {v2, v3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;-><init>(I)V

    .line 594
    .line 595
    .line 596
    iput-object v13, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 597
    .line 598
    iget-object v3, v13, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 599
    .line 600
    invoke-static {v3, v11}, Landroid/os/HidlMemoryUtil;->byteListToHidlMemory(Ljava/util/List;Ljava/lang/String;)Landroid/os/HidlMemory;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    iput-object v3, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/lang/Object;

    .line 605
    .line 606
    iget-object v3, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 607
    .line 608
    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 609
    .line 610
    new-instance v4, Ljava/util/ArrayList;

    .line 611
    .line 612
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .line 614
    .line 615
    iput-object v4, v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 616
    .line 617
    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 618
    .line 619
    iput-object v14, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/lang/Object;

    .line 620
    .line 621
    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->phraseRecognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 625
    .line 626
    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 628
    .line 629
    .line 630
    goto :goto_5

    .line 631
    :pswitch_5
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    new-instance v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 635
    .line 636
    invoke-direct {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;-><init>()V

    .line 637
    .line 638
    .line 639
    const-wide/16 v2, 0x78

    .line 640
    .line 641
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-virtual {v1, v9, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 649
    .line 650
    .line 651
    new-instance v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 652
    .line 653
    const/4 v3, 0x0

    .line 654
    invoke-direct {v2, v3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;-><init>(I)V

    .line 655
    .line 656
    .line 657
    iput-object v1, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 658
    .line 659
    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 660
    .line 661
    invoke-static {v1, v11}, Landroid/os/HidlMemoryUtil;->byteListToHidlMemory(Ljava/util/List;Ljava/lang/String;)Landroid/os/HidlMemory;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    iput-object v1, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/lang/Object;

    .line 666
    .line 667
    iget-object v1, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 668
    .line 669
    check-cast v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 670
    .line 671
    new-instance v3, Ljava/util/ArrayList;

    .line 672
    .line 673
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .line 675
    .line 676
    iput-object v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    .line 677
    .line 678
    new-instance v1, Landroid/media/soundtrigger_middleware/RecognitionEventSys;

    .line 679
    .line 680
    invoke-direct {v1}, Landroid/media/soundtrigger_middleware/RecognitionEventSys;-><init>()V

    .line 681
    .line 682
    .line 683
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;

    .line 684
    .line 685
    .line 686
    move-result-object v3

    .line 687
    iput-object v3, v1, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    .line 688
    .line 689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 690
    .line 691
    .line 692
    move-result-wide v3

    .line 693
    iput-wide v3, v1, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->halEventReceivedMillis:J

    .line 694
    .line 695
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 696
    .line 697
    iget-object v2, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 698
    .line 699
    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 700
    .line 701
    iget v2, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 702
    .line 703
    invoke-interface {v0, v2, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->recognitionCallback(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v10, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 707
    .line 708
    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 710
    .line 711
    .line 712
    :goto_5
    return-void

    .line 713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
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

.method public final phraseRecognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)V
    .locals 12

    .line 1
    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    .line 20
    .line 21
    iget-object v2, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    new-array v2, v2, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 30
    .line 31
    iput-object v2, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    move v3, v2

    .line 35
    :goto_0
    iget-object v4, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ge v3, v4, :cond_1

    .line 44
    .line 45
    iget-object v4, v1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 46
    .line 47
    iget-object v5, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    .line 56
    .line 57
    new-instance v6, Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 58
    .line 59
    invoke-direct {v6}, Landroid/media/soundtrigger/PhraseRecognitionExtra;-><init>()V

    .line 60
    .line 61
    .line 62
    iget v7, v5, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    .line 63
    .line 64
    iput v7, v6, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    .line 65
    .line 66
    iget v7, v5, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    .line 67
    .line 68
    invoke-static {v7}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    iput v7, v6, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    .line 73
    .line 74
    iget v7, v5, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    .line 75
    .line 76
    iput v7, v6, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    .line 77
    .line 78
    iget-object v7, v5, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    new-array v7, v7, [Landroid/media/soundtrigger/ConfidenceLevel;

    .line 85
    .line 86
    iput-object v7, v6, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    .line 87
    .line 88
    move v7, v2

    .line 89
    :goto_1
    iget-object v8, v5, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-ge v7, v8, :cond_0

    .line 96
    .line 97
    iget-object v8, v6, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    .line 98
    .line 99
    iget-object v9, v5, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    check-cast v9, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    .line 106
    .line 107
    new-instance v10, Landroid/media/soundtrigger/ConfidenceLevel;

    .line 108
    .line 109
    invoke-direct {v10}, Landroid/media/soundtrigger/ConfidenceLevel;-><init>()V

    .line 110
    .line 111
    .line 112
    iget v11, v9, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    .line 113
    .line 114
    iput v11, v10, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    .line 115
    .line 116
    iget v9, v9, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    .line 117
    .line 118
    iput v9, v10, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    .line 119
    .line 120
    aput-object v10, v8, v7

    .line 121
    .line 122
    add-int/lit8 v7, v7, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_0
    aput-object v6, v4, v3

    .line 126
    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 131
    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    iput-wide v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->halEventReceivedMillis:J

    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    .line 139
    .line 140
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    .line 143
    .line 144
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    .line 147
    .line 148
    iget p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 149
    .line 150
    invoke-interface {p0, p1, v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;->phraseRecognitionCallback(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final ping()V
    .locals 0

    .line 1
    return-void
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    const-string v0, "android.hardware.soundtrigger@2.1::ISoundTriggerHwCallback"

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
    const-string p0, "android.hardware.soundtrigger@2.1::ISoundTriggerHwCallback@Stub"

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
