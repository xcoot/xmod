.class public final Lcom/android/server/broadcastradio/hal2/RadioModule$1;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 8
    return-void
.end method

.method private final debug$com$android$server$broadcastradio$hal2$RadioModule$1(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final debug$com$android$server$broadcastradio$hal2$RadioModule$2(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final ping$com$android$server$broadcastradio$hal2$RadioModule$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final ping$com$android$server$broadcastradio$hal2$RadioModule$2()V
    .locals 0

    .line 1
    return-void
.end method

.method private final setHALInstrumentation$com$android$server$broadcastradio$hal2$RadioModule$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private final setHALInstrumentation$com$android$server$broadcastradio$hal2$RadioModule$2()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 8
    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 11
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 17
    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 27
    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 30
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    .line 33
    move-result v0

    .line 34
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 36
    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 3
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    new-instance p0, Ljava/util/ArrayList;

    .line 10
    new-array v1, v0, [B

    .line 12
    fill-array-data v1, :array_0

    .line 15
    new-array v0, v0, [B

    .line 17
    fill-array-data v0, :array_1

    .line 20
    filled-new-array {v1, v0}, [[B

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    return-object p0

    .line 32
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    .line 34
    new-array v1, v0, [B

    .line 36
    fill-array-data v1, :array_2

    .line 39
    new-array v0, v0, [B

    .line 41
    fill-array-data v0, :array_3

    .line 44
    filled-new-array {v1, v0}, [[B

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 63
    :array_0
    .array-data 1
        0x3dt
        -0x72t
        -0x2at
        0x7dt
        -0x80t
        0x7et
        -0x61t
        0x15t
        -0x30t
        0x70t
        -0x7dt
        -0x70t
        -0x5ct
        0x16t
        -0x42t
        -0x20t
        0x9t
        0x20t
        -0xat
        -0x5et
        0x21t
        -0x6at
        -0x3ft
        0x4t
        -0x34t
        -0x62t
        0x44t
        0x3ct
        -0x73t
        0x21t
        0x7dt
        -0x8t
    .end array-data

    .line 83
    :array_1
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

    :array_2
    .array-data 1
        -0x51t
        0x24t
        -0x48t
        0x7ct
        -0x58t
        -0x48t
        -0x10t
        0x2ft
        -0x33t
        -0x1et
        0x5t
        -0x1ct
        0x7dt
        -0x4at
        -0x57t
        0x60t
        -0x61t
        -0x39t
        -0x17t
        -0x29t
        0x7dt
        0x73t
        -0x1at
        -0x6ct
        -0x14t
        -0x71t
        -0x64t
        0x50t
        -0x74t
        -0x5ft
        -0x6bt
        0x75t
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
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    new-instance p0, Ljava/util/ArrayList;

    .line 8
    const-string v0, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    .line 10
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    .line 26
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    .line 28
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    const-string p0, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v9, p2

    .line 7
    move-object/from16 v2, p3

    .line 9
    iget v3, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 11
    packed-switch v3, :pswitch_data_0

    .line 14
    const-string v3, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    .line 16
    const-wide/16 v4, 0x8

    .line 18
    const-string v6, "android.hidl.base@1.0::IBase"

    .line 20
    const/4 v10, 0x0

    .line 21
    sparse-switch v1, :sswitch_data_0

    .line 24
    goto/16 :goto_3

    .line 26
    :sswitch_0
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 32
    goto/16 :goto_3

    .line 34
    :sswitch_1
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 44
    invoke-virtual {v0, v2}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 47
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 50
    goto/16 :goto_3

    .line 52
    :sswitch_2
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 61
    goto/16 :goto_3

    .line 63
    :sswitch_3
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    goto/16 :goto_3

    .line 68
    :sswitch_4
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->getHashChain()Ljava/util/ArrayList;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 78
    new-instance v1, Landroid/os/HwBlob;

    .line 80
    const/16 v3, 0x10

    .line 82
    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v3

    .line 89
    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 92
    const-wide/16 v4, 0xc

    .line 94
    invoke-virtual {v1, v4, v5, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 97
    new-instance v4, Landroid/os/HwBlob;

    .line 99
    mul-int/lit8 v5, v3, 0x20

    .line 101
    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 104
    :goto_0
    if-ge v10, v3, :cond_1

    .line 106
    mul-int/lit8 v5, v10, 0x20

    .line 108
    int-to-long v5, v5

    .line 109
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v7

    .line 113
    check-cast v7, [B

    .line 115
    if-eqz v7, :cond_0

    .line 117
    array-length v8, v7

    .line 118
    const/16 v9, 0x20

    .line 120
    if-ne v8, v9, :cond_0

    .line 122
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 125
    add-int/lit8 v10, v10, 0x1

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 130
    const-string v1, "Array element is not of the expected length"

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    throw v0

    .line 136
    :cond_1
    const-wide/16 v5, 0x0

    .line 138
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 141
    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 147
    goto/16 :goto_3

    .line 149
    :sswitch_5
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 155
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 161
    goto/16 :goto_3

    .line 163
    :sswitch_6
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 172
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 178
    goto/16 :goto_3

    .line 180
    :sswitch_7
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->interfaceChain()Ljava/util/ArrayList;

    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 190
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 196
    goto/16 :goto_3

    .line 198
    :sswitch_8
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    new-instance v11, Ljava/util/ArrayList;

    .line 203
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 206
    const-wide/16 v1, 0x10

    .line 208
    invoke-virtual {v9, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    .line 215
    move-result v12

    .line 216
    mul-int/lit8 v2, v12, 0x38

    .line 218
    int-to-long v2, v2

    .line 219
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 222
    move-result-wide v4

    .line 223
    const-wide/16 v6, 0x0

    .line 225
    const/4 v8, 0x1

    .line 226
    move-object/from16 v1, p2

    .line 228
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 231
    move-result-object v13

    .line 232
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 235
    move v14, v10

    .line 236
    :goto_1
    if-ge v14, v12, :cond_3

    .line 238
    new-instance v15, Landroid/hardware/broadcastradio/V2_0/Announcement;

    .line 240
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v1, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 245
    invoke-direct {v1}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 248
    iput-object v1, v15, Landroid/hardware/broadcastradio/V2_0/Announcement;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 250
    iput-byte v10, v15, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    .line 252
    new-instance v8, Ljava/util/ArrayList;

    .line 254
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iput-object v8, v15, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    .line 259
    mul-int/lit8 v2, v14, 0x38

    .line 261
    int-to-long v2, v2

    .line 262
    invoke-virtual {v1, v9, v13, v2, v3}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 265
    const-wide/16 v4, 0x20

    .line 267
    add-long/2addr v4, v2

    .line 268
    invoke-virtual {v13, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    .line 271
    move-result v1

    .line 272
    iput-byte v1, v15, Landroid/hardware/broadcastradio/V2_0/Announcement;->type:B

    .line 274
    const-wide/16 v4, 0x28

    .line 276
    add-long v6, v2, v4

    .line 278
    const-wide/16 v4, 0x30

    .line 280
    add-long/2addr v2, v4

    .line 281
    invoke-virtual {v13, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 284
    move-result v4

    .line 285
    mul-int/lit8 v1, v4, 0x20

    .line 287
    int-to-long v2, v1

    .line 288
    invoke-virtual {v13}, Landroid/os/HwBlob;->handle()J

    .line 291
    move-result-wide v16

    .line 292
    const/16 v18, 0x1

    .line 294
    move-object/from16 v1, p2

    .line 296
    move v10, v4

    .line 297
    move-wide/from16 v4, v16

    .line 299
    move-object/from16 v16, v8

    .line 301
    move/from16 v8, v18

    .line 303
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 306
    move-result-object v1

    .line 307
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 310
    const/4 v2, 0x0

    .line 311
    :goto_2
    if-ge v2, v10, :cond_2

    .line 313
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    .line 315
    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;-><init>()V

    .line 318
    mul-int/lit8 v4, v2, 0x20

    .line 320
    int-to-long v4, v4

    .line 321
    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 324
    iget-object v4, v15, Landroid/hardware/broadcastradio/V2_0/Announcement;->vendorInfo:Ljava/util/ArrayList;

    .line 326
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v2, v2, 0x1

    .line 331
    goto :goto_2

    .line 332
    :cond_2
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v14, v14, 0x1

    .line 337
    const/4 v10, 0x0

    .line 338
    goto :goto_1

    .line 339
    :cond_3
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 341
    check-cast v0, Landroid/hardware/radio/IAnnouncementListener;

    .line 343
    invoke-virtual {v11}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 346
    move-result-object v1

    .line 347
    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$2$$ExternalSyntheticLambda0;

    .line 349
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 355
    move-result-object v1

    .line 356
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 359
    move-result-object v2

    .line 360
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Ljava/util/List;

    .line 366
    invoke-interface {v0, v1}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V

    .line 369
    :goto_3
    return-void

    .line 370
    :pswitch_0
    const/4 v3, 0x1

    .line 371
    const-wide/16 v10, 0x20

    .line 373
    const-wide/16 v4, 0x0

    .line 375
    const-string v6, "android.hardware.broadcastradio@2.0::ITunerCallback"

    .line 377
    if-eq v1, v3, :cond_c

    .line 379
    const/4 v3, 0x2

    .line 380
    if-eq v1, v3, :cond_b

    .line 382
    const/4 v3, 0x3

    .line 383
    const/4 v12, 0x0

    .line 384
    if-eq v1, v3, :cond_8

    .line 386
    const/4 v3, 0x4

    .line 387
    if-eq v1, v3, :cond_7

    .line 389
    const/4 v3, 0x5

    .line 390
    if-eq v1, v3, :cond_6

    .line 392
    const-string v3, "android.hidl.base@1.0::IBase"

    .line 394
    sparse-switch v1, :sswitch_data_1

    .line 397
    goto/16 :goto_7

    .line 399
    :sswitch_9
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 405
    goto/16 :goto_7

    .line 407
    :sswitch_a
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v2, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 417
    invoke-virtual {v0, v2}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 423
    goto/16 :goto_7

    .line 425
    :sswitch_b
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v2, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 434
    goto/16 :goto_7

    .line 436
    :sswitch_c
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    goto/16 :goto_7

    .line 441
    :sswitch_d
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->getHashChain()Ljava/util/ArrayList;

    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v2, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 451
    new-instance v1, Landroid/os/HwBlob;

    .line 453
    const/16 v3, 0x10

    .line 455
    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 458
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 461
    move-result v3

    .line 462
    const-wide/16 v6, 0x8

    .line 464
    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 467
    const-wide/16 v6, 0xc

    .line 469
    invoke-virtual {v1, v6, v7, v12}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 472
    new-instance v6, Landroid/os/HwBlob;

    .line 474
    mul-int/lit8 v7, v3, 0x20

    .line 476
    invoke-direct {v6, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 479
    :goto_4
    if-ge v12, v3, :cond_5

    .line 481
    mul-int/lit8 v7, v12, 0x20

    .line 483
    int-to-long v7, v7

    .line 484
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 487
    move-result-object v9

    .line 488
    check-cast v9, [B

    .line 490
    if-eqz v9, :cond_4

    .line 492
    array-length v10, v9

    .line 493
    const/16 v11, 0x20

    .line 495
    if-ne v10, v11, :cond_4

    .line 497
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 500
    add-int/lit8 v12, v12, 0x1

    .line 502
    goto :goto_4

    .line 503
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 505
    const-string v1, "Array element is not of the expected length"

    .line 507
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 510
    throw v0

    .line 511
    :cond_5
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 514
    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 520
    goto/16 :goto_7

    .line 522
    :sswitch_e
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v2, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 528
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 534
    goto/16 :goto_7

    .line 536
    :sswitch_f
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 545
    invoke-virtual {v2, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 551
    goto/16 :goto_7

    .line 553
    :sswitch_10
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->interfaceChain()Ljava/util/ArrayList;

    .line 559
    move-result-object v0

    .line 560
    invoke-virtual {v2, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 563
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 569
    goto/16 :goto_7

    .line 571
    :cond_6
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-static/range {p2 .. p2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    .line 577
    move-result-object v1

    .line 578
    iget-object v2, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 580
    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 582
    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;

    .line 584
    const/4 v4, 0x2

    .line 585
    invoke-direct {v3, v4, v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 588
    invoke-virtual {v2, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 591
    goto/16 :goto_7

    .line 593
    :cond_7
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    .line 599
    move-result v1

    .line 600
    iget-object v2, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 602
    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 604
    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;

    .line 606
    invoke-direct {v3, v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Z)V

    .line 609
    invoke-virtual {v2, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 612
    goto/16 :goto_7

    .line 614
    :cond_8
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    new-instance v13, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    .line 619
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 622
    iput-boolean v12, v13, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    .line 624
    iput-boolean v12, v13, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    .line 626
    new-instance v14, Ljava/util/ArrayList;

    .line 628
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 631
    iput-object v14, v13, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    .line 633
    new-instance v1, Ljava/util/ArrayList;

    .line 635
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    iput-object v1, v13, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    .line 640
    const-wide/16 v1, 0x28

    .line 642
    invoke-virtual {v9, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 645
    move-result-object v15

    .line 646
    invoke-virtual {v15, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    .line 649
    move-result v1

    .line 650
    iput-boolean v1, v13, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->purge:Z

    .line 652
    const-wide/16 v1, 0x1

    .line 654
    invoke-virtual {v15, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    .line 657
    move-result v1

    .line 658
    iput-boolean v1, v13, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->complete:Z

    .line 660
    const-wide/16 v1, 0x10

    .line 662
    invoke-virtual {v15, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 665
    move-result v8

    .line 666
    mul-int/lit8 v1, v8, 0x78

    .line 668
    int-to-long v2, v1

    .line 669
    invoke-virtual {v15}, Landroid/os/HwBlob;->handle()J

    .line 672
    move-result-wide v4

    .line 673
    const/16 v16, 0x1

    .line 675
    const-wide/16 v6, 0x8

    .line 677
    move-object/from16 v1, p2

    .line 679
    move v12, v8

    .line 680
    move/from16 v8, v16

    .line 682
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 685
    move-result-object v1

    .line 686
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 689
    const/4 v2, 0x0

    .line 690
    :goto_5
    if-ge v2, v12, :cond_9

    .line 692
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 694
    invoke-direct {v3}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;-><init>()V

    .line 697
    mul-int/lit8 v4, v2, 0x78

    .line 699
    int-to-long v4, v4

    .line 700
    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 703
    iget-object v4, v13, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->modified:Ljava/util/ArrayList;

    .line 705
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    add-int/lit8 v2, v2, 0x1

    .line 710
    goto :goto_5

    .line 711
    :cond_9
    invoke-virtual {v15, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    .line 714
    move-result v10

    .line 715
    mul-int/lit8 v1, v10, 0x10

    .line 717
    int-to-long v2, v1

    .line 718
    invoke-virtual {v15}, Landroid/os/HwBlob;->handle()J

    .line 721
    move-result-wide v4

    .line 722
    const/4 v8, 0x1

    .line 723
    const-wide/16 v6, 0x18

    .line 725
    move-object/from16 v1, p2

    .line 727
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 730
    move-result-object v1

    .line 731
    iget-object v2, v13, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    .line 733
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 736
    const/4 v12, 0x0

    .line 737
    :goto_6
    if-ge v12, v10, :cond_a

    .line 739
    new-instance v2, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    .line 741
    invoke-direct {v2}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;-><init>()V

    .line 744
    mul-int/lit8 v3, v12, 0x10

    .line 746
    int-to-long v3, v3

    .line 747
    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->readEmbeddedFromParcel(Landroid/os/HwBlob;J)V

    .line 750
    iget-object v3, v13, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->removed:Ljava/util/ArrayList;

    .line 752
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v12, v12, 0x1

    .line 757
    goto :goto_6

    .line 758
    :cond_a
    iget-object v1, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 760
    check-cast v1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 762
    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;

    .line 764
    const/4 v3, 0x3

    .line 765
    invoke-direct {v2, v3, v0, v13}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 768
    invoke-virtual {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 771
    goto :goto_7

    .line 772
    :cond_b
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    new-instance v1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    .line 777
    invoke-direct {v1}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;-><init>()V

    .line 780
    const-wide/16 v2, 0x78

    .line 782
    invoke-virtual {v9, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v1, v9, v2, v4, v5}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 789
    iget-object v2, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 791
    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 793
    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;

    .line 795
    const/4 v4, 0x1

    .line 796
    invoke-direct {v3, v4, v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 799
    invoke-virtual {v2, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 802
    goto :goto_7

    .line 803
    :cond_c
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 809
    move-result v1

    .line 810
    new-instance v2, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 812
    invoke-direct {v2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 815
    invoke-virtual {v9, v10, v11}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 818
    move-result-object v3

    .line 819
    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 822
    iget-object v3, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 824
    check-cast v3, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 826
    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;

    .line 828
    invoke-direct {v4, v0, v2, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V

    .line 831
    invoke-virtual {v3, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fireLater(Ljava/lang/Runnable;)V

    .line 834
    :goto_7
    return-void

    .line 835
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 841
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch

    .line 879
    :sswitch_data_1
    .sparse-switch
        0xf43484e -> :sswitch_10
        0xf444247 -> :sswitch_f
        0xf445343 -> :sswitch_e
        0xf485348 -> :sswitch_d
        0xf494e54 -> :sswitch_c
        0xf504e47 -> :sswitch_b
        0xf524546 -> :sswitch_a
        0xf535953 -> :sswitch_9
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    return-void
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string v0, "android.hardware.broadcastradio@2.0::IAnnouncementListener"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return-object p0

    .line 17
    :pswitch_0
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    :goto_1
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    const-string p0, "android.hardware.broadcastradio@2.0::IAnnouncementListener@Stub"

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "android.hardware.broadcastradio@2.0::ITunerCallback@Stub"

    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
