.class public final Landroid/hardware/broadcastradio/V2_0/DabTableEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public frequency:I

.field public label:Ljava/lang/String;


# direct methods
.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 19

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-wide/16 v1, 0x10

    .line 8
    move-object/from16 v11, p0

    .line 10
    invoke-virtual {v11, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 13
    move-result-object v3

    .line 14
    const-wide/16 v4, 0x8

    .line 16
    invoke-virtual {v3, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    .line 19
    move-result v12

    .line 20
    mul-int/lit8 v4, v12, 0x18

    .line 22
    int-to-long v4, v4

    .line 23
    invoke-virtual {v3}, Landroid/os/HwBlob;->handle()J

    .line 26
    move-result-wide v6

    .line 27
    const-wide/16 v8, 0x0

    .line 29
    const/4 v10, 0x1

    .line 30
    move-object/from16 v3, p0

    .line 32
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 35
    move-result-object v13

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    const/4 v14, 0x0

    .line 40
    move v15, v14

    .line 41
    :goto_0
    if-ge v15, v12, :cond_0

    .line 43
    new-instance v10, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;

    .line 45
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v3, Ljava/lang/String;

    .line 50
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 53
    iput-object v3, v10, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->label:Ljava/lang/String;

    .line 55
    iput v14, v10, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->frequency:I

    .line 57
    mul-int/lit8 v3, v15, 0x18

    .line 59
    int-to-long v8, v3

    .line 60
    invoke-virtual {v13, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    iput-object v3, v10, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->label:Ljava/lang/String;

    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 69
    move-result-object v3

    .line 70
    array-length v3, v3

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 73
    int-to-long v4, v3

    .line 74
    invoke-virtual {v13}, Landroid/os/HwBlob;->handle()J

    .line 77
    move-result-wide v6

    .line 78
    const/16 v16, 0x0

    .line 80
    move-object/from16 v3, p0

    .line 82
    move-wide/from16 v17, v8

    .line 84
    move-object v14, v10

    .line 85
    move/from16 v10, v16

    .line 87
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 90
    add-long v8, v17, v1

    .line 92
    invoke-virtual {v13, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    .line 95
    move-result v3

    .line 96
    iput v3, v14, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->frequency:I

    .line 98
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v15, v15, 0x1

    .line 103
    const/4 v14, 0x0

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    return-object v0
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
    const-class v3, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;

    .line 20
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->label:Ljava/lang/String;

    .line 22
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->label:Ljava/lang/String;

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
    iget p0, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->frequency:I

    .line 33
    iget p1, p1, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->frequency:I

    .line 35
    if-eq p0, p1, :cond_4

    .line 37
    return v1

    .line 38
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->label:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget p0, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->frequency:I

    .line 13
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.label = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->label:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .frequency = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget p0, p0, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->frequency:I

    .line 21
    const-string/jumbo v1, "}"

    .line 24
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
