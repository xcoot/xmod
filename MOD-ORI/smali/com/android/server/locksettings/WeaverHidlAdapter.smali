.class public final Lcom/android/server/locksettings/WeaverHidlAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/weaver/IWeaver;


# instance fields
.field public final mImpl:Landroid/hardware/weaver/V1_0/IWeaver;


# direct methods
.method public constructor <init>(Landroid/hardware/weaver/V1_0/IWeaver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 5
    .line 6
    return-void
.end method

.method public static toByteArrayList([B)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    array-length v2, p0

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    aget-byte v2, p0, v1

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "WeaverHidlAdapter does not support asBinder"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final getConfig()Landroid/hardware/weaver/WeaverConfig;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Landroid/hardware/weaver/WeaverConfig;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 5
    .line 6
    check-cast p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroid/os/HwParcel;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "android.hardware.weaver@1.0::IWeaver"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Landroid/os/HwParcel;

    .line 22
    .line 23
    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object p0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {p0, v0, v2, v3, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/os/HwParcel;->readInt32()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const-wide/16 v5, 0xc

    .line 43
    .line 44
    invoke-virtual {v3, v5, v6}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-wide/16 v5, 0x0

    .line 49
    .line 50
    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const-wide/16 v5, 0x4

    .line 55
    .line 56
    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const-wide/16 v6, 0x8

    .line 61
    .line 62
    invoke-virtual {v0, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez p0, :cond_0

    .line 67
    .line 68
    new-instance p0, Landroid/hardware/weaver/WeaverConfig;

    .line 69
    .line 70
    invoke-direct {p0}, Landroid/hardware/weaver/WeaverConfig;-><init>()V

    .line 71
    .line 72
    .line 73
    iput v2, p0, Landroid/hardware/weaver/WeaverConfig;->slots:I

    .line 74
    .line 75
    iput v5, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    .line 76
    .line 77
    iput v0, p0, Landroid/hardware/weaver/WeaverConfig;->valueSize:I

    .line 78
    .line 79
    aput-object p0, v1, v4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v5, "Failed to get HIDL weaver config. status: "

    .line 85
    .line 86
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p0, ", slots: "

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const-string v0, "WeaverHidlAdapter"

    .line 105
    .line 106
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 110
    .line 111
    .line 112
    aget-object p0, v1, v4

    .line 113
    .line 114
    return-object p0

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final read(I[B)Landroid/hardware/weaver/WeaverReadResponse;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Landroid/hardware/weaver/WeaverReadResponse;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/android/server/locksettings/WeaverHidlAdapter;->toByteArrayList([B)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v1, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;-><init>([Landroid/hardware/weaver/WeaverReadResponse;)V

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    aget-object p0, v0, p0

    .line 22
    .line 23
    return-object p0
.end method

.method public final write(I[B[B)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter;->mImpl:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/android/server/locksettings/WeaverHidlAdapter;->toByteArrayList([B)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p3}, Lcom/android/server/locksettings/WeaverHidlAdapter;->toByteArrayList([B)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    check-cast p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/os/HwParcel;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "android.hardware.weaver@1.0::IWeaver"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Landroid/os/HwParcel;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object p0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 41
    .line 42
    const/4 p2, 0x2

    .line 43
    const/4 p3, 0x0

    .line 44
    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 58
    .line 59
    .line 60
    if-nez p0, :cond_0

    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 64
    .line 65
    const-string p2, "Failed IWeaver.write call, status: "

    .line 66
    .line 67
    invoke-static {p0, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const/4 p2, 0x1

    .line 72
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 78
    .line 79
    .line 80
    throw p0
.end method
