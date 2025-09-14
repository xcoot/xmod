.class public final Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public fmDeemphasis:B

.field public fmRds:B

.field public ranges:Ljava/util/ArrayList;


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
    const-class v3, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 20
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    .line 22
    iget-object v3, p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

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
    iget-byte v2, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    .line 33
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 36
    move-result-object v2

    .line 37
    iget-byte v3, p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    .line 39
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_4

    .line 49
    return v1

    .line 50
    :cond_4
    iget-byte p0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    .line 52
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 55
    move-result-object p0

    .line 56
    iget-byte p1, p1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    .line 58
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_5

    .line 68
    return v1

    .line 69
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    .line 13
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    iget-byte p0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    .line 27
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 13

    .line 1
    const-wide/16 v0, 0x18

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x8

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 12
    move-result v3

    .line 13
    mul-int/lit8 v4, v3, 0x10

    .line 15
    int-to-long v6, v4

    .line 16
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    .line 19
    move-result-wide v8

    .line 20
    const/4 v12, 0x1

    .line 21
    const-wide/16 v10, 0x0

    .line 23
    move-object v5, p1

    .line 24
    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 27
    move-result-object p1

    .line 28
    iget-object v4, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 33
    const/4 v4, 0x0

    .line 34
    move v5, v4

    .line 35
    :goto_0
    if-ge v5, v3, :cond_0

    .line 37
    new-instance v6, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    .line 39
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v4, v6, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    .line 44
    iput v4, v6, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    .line 46
    iput v4, v6, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    .line 48
    iput v4, v6, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    .line 50
    mul-int/lit8 v7, v5, 0x10

    .line 52
    int-to-long v7, v7

    .line 53
    invoke-virtual {p1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 56
    move-result v9

    .line 57
    iput v9, v6, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    .line 59
    const-wide/16 v9, 0x4

    .line 61
    add-long/2addr v9, v7

    .line 62
    invoke-virtual {p1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    .line 65
    move-result v9

    .line 66
    iput v9, v6, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    .line 68
    add-long v9, v7, v1

    .line 70
    invoke-virtual {p1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    .line 73
    move-result v9

    .line 74
    iput v9, v6, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    .line 76
    const-wide/16 v9, 0xc

    .line 78
    add-long/2addr v7, v9

    .line 79
    invoke-virtual {p1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    .line 82
    move-result v7

    .line 83
    iput v7, v6, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->scanSpacing:I

    .line 85
    iget-object v7, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v5, v5, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const-wide/16 v1, 0x10

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    .line 98
    move-result p1

    .line 99
    iput-byte p1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    .line 101
    const-wide/16 v1, 0x11

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    .line 106
    move-result p1

    .line 107
    iput-byte p1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    .line 109
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.ranges = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .fmDeemphasis = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-byte v1, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmDeemphasis:B

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    and-int/lit8 v3, v1, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v3, v5, :cond_0

    .line 32
    const-string v3, "D50"

    .line 34
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    int-to-byte v3, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v3, v4

    .line 40
    :goto_0
    and-int/lit8 v6, v1, 0x2

    .line 42
    const/4 v7, 0x2

    .line 43
    if-ne v6, v7, :cond_1

    .line 45
    const-string v6, "D75"

    .line 47
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v3, v3, 0x2

    .line 52
    int-to-byte v3, v3

    .line 53
    :cond_1
    const-string v6, "0x"

    .line 55
    if-eq v1, v3, :cond_2

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    not-int v3, v3

    .line 63
    and-int/2addr v1, v3

    .line 64
    int-to-byte v1, v1

    .line 65
    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 68
    move-result v1

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    const-string v1, " | "

    .line 85
    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v2, ", .fmRds = "

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-byte p0, p0, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->fmRds:B

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    .line 101
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    and-int/lit8 v3, p0, 0x1

    .line 106
    if-ne v3, v5, :cond_3

    .line 108
    const-string v3, "RDS"

    .line 110
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    int-to-byte v4, v5

    .line 114
    :cond_3
    and-int/lit8 v3, p0, 0x2

    .line 116
    if-ne v3, v7, :cond_4

    .line 118
    const-string v3, "RBDS"

    .line 120
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v3, v4, 0x2

    .line 125
    int-to-byte v4, v3

    .line 126
    :cond_4
    if-eq p0, v4, :cond_5

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    not-int v4, v4

    .line 134
    and-int/2addr p0, v4

    .line 135
    int-to-byte p0, p0

    .line 136
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    .line 139
    move-result p0

    .line 140
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo p0, "}"

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 171
    return-object p0
.end method
