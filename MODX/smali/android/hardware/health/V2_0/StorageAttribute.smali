.class public final Landroid/hardware/health/V2_0/StorageAttribute;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isBootDevice:Z

.field public isInternal:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/hardware/health/V2_0/StorageAttribute;->isInternal:Z

    .line 7
    iput-boolean v0, p0, Landroid/hardware/health/V2_0/StorageAttribute;->isBootDevice:Z

    .line 9
    new-instance v0, Ljava/lang/String;

    .line 11
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 14
    iput-object v0, p0, Landroid/hardware/health/V2_0/StorageAttribute;->name:Ljava/lang/String;

    .line 16
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
    const-class v3, Landroid/hardware/health/V2_0/StorageAttribute;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/health/V2_0/StorageAttribute;

    .line 20
    iget-boolean v2, p0, Landroid/hardware/health/V2_0/StorageAttribute;->isInternal:Z

    .line 22
    iget-boolean v3, p1, Landroid/hardware/health/V2_0/StorageAttribute;->isInternal:Z

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget-boolean v2, p0, Landroid/hardware/health/V2_0/StorageAttribute;->isBootDevice:Z

    .line 29
    iget-boolean v3, p1, Landroid/hardware/health/V2_0/StorageAttribute;->isBootDevice:Z

    .line 31
    if-eq v2, v3, :cond_4

    .line 33
    return v1

    .line 34
    :cond_4
    iget-object p0, p0, Landroid/hardware/health/V2_0/StorageAttribute;->name:Ljava/lang/String;

    .line 36
    iget-object p1, p1, Landroid/hardware/health/V2_0/StorageAttribute;->name:Ljava/lang/String;

    .line 38
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_5

    .line 44
    return v1

    .line 45
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/hardware/health/V2_0/StorageAttribute;->isInternal:Z

    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Landroid/hardware/health/V2_0/StorageAttribute;->isBootDevice:Z

    .line 9
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Landroid/hardware/health/V2_0/StorageAttribute;->name:Ljava/lang/String;

    .line 15
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 23
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 1
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Landroid/hardware/health/V2_0/StorageAttribute;->isInternal:Z

    .line 7
    const-wide/16 v0, 0x1

    .line 9
    add-long/2addr v0, p3

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Landroid/hardware/health/V2_0/StorageAttribute;->isBootDevice:Z

    .line 16
    const-wide/16 v0, 0x8

    .line 18
    add-long v7, p3, v0

    .line 20
    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 24
    iput-object p3, p0, Landroid/hardware/health/V2_0/StorageAttribute;->name:Ljava/lang/String;

    .line 26
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    .line 29
    move-result-object p0

    .line 30
    array-length p0, p0

    .line 31
    add-int/lit8 p0, p0, 0x1

    .line 33
    int-to-long v3, p0

    .line 34
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    .line 37
    move-result-wide v5

    .line 38
    const/4 v9, 0x0

    .line 39
    move-object v2, p1

    .line 40
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 43
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.isInternal = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Landroid/hardware/health/V2_0/StorageAttribute;->isInternal:Z

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .isBootDevice = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-boolean v1, p0, Landroid/hardware/health/V2_0/StorageAttribute;->isBootDevice:Z

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", .name = "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object p0, p0, Landroid/hardware/health/V2_0/StorageAttribute;->name:Ljava/lang/String;

    .line 31
    const-string/jumbo v1, "}"

    .line 34
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
