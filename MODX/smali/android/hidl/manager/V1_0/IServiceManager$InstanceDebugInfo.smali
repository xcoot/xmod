.class public final Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public arch:I

.field public clientPids:Ljava/util/ArrayList;

.field public instanceName:Ljava/lang/String;

.field public interfaceName:Ljava/lang/String;

.field public pid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/String;

    .line 6
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 9
    iput-object v0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/String;

    .line 13
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 16
    iput-object v0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object v1, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 28
    iput v0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 30
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-wide/16 v1, 0x10

    .line 8
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 11
    move-result-object v1

    .line 12
    const-wide/16 v2, 0x8

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 17
    move-result v2

    .line 18
    mul-int/lit8 v3, v2, 0x40

    .line 20
    int-to-long v5, v3

    .line 21
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 24
    move-result-wide v7

    .line 25
    const-wide/16 v9, 0x0

    .line 27
    const/4 v11, 0x1

    .line 28
    move-object v4, p0

    .line 29
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    if-ge v3, v2, :cond_0

    .line 39
    new-instance v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 41
    invoke-direct {v4}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;-><init>()V

    .line 44
    mul-int/lit8 v5, v3, 0x40

    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 50
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 3
    const/16 v1, 0x10

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    const-wide/16 v2, 0x8

    .line 14
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 17
    const-wide/16 v2, 0xc

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 23
    new-instance v2, Landroid/os/HwBlob;

    .line 25
    mul-int/lit8 v3, v1, 0x40

    .line 27
    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 30
    :goto_0
    if-ge v4, v1, :cond_0

    .line 32
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 38
    mul-int/lit8 v5, v4, 0x40

    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-wide/16 v3, 0x0

    .line 49
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 52
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 20
    iget-object v2, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 22
    iget-object v3, p1, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 30
    return v1

    .line 31
    :cond_3
    iget-object v2, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 33
    iget-object v3, p1, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 35
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_4

    .line 41
    return v1

    .line 42
    :cond_4
    iget v2, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 44
    iget v3, p1, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 46
    if-eq v2, v3, :cond_5

    .line 48
    return v1

    .line 49
    :cond_5
    iget-object v2, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 51
    iget-object v3, p1, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 53
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_6

    .line 59
    return v1

    .line 60
    :cond_6
    iget p0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 62
    iget p1, p1, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 64
    if-eq p0, p1, :cond_7

    .line 66
    return v1

    .line 67
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 23
    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 29
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 32
    move-result v3

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v3

    .line 37
    iget p0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 39
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 42
    move-result-object p0

    .line 43
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 10
    move-result-object v0

    .line 11
    array-length v0, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 14
    int-to-long v2, v0

    .line 15
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 18
    move-result-wide v4

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v1, p1

    .line 21
    move-wide v6, p3

    .line 22
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 25
    const-wide/16 v0, 0x10

    .line 27
    add-long v7, p3, v0

    .line 29
    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 38
    move-result-object v0

    .line 39
    array-length v0, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 42
    int-to-long v3, v0

    .line 43
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 46
    move-result-wide v5

    .line 47
    const/4 v9, 0x0

    .line 48
    move-object v2, p1

    .line 49
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 52
    const-wide/16 v0, 0x20

    .line 54
    add-long/2addr v0, p3

    .line 55
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 58
    move-result v0

    .line 59
    iput v0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 61
    const-wide/16 v0, 0x28

    .line 63
    add-long v7, p3, v0

    .line 65
    const-wide/16 v0, 0x30

    .line 67
    add-long/2addr v0, p3

    .line 68
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 71
    move-result v0

    .line 72
    mul-int/lit8 v1, v0, 0x4

    .line 74
    int-to-long v3, v1

    .line 75
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 78
    move-result-wide v5

    .line 79
    const/4 v9, 0x1

    .line 80
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 83
    move-result-object p1

    .line 84
    iget-object v1, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 89
    const/4 v1, 0x0

    .line 90
    :goto_0
    if-ge v1, v0, :cond_0

    .line 92
    mul-int/lit8 v2, v1, 0x4

    .line 94
    int-to-long v2, v2

    .line 95
    invoke-virtual {p1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 98
    move-result v2

    .line 99
    iget-object v3, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    const-wide/16 v0, 0x38

    .line 113
    add-long/2addr p3, v0

    .line 114
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    .line 117
    move-result p1

    .line 118
    iput p1, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 120
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x40

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.interfaceName = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .instanceName = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", .pid = "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v1, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", .clientPids = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", .arch = "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget p0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 51
    invoke-static {p0}, Landroid/hidl/base/V1_0/DebugInfo$Architecture;->toString(I)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo p0, "}"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 6
    const-wide/16 v0, 0x10

    .line 8
    add-long/2addr v0, p2

    .line 9
    iget-object v2, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 14
    const-wide/16 v0, 0x20

    .line 16
    add-long/2addr v0, p2

    .line 17
    iget v2, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 22
    iget-object v0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v0

    .line 28
    const-wide/16 v1, 0x28

    .line 30
    add-long/2addr v1, p2

    .line 31
    const-wide/16 v3, 0x30

    .line 33
    add-long/2addr v3, p2

    .line 34
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 37
    const-wide/16 v3, 0x34

    .line 39
    add-long/2addr v3, p2

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 44
    new-instance v3, Landroid/os/HwBlob;

    .line 46
    mul-int/lit8 v4, v0, 0x4

    .line 48
    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 51
    :goto_0
    if-ge v5, v0, :cond_0

    .line 53
    mul-int/lit8 v4, v5, 0x4

    .line 55
    int-to-long v6, v4

    .line 56
    iget-object v4, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/lang/Integer;

    .line 64
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 67
    move-result v4

    .line 68
    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 77
    const-wide/16 v0, 0x38

    .line 79
    add-long/2addr p2, v0

    .line 80
    iget p0, p0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 82
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 85
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 3
    const/16 v1, 0x40

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 8
    const-wide/16 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, v2}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 16
    return-void
.end method
