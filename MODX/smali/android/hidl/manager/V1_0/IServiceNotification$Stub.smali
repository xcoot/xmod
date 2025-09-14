.class public abstract Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/manager/V1_0/IServiceNotification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

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
    .locals 2

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 3
    const/16 v0, 0x20

    .line 5
    new-array v1, v0, [B

    .line 7
    fill-array-data v1, :array_0

    .line 10
    new-array v0, v0, [B

    .line 12
    fill-array-data v0, :array_1

    .line 15
    filled-new-array {v1, v0}, [[B

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    return-object p0

    .line 27
    :array_0
    .array-data 1
        -0x4t
        -0x22t
        0x1dt
        0x7t
        -0x78t
        0x6t
        0x6at
        0x62t
        -0x2bt
        0x76t
        0x6ft
        0x4dt
        -0x3ft
        -0x63t
        0x4ct
        0x1et
        -0x39t
        0x69t
        0x67t
        -0x2bt
        -0x23t
        -0x4at
        0x36t
        -0xbt
        -0x64t
        -0x34t
        0x66t
        0x60t
        0x34t
        0x60t
        -0x44t
        -0x8t
    .end array-data

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
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 3
    const-string v0, "android.hidl.manager@1.0::IServiceNotification"

    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hidl.manager@1.0::IServiceNotification"

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

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p4, 0x0

    .line 2
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 4
    sparse-switch p1, :sswitch_data_0

    .line 7
    goto/16 :goto_1

    .line 9
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->notifySyspropsChanged()V

    .line 15
    goto/16 :goto_1

    .line 17
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 27
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 30
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 33
    goto/16 :goto_1

    .line 35
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->ping()V

    .line 41
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 44
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 47
    goto/16 :goto_1

    .line 49
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->setHALInstrumentation()V

    .line 55
    goto/16 :goto_1

    .line 57
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 67
    new-instance p1, Landroid/os/HwBlob;

    .line 69
    const/16 p2, 0x10

    .line 71
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result p2

    .line 78
    const-wide/16 v0, 0x8

    .line 80
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 83
    const-wide/16 v0, 0xc

    .line 85
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 88
    new-instance v0, Landroid/os/HwBlob;

    .line 90
    mul-int/lit8 v1, p2, 0x20

    .line 92
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 95
    :goto_0
    if-ge p4, p2, :cond_1

    .line 97
    mul-int/lit8 v1, p4, 0x20

    .line 99
    int-to-long v1, v1

    .line 100
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v3

    .line 104
    check-cast v3, [B

    .line 106
    if-eqz v3, :cond_0

    .line 108
    array-length v4, v3

    .line 109
    const/16 v5, 0x20

    .line 111
    if-ne v4, v5, :cond_0

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 116
    add-int/lit8 p4, p4, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 121
    const-string p1, "Array element is not of the expected length"

    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    throw p0

    .line 127
    :cond_1
    const-wide/16 v1, 0x0

    .line 129
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 132
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 138
    goto :goto_1

    .line 139
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 149
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 155
    goto :goto_1

    .line 156
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 170
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 173
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 176
    goto :goto_1

    .line 177
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 187
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 193
    goto :goto_1

    .line 194
    :sswitch_8
    const-string p1, "android.hidl.manager@1.0::IServiceNotification"

    .line 196
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 206
    move-result-object p3

    .line 207
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 210
    move-result p2

    .line 211
    invoke-interface {p0, p1, p3, p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    :goto_1
    return-void

    .line 215
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
.end method

.method public final ping()V
    .locals 0

    .line 1
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    const-string v0, "android.hidl.manager@1.0::IServiceNotification"

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

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

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

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, "@Stub"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
