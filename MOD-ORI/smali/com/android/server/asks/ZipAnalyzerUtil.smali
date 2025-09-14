.class public abstract Lcom/android/server/asks/ZipAnalyzerUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static countCentralDirectorySignatures(IILjava/lang/String;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-string/jumbo v1, "r"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    int-to-long v1, p0

    .line 10
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 11
    .line 12
    .line 13
    new-array p0, p1, [B

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 p1, 0x0

    .line 29
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 v1, 0x4

    .line 34
    if-lt p2, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const v1, 0x2014b50

    .line 41
    .line 42
    .line 43
    if-ne p2, v1, :cond_0

    .line 44
    .line 45
    add-int/lit8 p1, p1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    add-int/lit8 p2, p2, -0x3

    .line 53
    .line 54
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 61
    .line 62
    .line 63
    return p1

    .line 64
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_2
    throw p0
.end method

.method public static findEOCDOffset(Ljava/lang/String;)J
    .locals 6

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-string/jumbo v1, "r"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-wide/32 v3, 0x10015

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    sub-long/2addr v1, v3

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 22
    .line 23
    .line 24
    long-to-int p0, v3

    .line 25
    new-array v3, p0, [B

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x16

    .line 31
    .line 32
    :goto_0
    if-ltz p0, :cond_1

    .line 33
    .line 34
    const/4 v4, 0x4

    .line 35
    invoke-static {v3, p0, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 46
    .line 47
    .line 48
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const v5, 0x6054b50

    .line 50
    .line 51
    .line 52
    if-ne v4, v5, :cond_0

    .line 53
    .line 54
    int-to-long v3, p0

    .line 55
    add-long/2addr v1, v3

    .line 56
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 57
    .line 58
    .line 59
    return-wide v1

    .line 60
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 66
    .line 67
    .line 68
    new-instance p0, Ljava/io/IOException;

    .line 69
    .line 70
    const-string v0, "End of Central Directory Record not found"

    .line 71
    .line 72
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    throw p0
.end method

.method public static parseEocdRecord(JLjava/lang/String;)Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    const-string/jumbo v1, "r"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 10
    .line 11
    .line 12
    const/16 p0, 0x16

    .line 13
    .line 14
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const p2, 0x6054b50

    .line 39
    .line 40
    .line 41
    if-ne p1, p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 68
    .line 69
    .line 70
    new-instance p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;

    .line 71
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-short p1, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->diskNumber:S

    .line 76
    .line 77
    iput-short p2, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->startDiskNumber:S

    .line 78
    .line 79
    iput-short v1, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesThisDisk:S

    .line 80
    .line 81
    iput-short v2, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->numEntriesTotal:S

    .line 82
    .line 83
    iput v3, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirSize:I

    .line 84
    .line 85
    iput v4, p0, Lcom/android/server/asks/ZipAnalyzerUtil$EocdRecord;->centralDirOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    .line 94
    .line 95
    const-string p1, "Invalid EOCD signature"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    throw p0
.end method
