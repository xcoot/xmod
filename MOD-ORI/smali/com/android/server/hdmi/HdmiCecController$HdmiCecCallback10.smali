.class public final Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 7
    .line 8
    return-void
.end method

.method private final debug$com$android$server$hdmi$HdmiCecController$HdmiCecCallback10(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final debug$com$android$server$hdmi$HdmiCecController$HdmiCecCallback11(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final ping$com$android$server$hdmi$HdmiCecController$HdmiCecCallback10()V
    .locals 0

    .line 1
    return-void
.end method

.method private final ping$com$android$server$hdmi$HdmiCecController$HdmiCecCallback11()V
    .locals 0

    .line 1
    return-void
.end method

.method private final setHALInstrumentation$com$android$server$hdmi$HdmiCecController$HdmiCecCallback10()V
    .locals 0

    .line 1
    return-void
.end method

.method private final setHALInstrumentation$com$android$server$hdmi$HdmiCecController$HdmiCecCallback11()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_0
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 26
    .line 27
    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 35
    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 42
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
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    new-array v2, v0, [B

    .line 16
    .line 17
    fill-array-data v2, :array_1

    .line 18
    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_2

    .line 23
    .line 24
    .line 25
    filled-new-array {v1, v2, v0}, [[B

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
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    .line 38
    .line 39
    new-array v1, v0, [B

    .line 40
    .line 41
    fill-array-data v1, :array_3

    .line 42
    .line 43
    .line 44
    new-array v0, v0, [B

    .line 45
    .line 46
    fill-array-data v0, :array_4

    .line 47
    .line 48
    .line 49
    filled-new-array {v1, v0}, [[B

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_0
    .array-data 1
        -0x47t
        0x68t
        0x25t
        -0x79t
        0x67t
        0x7ct
        -0x17t
        -0x38t
        0x72t
        -0x20t
        0x4ft
        0xet
        -0x61t
        -0x2at
        -0x37t
        -0x39t
        -0x76t
        0x56t
        -0x52t
        0x79t
        0x5ct
        0x7t
        -0x35t
        -0x8t
        -0x3bt
        0x1t
        0x0t
        -0x20t
        0x35t
        0x1dt
        0x4ct
        0x44t
    .end array-data

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
    :array_1
    .array-data 1
        -0x19t
        0x5bt
        0x6et
        -0x16t
        0x71t
        0x1dt
        0x36t
        -0x6t
        -0x3at
        0x78t
        -0x44t
        -0x20t
        0x72t
        -0x4dt
        -0x32t
        -0x3at
        0x54t
        0x4bt
        0x27t
        -0x6t
        -0x61t
        0x4ct
        -0x27t
        0x3t
        -0x67t
        -0x6ct
        0x4t
        -0x1bt
        -0x3ft
        0x10t
        -0x36t
        0x10t
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

    :array_3
    .array-data 1
        -0x19t
        0x5bt
        0x6et
        -0x16t
        0x71t
        0x1dt
        0x36t
        -0x6t
        -0x3at
        0x78t
        -0x44t
        -0x20t
        0x72t
        -0x4dt
        -0x32t
        -0x3at
        0x54t
        0x4bt
        0x27t
        -0x6t
        -0x61t
        0x4ct
        -0x27t
        0x3t
        -0x67t
        -0x6ct
        0x4t
        -0x1bt
        -0x3ft
        0x10t
        -0x36t
        0x10t
    .end array-data

    :array_4
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
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    .line 9
    .line 10
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 11
    .line 12
    const-string v2, "android.hardware.tv.cec@1.1::IHdmiCecCallback"

    .line 13
    .line 14
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    .line 27
    .line 28
    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    .line 29
    .line 30
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 31
    .line 32
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
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

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "android.hardware.tv.cec@1.1::IHdmiCecCallback"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    .line 10
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
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
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
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 11
    .line 12
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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 10
    .line 11
    packed-switch v4, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const-wide/16 v6, 0x18

    .line 15
    .line 16
    const-wide/16 v8, 0x0

    .line 17
    .line 18
    const-wide/16 v10, 0x4

    .line 19
    .line 20
    const/4 v12, 0x0

    .line 21
    const/4 v13, 0x1

    .line 22
    const-string v14, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    .line 23
    .line 24
    if-eq v1, v13, :cond_6

    .line 25
    .line 26
    const/4 v13, 0x2

    .line 27
    const-wide/16 v4, 0x8

    .line 28
    .line 29
    if-eq v1, v13, :cond_5

    .line 30
    .line 31
    const/4 v13, 0x3

    .line 32
    const-string v14, "android.hardware.tv.cec@1.1::IHdmiCecCallback"

    .line 33
    .line 34
    if-eq v1, v13, :cond_2

    .line 35
    .line 36
    const-string v6, "android.hidl.base@1.0::IBase"

    .line 37
    .line 38
    sparse-switch v1, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :sswitch_0
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :sswitch_1
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :sswitch_2
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :sswitch_3
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :sswitch_4
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->getHashChain()Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 93
    .line 94
    .line 95
    new-instance v1, Landroid/os/HwBlob;

    .line 96
    .line 97
    const/16 v2, 0x10

    .line 98
    .line 99
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 107
    .line 108
    .line 109
    const-wide/16 v4, 0xc

    .line 110
    .line 111
    invoke-virtual {v1, v4, v5, v12}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 112
    .line 113
    .line 114
    new-instance v4, Landroid/os/HwBlob;

    .line 115
    .line 116
    mul-int/lit8 v5, v2, 0x20

    .line 117
    .line 118
    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 119
    .line 120
    .line 121
    :goto_0
    if-ge v12, v2, :cond_1

    .line 122
    .line 123
    mul-int/lit8 v5, v12, 0x20

    .line 124
    .line 125
    int-to-long v5, v5

    .line 126
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    check-cast v7, [B

    .line 131
    .line 132
    if-eqz v7, :cond_0

    .line 133
    .line 134
    array-length v10, v7

    .line 135
    const/16 v11, 0x20

    .line 136
    .line 137
    if-ne v10, v11, :cond_0

    .line 138
    .line 139
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v12, v12, 0x1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    const-string v1, "Array element is not of the expected length"

    .line 148
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :cond_1
    invoke-virtual {v1, v8, v9, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :sswitch_5
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v14}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_5

    .line 177
    .line 178
    :sswitch_6
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_5

    .line 194
    .line 195
    :sswitch_7
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->interfaceChain()Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v3, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_5

    .line 212
    .line 213
    :cond_2
    invoke-virtual {v2, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v13, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    const-wide/16 v3, 0x10

    .line 234
    .line 235
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 236
    .line 237
    .line 238
    move-result v11

    .line 239
    int-to-long v3, v11

    .line 240
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 241
    .line 242
    .line 243
    move-result-wide v5

    .line 244
    const/4 v8, 0x1

    .line 245
    const-wide/16 v14, 0x8

    .line 246
    .line 247
    move-object/from16 v1, p2

    .line 248
    .line 249
    move-wide v2, v3

    .line 250
    move-wide v4, v5

    .line 251
    move-wide v6, v14

    .line 252
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 257
    .line 258
    .line 259
    move v2, v12

    .line 260
    :goto_1
    if-ge v2, v11, :cond_3

    .line 261
    .line 262
    int-to-long v3, v2

    .line 263
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    add-int/lit8 v2, v2, 0x1

    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    new-array v1, v1, [B

    .line 282
    .line 283
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-ge v12, v2, :cond_4

    .line 288
    .line 289
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    check-cast v2, Ljava/lang/Byte;

    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    aput-byte v2, v1, v12

    .line 300
    .line 301
    add-int/lit8 v12, v12, 0x1

    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_4
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 305
    .line 306
    invoke-virtual {v0, v9, v10, v1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onCecMessage(II[B)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_5

    .line 310
    .line 311
    :cond_5
    invoke-virtual {v2, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getBool(J)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 327
    .line 328
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onHotplugEvent(IZ)V

    .line 329
    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_6
    invoke-virtual {v2, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    new-instance v13, Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    .line 345
    .line 346
    .line 347
    move-result v9

    .line 348
    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    .line 349
    .line 350
    .line 351
    move-result v10

    .line 352
    const-wide/16 v3, 0x10

    .line 353
    .line 354
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 355
    .line 356
    .line 357
    move-result v11

    .line 358
    int-to-long v3, v11

    .line 359
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 360
    .line 361
    .line 362
    move-result-wide v5

    .line 363
    const/4 v8, 0x1

    .line 364
    const-wide/16 v14, 0x8

    .line 365
    .line 366
    move-object/from16 v1, p2

    .line 367
    .line 368
    move-wide v2, v3

    .line 369
    move-wide v4, v5

    .line 370
    move-wide v6, v14

    .line 371
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 376
    .line 377
    .line 378
    move v2, v12

    .line 379
    :goto_3
    if-ge v2, v11, :cond_7

    .line 380
    .line 381
    int-to-long v3, v2

    .line 382
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    add-int/lit8 v2, v2, 0x1

    .line 394
    .line 395
    goto :goto_3

    .line 396
    :cond_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    new-array v1, v1, [B

    .line 401
    .line 402
    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-ge v12, v2, :cond_8

    .line 407
    .line 408
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    check-cast v2, Ljava/lang/Byte;

    .line 413
    .line 414
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    aput-byte v2, v1, v12

    .line 419
    .line 420
    add-int/lit8 v12, v12, 0x1

    .line 421
    .line 422
    goto :goto_4

    .line 423
    :cond_8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 424
    .line 425
    invoke-virtual {v0, v9, v10, v1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onCecMessage(II[B)V

    .line 426
    .line 427
    .line 428
    :goto_5
    return-void

    .line 429
    :pswitch_0
    const-wide/16 v4, 0x4

    .line 430
    .line 431
    const-wide/16 v6, 0x0

    .line 432
    .line 433
    const/4 v9, 0x0

    .line 434
    const/4 v8, 0x1

    .line 435
    const-string v10, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    .line 436
    .line 437
    if-eq v1, v8, :cond_c

    .line 438
    .line 439
    const/4 v8, 0x2

    .line 440
    const-wide/16 v11, 0x8

    .line 441
    .line 442
    if-eq v1, v8, :cond_b

    .line 443
    .line 444
    const-string v4, "android.hidl.base@1.0::IBase"

    .line 445
    .line 446
    sparse-switch v1, :sswitch_data_1

    .line 447
    .line 448
    .line 449
    goto/16 :goto_9

    .line 450
    .line 451
    :sswitch_8
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_9

    .line 458
    .line 459
    :sswitch_9
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_9

    .line 476
    .line 477
    :sswitch_a
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 484
    .line 485
    .line 486
    goto/16 :goto_9

    .line 487
    .line 488
    :sswitch_b
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_9

    .line 492
    .line 493
    :sswitch_c
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->getHashChain()Ljava/util/ArrayList;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 501
    .line 502
    .line 503
    new-instance v1, Landroid/os/HwBlob;

    .line 504
    .line 505
    const/16 v2, 0x10

    .line 506
    .line 507
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 515
    .line 516
    .line 517
    const-wide/16 v4, 0xc

    .line 518
    .line 519
    invoke-virtual {v1, v4, v5, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 520
    .line 521
    .line 522
    new-instance v4, Landroid/os/HwBlob;

    .line 523
    .line 524
    mul-int/lit8 v5, v2, 0x20

    .line 525
    .line 526
    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 527
    .line 528
    .line 529
    :goto_6
    if-ge v9, v2, :cond_a

    .line 530
    .line 531
    mul-int/lit8 v5, v9, 0x20

    .line 532
    .line 533
    int-to-long v10, v5

    .line 534
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    check-cast v5, [B

    .line 539
    .line 540
    if-eqz v5, :cond_9

    .line 541
    .line 542
    array-length v8, v5

    .line 543
    const/16 v12, 0x20

    .line 544
    .line 545
    if-ne v8, v12, :cond_9

    .line 546
    .line 547
    invoke-virtual {v4, v10, v11, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 548
    .line 549
    .line 550
    add-int/lit8 v9, v9, 0x1

    .line 551
    .line 552
    goto :goto_6

    .line 553
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 554
    .line 555
    const-string v1, "Array element is not of the expected length"

    .line 556
    .line 557
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw v0

    .line 561
    :cond_a
    invoke-virtual {v1, v6, v7, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 568
    .line 569
    .line 570
    goto/16 :goto_9

    .line 571
    .line 572
    :sswitch_d
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v3, v10}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 582
    .line 583
    .line 584
    goto/16 :goto_9

    .line 585
    .line 586
    :sswitch_e
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 590
    .line 591
    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_9

    .line 602
    .line 603
    :sswitch_f
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->interfaceChain()Ljava/util/ArrayList;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-virtual {v3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 617
    .line 618
    .line 619
    goto/16 :goto_9

    .line 620
    .line 621
    :cond_b
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2, v11, v12}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 637
    .line 638
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onHotplugEvent(IZ)V

    .line 639
    .line 640
    .line 641
    goto :goto_9

    .line 642
    :cond_c
    invoke-virtual {v2, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    new-instance v10, Ljava/util/ArrayList;

    .line 646
    .line 647
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .line 649
    .line 650
    const-wide/16 v11, 0x18

    .line 651
    .line 652
    invoke-virtual {v2, v11, v12}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    .line 657
    .line 658
    .line 659
    move-result v11

    .line 660
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    .line 661
    .line 662
    .line 663
    move-result v12

    .line 664
    const-wide/16 v3, 0x10

    .line 665
    .line 666
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 667
    .line 668
    .line 669
    move-result v13

    .line 670
    int-to-long v3, v13

    .line 671
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 672
    .line 673
    .line 674
    move-result-wide v5

    .line 675
    const/4 v8, 0x1

    .line 676
    const-wide/16 v14, 0x8

    .line 677
    .line 678
    move-object/from16 v1, p2

    .line 679
    .line 680
    move-wide v2, v3

    .line 681
    move-wide v4, v5

    .line 682
    move-wide v6, v14

    .line 683
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 688
    .line 689
    .line 690
    move v2, v9

    .line 691
    :goto_7
    if-ge v2, v13, :cond_d

    .line 692
    .line 693
    int-to-long v3, v2

    .line 694
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    add-int/lit8 v2, v2, 0x1

    .line 706
    .line 707
    goto :goto_7

    .line 708
    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 709
    .line 710
    .line 711
    move-result v1

    .line 712
    new-array v1, v1, [B

    .line 713
    .line 714
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 715
    .line 716
    .line 717
    move-result v2

    .line 718
    if-ge v9, v2, :cond_e

    .line 719
    .line 720
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    check-cast v2, Ljava/lang/Byte;

    .line 725
    .line 726
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    aput-byte v2, v1, v9

    .line 731
    .line 732
    add-int/lit8 v9, v9, 0x1

    .line 733
    .line 734
    goto :goto_8

    .line 735
    :cond_e
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    .line 736
    .line 737
    invoke-virtual {v0, v11, v12, v1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onCecMessage(II[B)V

    .line 738
    .line 739
    .line 740
    :goto_9
    return-void

    .line 741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
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

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    :sswitch_data_1
    .sparse-switch
        0xf43484e -> :sswitch_f
        0xf444247 -> :sswitch_e
        0xf445343 -> :sswitch_d
        0xf485348 -> :sswitch_c
        0xf494e54 -> :sswitch_b
        0xf504e47 -> :sswitch_a
        0xf524546 -> :sswitch_9
        0xf535953 -> :sswitch_8
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "android.hardware.tv.cec@1.1::IHdmiCecCallback"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
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
    const-string v0, "android.hardware.tv.cec@1.0::IHdmiCecCallback"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
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
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "android.hardware.tv.cec@1.1::IHdmiCecCallback@Stub"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "android.hardware.tv.cec@1.0::IHdmiCecCallback@Stub"

    .line 10
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
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
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
