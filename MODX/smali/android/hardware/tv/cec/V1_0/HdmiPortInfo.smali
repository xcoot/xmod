.class public final Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public arcSupported:Z

.field public cecSupported:Z

.field public physicalAddress:S

.field public portId:I

.field public type:I


# direct methods
.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 14

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
    move-result v4

    .line 18
    mul-int/lit8 v5, v4, 0xc

    .line 20
    int-to-long v7, v5

    .line 21
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 24
    move-result-wide v9

    .line 25
    const-wide/16 v11, 0x0

    .line 27
    const/4 v13, 0x1

    .line 28
    move-object v6, p0

    .line 29
    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    const/4 v1, 0x0

    .line 37
    move v5, v1

    .line 38
    :goto_0
    if-ge v5, v4, :cond_0

    .line 40
    new-instance v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    .line 42
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    .line 47
    iput v1, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    .line 49
    iput-boolean v1, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    .line 51
    iput-boolean v1, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    .line 53
    iput-short v1, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    .line 55
    mul-int/lit8 v7, v5, 0xc

    .line 57
    int-to-long v7, v7

    .line 58
    invoke-virtual {p0, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 61
    move-result v9

    .line 62
    iput v9, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    .line 64
    const-wide/16 v9, 0x4

    .line 66
    add-long/2addr v9, v7

    .line 67
    invoke-virtual {p0, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    .line 70
    move-result v9

    .line 71
    iput v9, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    .line 73
    add-long v9, v7, v2

    .line 75
    invoke-virtual {p0, v9, v10}, Landroid/os/HwBlob;->getBool(J)Z

    .line 78
    move-result v9

    .line 79
    iput-boolean v9, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    .line 81
    const-wide/16 v9, 0x9

    .line 83
    add-long/2addr v9, v7

    .line 84
    invoke-virtual {p0, v9, v10}, Landroid/os/HwBlob;->getBool(J)Z

    .line 87
    move-result v9

    .line 88
    iput-boolean v9, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    .line 90
    const-wide/16 v9, 0xa

    .line 92
    add-long/2addr v7, v9

    .line 93
    invoke-virtual {p0, v7, v8}, Landroid/os/HwBlob;->getInt16(J)S

    .line 96
    move-result v7

    .line 97
    iput-short v7, v6, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    .line 99
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v5, v5, 0x1

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
    const-class v3, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    .line 20
    iget v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    .line 22
    iget v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    .line 24
    if-eq v2, v3, :cond_3

    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    .line 29
    iget v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    .line 31
    if-eq v2, v3, :cond_4

    .line 33
    return v1

    .line 34
    :cond_4
    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    .line 36
    iget-boolean v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    .line 38
    if-eq v2, v3, :cond_5

    .line 40
    return v1

    .line 41
    :cond_5
    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    .line 43
    iget-boolean v3, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    .line 45
    if-eq v2, v3, :cond_6

    .line 47
    return v1

    .line 48
    :cond_6
    iget-short p0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    .line 50
    iget-short p1, p1, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    .line 52
    if-eq p0, p1, :cond_7

    .line 54
    return v1

    .line 55
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    .line 3
    invoke-static {v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    .line 9
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    .line 15
    invoke-static {v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    iget-boolean v3, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    .line 21
    invoke-static {v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    iget-short p0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    .line 27
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p0

    .line 39
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.type = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string v1, "INPUT"

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_1

    .line 19
    const-string v1, "OUTPUT"

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    const-string v3, "0x"

    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {v2, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", .portId = "

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", .cecSupported = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-boolean v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", .arcSupported = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-boolean v1, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .physicalAddress = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-short p0, p0, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    .line 73
    const-string/jumbo v1, "}"

    .line 76
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
