.class public final Lorg/apache/commons/compress/archivers/sevenz/Folder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

.field public coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

.field public crc:J

.field public hasCrc:Z

.field public numUnpackSubStreams:I

.field public packedStreams:[J

.field public totalInputStreams:J

.field public totalOutputStreams:J

.field public unpackSizes:[J


# virtual methods
.method public final getOrderedCoders()Ljava/lang/Iterable;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aget-wide v3, v1, v2

    .line 10
    .line 11
    :goto_0
    long-to-int v1, v3

    .line 12
    :goto_1
    const/4 v3, -0x1

    .line 13
    if-eq v1, v3, :cond_3

    .line 14
    .line 15
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 16
    .line 17
    aget-object v4, v4, v1

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    move v4, v2

    .line 23
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 24
    .line 25
    array-length v6, v5

    .line 26
    if-ge v4, v6, :cond_1

    .line 27
    .line 28
    aget-object v6, v5, v4

    .line 29
    .line 30
    iget-wide v6, v6, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    .line 31
    .line 32
    int-to-long v8, v1

    .line 33
    cmp-long v6, v6, v8

    .line 34
    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    move v4, v3

    .line 42
    :goto_3
    if-eq v4, v3, :cond_2

    .line 43
    .line 44
    aget-object v1, v5, v4

    .line 45
    .line 46
    iget-wide v3, v1, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v1, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    return-object v0
.end method

.method public final getUnpackSize()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-wide v2

    .line 10
    :cond_0
    long-to-int v0, v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v0, :cond_4

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 17
    .line 18
    array-length v5, v4

    .line 19
    if-ge v1, v5, :cond_2

    .line 20
    .line 21
    aget-object v4, v4, v1

    .line 22
    .line 23
    iget-wide v4, v4, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    .line 24
    .line 25
    int-to-long v6, v0

    .line 26
    cmp-long v4, v4, v6

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v1, -0x1

    .line 35
    :goto_2
    if-gez v1, :cond_3

    .line 36
    .line 37
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 38
    .line 39
    aget-wide v0, p0, v0

    .line 40
    .line 41
    return-wide v0

    .line 42
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    return-wide v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Folder with "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " coders, "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " input streams, "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " output streams, "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 40
    .line 41
    array-length v1, v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " bind pairs, "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 51
    .line 52
    array-length v1, v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " packed streams, "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 62
    .line 63
    array-length v1, v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, " unpack sizes, "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v2, "with CRC "

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 85
    .line 86
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    const-string/jumbo v1, "without CRC"

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, " and "

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 106
    .line 107
    const-string v1, " unpack streams"

    .line 108
    .line 109
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method
