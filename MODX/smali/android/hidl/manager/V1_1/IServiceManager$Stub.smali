.class public abstract Landroid/hidl/manager/V1_1/IServiceManager$Stub;
.super Landroid/os/HwBinder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/manager/V1_1/IServiceManager;


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
    .locals 3

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
    new-array v0, v0, [B

    .line 17
    fill-array-data v0, :array_2

    .line 20
    filled-new-array {v1, v2, v0}, [[B

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
    nop

    .line 33
    :array_0
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

    :array_1
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

    .line 3
    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 7
    const-string v2, "android.hidl.manager@1.1::IServiceManager"

    .line 9
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hidl.manager@1.1::IServiceManager"

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
    const-string p4, "android.hidl.manager@1.0::IServiceManager"

    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 7
    const-string p4, "android.hidl.base@1.0::IBase"

    .line 9
    sparse-switch p1, :sswitch_data_0

    .line 12
    goto/16 :goto_2

    .line 14
    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->notifySyspropsChanged()V

    .line 20
    goto/16 :goto_2

    .line 22
    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 32
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 38
    goto/16 :goto_2

    .line 40
    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->ping()V

    .line 46
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 49
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 52
    goto/16 :goto_2

    .line 54
    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->setHALInstrumentation()V

    .line 60
    goto/16 :goto_2

    .line 62
    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 72
    new-instance p1, Landroid/os/HwBlob;

    .line 74
    const/16 p2, 0x10

    .line 76
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 79
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result p2

    .line 83
    const-wide/16 v1, 0x8

    .line 85
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 88
    const-wide/16 v1, 0xc

    .line 90
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 93
    new-instance p4, Landroid/os/HwBlob;

    .line 95
    mul-int/lit8 v1, p2, 0x20

    .line 97
    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 100
    :goto_0
    if-ge v0, p2, :cond_1

    .line 102
    mul-int/lit8 v1, v0, 0x20

    .line 104
    int-to-long v1, v1

    .line 105
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v3

    .line 109
    check-cast v3, [B

    .line 111
    if-eqz v3, :cond_0

    .line 113
    array-length v4, v3

    .line 114
    const/16 v5, 0x20

    .line 116
    if-ne v4, v5, :cond_0

    .line 118
    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 126
    const-string p1, "Array element is not of the expected length"

    .line 128
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0

    .line 132
    :cond_1
    const-wide/16 v0, 0x0

    .line 134
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 143
    goto/16 :goto_2

    .line 145
    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 155
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 161
    goto/16 :goto_2

    .line 163
    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 177
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 183
    goto/16 :goto_2

    .line 185
    :sswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 195
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 201
    goto/16 :goto_2

    .line 203
    :pswitch_0
    const-string p1, "android.hidl.manager@1.1::IServiceManager"

    .line 205
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 215
    move-result-object p4

    .line 216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 219
    move-result-object p2

    .line 220
    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 223
    move-result-object p2

    .line 224
    invoke-interface {p0, p1, p4, p2}, Landroid/hidl/manager/V1_1/IServiceManager;->unregisterForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    .line 227
    move-result p0

    .line 228
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 231
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 237
    goto/16 :goto_2

    .line 239
    :pswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 249
    move-result-object p2

    .line 250
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 259
    goto/16 :goto_2

    .line 261
    :pswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-interface {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 271
    invoke-static {p3, p0}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 277
    goto/16 :goto_2

    .line 279
    :pswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 289
    move-result-object p4

    .line 290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 293
    move-result-object p2

    .line 294
    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 297
    move-result-object p2

    .line 298
    invoke-interface {p0, p1, p4, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    .line 301
    move-result p0

    .line 302
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 305
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 308
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 311
    goto/16 :goto_2

    .line 313
    :pswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 319
    move-result-object p1

    .line 320
    invoke-interface {p0, p1}, Landroid/hidl/manager/V1_0/IServiceManager;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 323
    move-result-object p0

    .line 324
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 327
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 330
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 333
    goto :goto_2

    .line 334
    :pswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-interface {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->list()Ljava/util/ArrayList;

    .line 340
    move-result-object p0

    .line 341
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 344
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 350
    goto :goto_2

    .line 351
    :pswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 361
    move-result-object p2

    .line 362
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    .line 365
    move-result p0

    .line 366
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 369
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 372
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 375
    goto :goto_2

    .line 376
    :pswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 382
    move-result-object p1

    .line 383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 386
    move-result-object p2

    .line 387
    invoke-static {p2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    .line 390
    move-result-object p2

    .line 391
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    .line 394
    move-result p0

    .line 395
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 398
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 401
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 404
    goto :goto_2

    .line 405
    :pswitch_8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 415
    move-result-object p2

    .line 416
    invoke-interface {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;

    .line 419
    move-result-object p0

    .line 420
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 423
    if-nez p0, :cond_2

    .line 425
    const/4 p0, 0x0

    .line 426
    goto :goto_1

    .line 427
    :cond_2
    invoke-interface {p0}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    .line 430
    move-result-object p0

    .line 431
    :goto_1
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 437
    :goto_2
    return-void

    .line 438
    nop

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 461
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
    const-string v0, "android.hidl.manager@1.1::IServiceManager"

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
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

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
