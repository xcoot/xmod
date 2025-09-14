.class public final Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bin:Lorg/apache/commons/compress/utils/BitInputStream;

.field public blockRandomised:Z

.field public blockSize100k:I

.field public computedCombinedCRC:I

.field public final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field public currentState:I

.field public data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

.field public last:I

.field public nInUse:I

.field public origPtr:I

.field public storedBlockCRC:I

.field public storedCombinedCRC:I

.field public su_ch2:I

.field public su_chPrev:I

.field public su_count:I

.field public su_i2:I

.field public su_j2:I

.field public su_rNToGo:I

.field public su_rTPos:I

.field public su_tPos:I

.field public su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 16
    .line 17
    new-instance v0, Lorg/apache/commons/compress/utils/BitInputStream;

    .line 18
    .line 19
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 20
    .line 21
    if-ne p1, v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    move-object p1, v1

    .line 29
    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 30
    .line 31
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 35
    .line 36
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    long-to-int p1, v2

    .line 48
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    long-to-int v2, v2

    .line 55
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    long-to-int v3, v3

    .line 62
    const/16 v4, 0x42

    .line 63
    .line 64
    if-ne p1, v4, :cond_2

    .line 65
    .line 66
    const/16 p1, 0x5a

    .line 67
    .line 68
    if-ne v2, p1, :cond_2

    .line 69
    .line 70
    const/16 p1, 0x68

    .line 71
    .line 72
    if-ne v3, p1, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    long-to-int p1, v1

    .line 81
    const/16 v1, 0x31

    .line 82
    .line 83
    if-lt p1, v1, :cond_1

    .line 84
    .line 85
    const/16 v1, 0x39

    .line 86
    .line 87
    if-gt p1, v1, :cond_1

    .line 88
    .line 89
    add-int/lit8 p1, p1, -0x30

    .line 90
    .line 91
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 92
    .line 93
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 94
    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 100
    .line 101
    const-string p1, "BZip2 block size is invalid"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 108
    .line 109
    const-string p1, "Stream is not in the BZip2 format"

    .line 110
    .line 111
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 116
    .line 117
    const-string p1, "No InputStream"

    .line 118
    .line 119
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0
.end method

.method public static bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p0, v0

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    long-to-int p0, p0

    .line 12
    return p0

    .line 13
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 14
    .line 15
    const-string/jumbo p1, "unexpected end of stream"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public static checkBounds(IILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Corrupted input, "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-ge p0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 9
    .line 10
    const-string p1, " value too big"

    .line 11
    .line 12
    invoke-static {v0, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 21
    .line 22
    const-string p1, " value negative"

    .line 23
    .line 24
    invoke-static {v0, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 10
    .line 11
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 16
    .line 17
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 18
    .line 19
    throw v0

    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public final endBlock()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 2
    .line 3
    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    .line 4
    .line 5
    not-int v0, v0

    .line 6
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    .line 7
    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 11
    .line 12
    shl-int/lit8 v2, v1, 0x1

    .line 13
    .line 14
    ushr-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    or-int/2addr v1, v2

    .line 17
    xor-int/2addr v0, v1

    .line 18
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    .line 22
    .line 23
    shl-int/lit8 v2, v0, 0x1

    .line 24
    .line 25
    ushr-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    or-int/2addr v0, v2

    .line 28
    xor-int/2addr v0, v1

    .line 29
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 30
    .line 31
    new-instance p0, Ljava/io/IOException;

    .line 32
    .line 33
    const-string v0, "BZip2 CRC error"

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final initBlock()V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    int-to-char v3, v3

    .line 12
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    int-to-char v4, v4

    .line 17
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    int-to-char v5, v5

    .line 22
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    int-to-char v6, v6

    .line 27
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    int-to-char v7, v7

    .line 32
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-char v2, v2

    .line 37
    const/16 v8, 0x17

    .line 38
    .line 39
    const/16 v9, 0x20

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    if-ne v3, v8, :cond_2

    .line 43
    .line 44
    const/16 v11, 0x72

    .line 45
    .line 46
    if-ne v4, v11, :cond_2

    .line 47
    .line 48
    const/16 v11, 0x45

    .line 49
    .line 50
    if-ne v5, v11, :cond_2

    .line 51
    .line 52
    const/16 v11, 0x38

    .line 53
    .line 54
    if-ne v6, v11, :cond_2

    .line 55
    .line 56
    const/16 v11, 0x50

    .line 57
    .line 58
    if-ne v7, v11, :cond_2

    .line 59
    .line 60
    const/16 v11, 0x90

    .line 61
    .line 62
    if-eq v2, v11, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 66
    .line 67
    invoke-static {v1, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    .line 72
    .line 73
    iput v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    iput-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 77
    .line 78
    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 79
    .line 80
    if-ne v1, v0, :cond_1

    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 84
    .line 85
    const-string v1, "BZip2 CRC error"

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_2
    :goto_0
    const/16 v11, 0x31

    .line 92
    .line 93
    if-ne v3, v11, :cond_30

    .line 94
    .line 95
    const/16 v3, 0x41

    .line 96
    .line 97
    if-ne v4, v3, :cond_30

    .line 98
    .line 99
    const/16 v3, 0x59

    .line 100
    .line 101
    if-ne v5, v3, :cond_30

    .line 102
    .line 103
    const/16 v4, 0x26

    .line 104
    .line 105
    if-ne v6, v4, :cond_30

    .line 106
    .line 107
    const/16 v4, 0x53

    .line 108
    .line 109
    if-ne v7, v4, :cond_30

    .line 110
    .line 111
    if-ne v2, v3, :cond_30

    .line 112
    .line 113
    invoke-static {v1, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    .line 118
    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ne v1, v2, :cond_3

    .line 125
    .line 126
    move v1, v2

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    move v1, v10

    .line 129
    :goto_1
    iput-boolean v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    .line 130
    .line 131
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 132
    .line 133
    if-nez v1, :cond_4

    .line 134
    .line 135
    new-instance v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 136
    .line 137
    iget v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 138
    .line 139
    invoke-direct {v1, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;-><init>(I)V

    .line 140
    .line 141
    .line 142
    iput-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 143
    .line 144
    :cond_4
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 145
    .line 146
    const/16 v3, 0x18

    .line 147
    .line 148
    invoke-static {v1, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    iput v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 153
    .line 154
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 155
    .line 156
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 157
    .line 158
    iget-object v5, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 159
    .line 160
    move v6, v10

    .line 161
    move v7, v6

    .line 162
    :goto_2
    const/16 v12, 0x10

    .line 163
    .line 164
    if-ge v6, v12, :cond_6

    .line 165
    .line 166
    invoke-static {v3, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    if-eqz v12, :cond_5

    .line 171
    .line 172
    shl-int v12, v2, v6

    .line 173
    .line 174
    or-int/2addr v7, v12

    .line 175
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_6
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([ZZ)V

    .line 179
    .line 180
    .line 181
    move v6, v10

    .line 182
    :goto_3
    if-ge v6, v12, :cond_9

    .line 183
    .line 184
    shl-int v13, v2, v6

    .line 185
    .line 186
    and-int/2addr v13, v7

    .line 187
    if-eqz v13, :cond_8

    .line 188
    .line 189
    shl-int/lit8 v13, v6, 0x4

    .line 190
    .line 191
    move v14, v10

    .line 192
    :goto_4
    if-ge v14, v12, :cond_8

    .line 193
    .line 194
    invoke-static {v3, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    if-eqz v15, :cond_7

    .line 199
    .line 200
    add-int v15, v13, v14

    .line 201
    .line 202
    aput-boolean v2, v5, v15

    .line 203
    .line 204
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_9
    iget-object v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 211
    .line 212
    iget-object v6, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 213
    .line 214
    move v7, v10

    .line 215
    move v13, v7

    .line 216
    :goto_5
    const/16 v14, 0x100

    .line 217
    .line 218
    if-ge v7, v14, :cond_b

    .line 219
    .line 220
    aget-boolean v14, v6, v7

    .line 221
    .line 222
    if-eqz v14, :cond_a

    .line 223
    .line 224
    add-int/lit8 v14, v13, 0x1

    .line 225
    .line 226
    int-to-byte v15, v7

    .line 227
    iget-object v9, v5, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 228
    .line 229
    aput-byte v15, v9, v13

    .line 230
    .line 231
    move v13, v14

    .line 232
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 233
    .line 234
    const/16 v9, 0x20

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_b
    iput v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 238
    .line 239
    add-int/lit8 v13, v13, 0x2

    .line 240
    .line 241
    const/4 v5, 0x3

    .line 242
    invoke-static {v3, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    const/16 v6, 0xf

    .line 247
    .line 248
    invoke-static {v3, v6}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    const/16 v7, 0x103

    .line 253
    .line 254
    const-string v9, "alphaSize"

    .line 255
    .line 256
    invoke-static {v13, v7, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const/4 v7, 0x7

    .line 260
    const-string/jumbo v9, "nGroups"

    .line 261
    .line 262
    .line 263
    invoke-static {v5, v7, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const/16 v7, 0x4653

    .line 267
    .line 268
    const-string/jumbo v9, "nSelectors"

    .line 269
    .line 270
    .line 271
    invoke-static {v6, v7, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    move v7, v10

    .line 275
    :goto_6
    iget-object v9, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    .line 276
    .line 277
    if-ge v7, v6, :cond_d

    .line 278
    .line 279
    move v15, v10

    .line 280
    :goto_7
    invoke-static {v3, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 281
    .line 282
    .line 283
    move-result v16

    .line 284
    if-eqz v16, :cond_c

    .line 285
    .line 286
    add-int/lit8 v15, v15, 0x1

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_c
    int-to-byte v15, v15

    .line 290
    aput-byte v15, v9, v7

    .line 291
    .line 292
    add-int/lit8 v7, v7, 0x1

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_d
    move v7, v5

    .line 296
    :goto_8
    const/4 v15, -0x1

    .line 297
    add-int/2addr v7, v15

    .line 298
    iget-object v11, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 299
    .line 300
    if-ltz v7, :cond_e

    .line 301
    .line 302
    int-to-byte v15, v7

    .line 303
    aput-byte v15, v11, v7

    .line 304
    .line 305
    const/16 v11, 0x31

    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_e
    move v7, v10

    .line 309
    :goto_9
    const/4 v12, 0x6

    .line 310
    if-ge v7, v6, :cond_10

    .line 311
    .line 312
    aget-byte v14, v9, v7

    .line 313
    .line 314
    and-int/lit16 v14, v14, 0xff

    .line 315
    .line 316
    const-string/jumbo v8, "selectorMtf"

    .line 317
    .line 318
    .line 319
    invoke-static {v14, v12, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    aget-byte v8, v11, v14

    .line 323
    .line 324
    :goto_a
    if-lez v14, :cond_f

    .line 325
    .line 326
    add-int/lit8 v12, v14, -0x1

    .line 327
    .line 328
    aget-byte v12, v11, v12

    .line 329
    .line 330
    aput-byte v12, v11, v14

    .line 331
    .line 332
    add-int/lit8 v14, v14, -0x1

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_f
    aput-byte v8, v11, v10

    .line 336
    .line 337
    iget-object v12, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 338
    .line 339
    aput-byte v8, v12, v7

    .line 340
    .line 341
    add-int/lit8 v7, v7, 0x1

    .line 342
    .line 343
    const/16 v8, 0x17

    .line 344
    .line 345
    const/16 v12, 0x10

    .line 346
    .line 347
    const/16 v14, 0x100

    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_10
    move v6, v10

    .line 351
    :goto_b
    if-ge v6, v5, :cond_14

    .line 352
    .line 353
    const/4 v7, 0x5

    .line 354
    invoke-static {v3, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    iget-object v8, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 359
    .line 360
    aget-object v8, v8, v6

    .line 361
    .line 362
    move v9, v10

    .line 363
    :goto_c
    if-ge v9, v13, :cond_13

    .line 364
    .line 365
    :goto_d
    invoke-static {v3, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 366
    .line 367
    .line 368
    move-result v11

    .line 369
    if-eqz v11, :cond_12

    .line 370
    .line 371
    invoke-static {v3, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    if-eqz v11, :cond_11

    .line 376
    .line 377
    move v11, v15

    .line 378
    goto :goto_e

    .line 379
    :cond_11
    move v11, v2

    .line 380
    :goto_e
    add-int/2addr v7, v11

    .line 381
    goto :goto_d

    .line 382
    :cond_12
    int-to-char v11, v7

    .line 383
    aput-char v11, v8, v9

    .line 384
    .line 385
    add-int/lit8 v9, v9, 0x1

    .line 386
    .line 387
    goto :goto_c

    .line 388
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 389
    .line 390
    goto :goto_b

    .line 391
    :cond_14
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 392
    .line 393
    iget-object v4, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 394
    .line 395
    move v6, v10

    .line 396
    :goto_f
    if-ge v6, v5, :cond_20

    .line 397
    .line 398
    aget-object v8, v4, v6

    .line 399
    .line 400
    move v14, v10

    .line 401
    move v9, v13

    .line 402
    const/16 v11, 0x20

    .line 403
    .line 404
    :goto_10
    add-int/2addr v9, v15

    .line 405
    if-ltz v9, :cond_17

    .line 406
    .line 407
    aget-char v12, v8, v9

    .line 408
    .line 409
    if-le v12, v14, :cond_15

    .line 410
    .line 411
    move v14, v12

    .line 412
    :cond_15
    if-ge v12, v11, :cond_16

    .line 413
    .line 414
    move v11, v12

    .line 415
    :cond_16
    const/4 v12, 0x6

    .line 416
    goto :goto_10

    .line 417
    :cond_17
    iget-object v8, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 418
    .line 419
    aget-object v8, v8, v6

    .line 420
    .line 421
    iget-object v9, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 422
    .line 423
    aget-object v9, v9, v6

    .line 424
    .line 425
    iget-object v12, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 426
    .line 427
    aget-object v12, v12, v6

    .line 428
    .line 429
    aget-object v19, v4, v6

    .line 430
    .line 431
    move/from16 v21, v10

    .line 432
    .line 433
    move v2, v11

    .line 434
    :goto_11
    if-gt v2, v14, :cond_1a

    .line 435
    .line 436
    move v7, v10

    .line 437
    :goto_12
    if-ge v7, v13, :cond_19

    .line 438
    .line 439
    aget-char v10, v19, v7

    .line 440
    .line 441
    if-ne v10, v2, :cond_18

    .line 442
    .line 443
    add-int/lit8 v10, v21, 0x1

    .line 444
    .line 445
    aput v7, v12, v21

    .line 446
    .line 447
    move/from16 v21, v10

    .line 448
    .line 449
    :cond_18
    add-int/lit8 v7, v7, 0x1

    .line 450
    .line 451
    const/4 v10, 0x0

    .line 452
    goto :goto_12

    .line 453
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 454
    .line 455
    const/4 v10, 0x0

    .line 456
    goto :goto_11

    .line 457
    :cond_1a
    const/16 v2, 0x17

    .line 458
    .line 459
    :goto_13
    add-int/2addr v2, v15

    .line 460
    if-lez v2, :cond_1b

    .line 461
    .line 462
    const/4 v7, 0x0

    .line 463
    aput v7, v9, v2

    .line 464
    .line 465
    aput v7, v8, v2

    .line 466
    .line 467
    goto :goto_13

    .line 468
    :cond_1b
    const/4 v2, 0x0

    .line 469
    :goto_14
    if-ge v2, v13, :cond_1c

    .line 470
    .line 471
    aget-char v7, v19, v2

    .line 472
    .line 473
    const-string v10, "length"

    .line 474
    .line 475
    const/16 v12, 0x102

    .line 476
    .line 477
    invoke-static {v7, v12, v10}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 478
    .line 479
    .line 480
    const/4 v10, 0x1

    .line 481
    add-int/2addr v7, v10

    .line 482
    aget v12, v9, v7

    .line 483
    .line 484
    add-int/2addr v12, v10

    .line 485
    aput v12, v9, v7

    .line 486
    .line 487
    add-int/lit8 v2, v2, 0x1

    .line 488
    .line 489
    goto :goto_14

    .line 490
    :cond_1c
    const/4 v2, 0x0

    .line 491
    aget v7, v9, v2

    .line 492
    .line 493
    const/4 v2, 0x1

    .line 494
    const/16 v10, 0x17

    .line 495
    .line 496
    :goto_15
    if-ge v2, v10, :cond_1d

    .line 497
    .line 498
    aget v12, v9, v2

    .line 499
    .line 500
    add-int/2addr v7, v12

    .line 501
    aput v7, v9, v2

    .line 502
    .line 503
    add-int/lit8 v2, v2, 0x1

    .line 504
    .line 505
    goto :goto_15

    .line 506
    :cond_1d
    aget v2, v9, v11

    .line 507
    .line 508
    move v12, v11

    .line 509
    const/4 v7, 0x0

    .line 510
    :goto_16
    if-gt v12, v14, :cond_1e

    .line 511
    .line 512
    add-int/lit8 v18, v12, 0x1

    .line 513
    .line 514
    aget v19, v9, v18

    .line 515
    .line 516
    sub-int v2, v19, v2

    .line 517
    .line 518
    add-int/2addr v2, v7

    .line 519
    add-int/lit8 v7, v2, -0x1

    .line 520
    .line 521
    aput v7, v8, v12

    .line 522
    .line 523
    const/4 v7, 0x1

    .line 524
    shl-int/2addr v2, v7

    .line 525
    move v7, v2

    .line 526
    move/from16 v12, v18

    .line 527
    .line 528
    move/from16 v2, v19

    .line 529
    .line 530
    goto :goto_16

    .line 531
    :cond_1e
    const/4 v7, 0x1

    .line 532
    add-int/lit8 v2, v11, 0x1

    .line 533
    .line 534
    :goto_17
    if-gt v2, v14, :cond_1f

    .line 535
    .line 536
    add-int/lit8 v12, v2, -0x1

    .line 537
    .line 538
    aget v12, v8, v12

    .line 539
    .line 540
    add-int/2addr v12, v7

    .line 541
    shl-int/2addr v12, v7

    .line 542
    aget v7, v9, v2

    .line 543
    .line 544
    sub-int/2addr v12, v7

    .line 545
    aput v12, v9, v2

    .line 546
    .line 547
    add-int/lit8 v2, v2, 0x1

    .line 548
    .line 549
    const/4 v7, 0x1

    .line 550
    goto :goto_17

    .line 551
    :cond_1f
    iget-object v2, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 552
    .line 553
    aput v11, v2, v6

    .line 554
    .line 555
    add-int/lit8 v6, v6, 0x1

    .line 556
    .line 557
    const/4 v2, 0x1

    .line 558
    const/4 v10, 0x0

    .line 559
    const/4 v12, 0x6

    .line 560
    goto/16 :goto_f

    .line 561
    .line 562
    :cond_20
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 563
    .line 564
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 565
    .line 566
    iget v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 567
    .line 568
    const v5, 0x186a0

    .line 569
    .line 570
    .line 571
    mul-int/2addr v4, v5

    .line 572
    const/16 v5, 0x100

    .line 573
    .line 574
    :goto_18
    add-int/2addr v5, v15

    .line 575
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 576
    .line 577
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 578
    .line 579
    if-ltz v5, :cond_21

    .line 580
    .line 581
    int-to-char v8, v5

    .line 582
    aput-char v8, v7, v5

    .line 583
    .line 584
    const/4 v8, 0x0

    .line 585
    aput v8, v6, v5

    .line 586
    .line 587
    goto :goto_18

    .line 588
    :cond_21
    const/4 v8, 0x0

    .line 589
    iget v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 590
    .line 591
    const/4 v9, 0x1

    .line 592
    add-int/2addr v5, v9

    .line 593
    iget-object v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 594
    .line 595
    iget-object v10, v9, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 596
    .line 597
    aget-byte v10, v10, v8

    .line 598
    .line 599
    and-int/lit16 v8, v10, 0xff

    .line 600
    .line 601
    const-string/jumbo v10, "zt"

    .line 602
    .line 603
    .line 604
    const/4 v11, 0x6

    .line 605
    invoke-static {v8, v11, v10}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 606
    .line 607
    .line 608
    iget-object v11, v9, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 609
    .line 610
    aget-object v11, v11, v8

    .line 611
    .line 612
    iget-object v12, v9, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 613
    .line 614
    aget v12, v12, v8

    .line 615
    .line 616
    const-string/jumbo v13, "zn"

    .line 617
    .line 618
    .line 619
    const/16 v14, 0x102

    .line 620
    .line 621
    invoke-static {v12, v14, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 622
    .line 623
    .line 624
    iget-object v15, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 625
    .line 626
    invoke-static {v15, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 627
    .line 628
    .line 629
    move-result v15

    .line 630
    :goto_19
    aget v14, v11, v12

    .line 631
    .line 632
    if-le v15, v14, :cond_22

    .line 633
    .line 634
    add-int/lit8 v12, v12, 0x1

    .line 635
    .line 636
    const/16 v14, 0x102

    .line 637
    .line 638
    invoke-static {v12, v14, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 639
    .line 640
    .line 641
    shl-int/lit8 v14, v15, 0x1

    .line 642
    .line 643
    iget-object v15, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 644
    .line 645
    move-object/from16 v18, v11

    .line 646
    .line 647
    const/4 v11, 0x1

    .line 648
    invoke-static {v15, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 649
    .line 650
    .line 651
    move-result v15

    .line 652
    or-int/2addr v15, v14

    .line 653
    move-object/from16 v11, v18

    .line 654
    .line 655
    goto :goto_19

    .line 656
    :cond_22
    iget-object v11, v9, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 657
    .line 658
    aget-object v11, v11, v8

    .line 659
    .line 660
    aget v11, v11, v12

    .line 661
    .line 662
    sub-int/2addr v15, v11

    .line 663
    const-string/jumbo v11, "zvec"

    .line 664
    .line 665
    .line 666
    const/16 v12, 0x102

    .line 667
    .line 668
    invoke-static {v15, v12, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iget-object v9, v9, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 672
    .line 673
    aget-object v8, v9, v8

    .line 674
    .line 675
    aget v8, v8, v15

    .line 676
    .line 677
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 678
    .line 679
    const/4 v12, 0x0

    .line 680
    aget-byte v14, v9, v12

    .line 681
    .line 682
    and-int/lit16 v12, v14, 0xff

    .line 683
    .line 684
    const/4 v14, 0x6

    .line 685
    invoke-static {v12, v14, v10}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 686
    .line 687
    .line 688
    iget-object v14, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 689
    .line 690
    aget-object v15, v14, v12

    .line 691
    .line 692
    move/from16 v18, v8

    .line 693
    .line 694
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 695
    .line 696
    aget-object v19, v8, v12

    .line 697
    .line 698
    move-object/from16 v21, v15

    .line 699
    .line 700
    iget-object v15, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 701
    .line 702
    aget-object v22, v15, v12

    .line 703
    .line 704
    iget-object v0, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 705
    .line 706
    aget v12, v0, v12

    .line 707
    .line 708
    move-object/from16 v24, v11

    .line 709
    .line 710
    move-object/from16 v23, v22

    .line 711
    .line 712
    const/4 v11, -0x1

    .line 713
    const/16 v22, 0x0

    .line 714
    .line 715
    const/16 v25, 0x31

    .line 716
    .line 717
    move/from16 v35, v18

    .line 718
    .line 719
    move/from16 v18, v12

    .line 720
    .line 721
    move/from16 v12, v35

    .line 722
    .line 723
    :goto_1a
    if-eq v12, v5, :cond_2f

    .line 724
    .line 725
    move/from16 v26, v5

    .line 726
    .line 727
    const-string v5, "groupNo"

    .line 728
    .line 729
    move-object/from16 v27, v1

    .line 730
    .line 731
    const-string/jumbo v1, "yy"

    .line 732
    .line 733
    .line 734
    move-object/from16 v28, v13

    .line 735
    .line 736
    const-string v13, " exceeds "

    .line 737
    .line 738
    move-object/from16 v29, v13

    .line 739
    .line 740
    iget-object v13, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 741
    .line 742
    if-eqz v12, :cond_29

    .line 743
    .line 744
    move-object/from16 v30, v2

    .line 745
    .line 746
    const/4 v2, 0x1

    .line 747
    if-ne v12, v2, :cond_23

    .line 748
    .line 749
    move-object/from16 v32, v0

    .line 750
    .line 751
    :goto_1b
    move v2, v4

    .line 752
    move-object/from16 v0, v24

    .line 753
    .line 754
    move-object/from16 v4, v28

    .line 755
    .line 756
    move-object/from16 v33, v29

    .line 757
    .line 758
    move/from16 v24, v12

    .line 759
    .line 760
    move-object/from16 v12, v27

    .line 761
    .line 762
    goto/16 :goto_20

    .line 763
    .line 764
    :cond_23
    add-int/lit8 v11, v11, 0x1

    .line 765
    .line 766
    if-ge v11, v4, :cond_28

    .line 767
    .line 768
    const/16 v2, 0x101

    .line 769
    .line 770
    move/from16 v31, v4

    .line 771
    .line 772
    const-string/jumbo v4, "nextSym"

    .line 773
    .line 774
    .line 775
    invoke-static {v12, v2, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 776
    .line 777
    .line 778
    add-int/lit8 v2, v12, -0x1

    .line 779
    .line 780
    aget-char v4, v7, v2

    .line 781
    .line 782
    move-object/from16 v32, v0

    .line 783
    .line 784
    const/16 v0, 0x100

    .line 785
    .line 786
    invoke-static {v4, v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 787
    .line 788
    .line 789
    aget-byte v0, v13, v4

    .line 790
    .line 791
    and-int/lit16 v1, v0, 0xff

    .line 792
    .line 793
    aget v13, v6, v1

    .line 794
    .line 795
    const/16 v20, 0x1

    .line 796
    .line 797
    add-int/lit8 v13, v13, 0x1

    .line 798
    .line 799
    aput v13, v6, v1

    .line 800
    .line 801
    aput-byte v0, v3, v11

    .line 802
    .line 803
    const/16 v0, 0x10

    .line 804
    .line 805
    if-gt v12, v0, :cond_25

    .line 806
    .line 807
    :goto_1c
    if-lez v2, :cond_24

    .line 808
    .line 809
    add-int/lit8 v1, v2, -0x1

    .line 810
    .line 811
    aget-char v12, v7, v1

    .line 812
    .line 813
    aput-char v12, v7, v2

    .line 814
    .line 815
    move v2, v1

    .line 816
    goto :goto_1c

    .line 817
    :cond_24
    const/4 v1, 0x0

    .line 818
    goto :goto_1d

    .line 819
    :cond_25
    const/4 v1, 0x0

    .line 820
    const/4 v12, 0x1

    .line 821
    invoke-static {v7, v1, v7, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    .line 823
    .line 824
    :goto_1d
    aput-char v4, v7, v1

    .line 825
    .line 826
    if-nez v25, :cond_26

    .line 827
    .line 828
    add-int/lit8 v1, v22, 0x1

    .line 829
    .line 830
    const/16 v2, 0x4652

    .line 831
    .line 832
    invoke-static {v1, v2, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 833
    .line 834
    .line 835
    aget-byte v2, v9, v1

    .line 836
    .line 837
    and-int/lit16 v2, v2, 0xff

    .line 838
    .line 839
    const/4 v4, 0x6

    .line 840
    invoke-static {v2, v4, v10}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 841
    .line 842
    .line 843
    aget-object v4, v14, v2

    .line 844
    .line 845
    aget-object v5, v8, v2

    .line 846
    .line 847
    aget-object v12, v15, v2

    .line 848
    .line 849
    aget v2, v32, v2

    .line 850
    .line 851
    move/from16 v22, v1

    .line 852
    .line 853
    move-object/from16 v21, v4

    .line 854
    .line 855
    move-object/from16 v19, v5

    .line 856
    .line 857
    move-object/from16 v23, v12

    .line 858
    .line 859
    move-object/from16 v4, v28

    .line 860
    .line 861
    const/16 v1, 0x102

    .line 862
    .line 863
    const/16 v25, 0x31

    .line 864
    .line 865
    goto :goto_1e

    .line 866
    :cond_26
    add-int/lit8 v25, v25, -0x1

    .line 867
    .line 868
    move/from16 v2, v18

    .line 869
    .line 870
    move-object/from16 v4, v28

    .line 871
    .line 872
    const/16 v1, 0x102

    .line 873
    .line 874
    :goto_1e
    invoke-static {v2, v1, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 875
    .line 876
    .line 877
    move-object/from16 v5, v27

    .line 878
    .line 879
    invoke-static {v5, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 880
    .line 881
    .line 882
    move-result v12

    .line 883
    move v13, v2

    .line 884
    :goto_1f
    aget v0, v19, v13

    .line 885
    .line 886
    if-le v12, v0, :cond_27

    .line 887
    .line 888
    add-int/lit8 v13, v13, 0x1

    .line 889
    .line 890
    invoke-static {v13, v1, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 891
    .line 892
    .line 893
    shl-int/lit8 v0, v12, 0x1

    .line 894
    .line 895
    const/4 v12, 0x1

    .line 896
    invoke-static {v5, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 897
    .line 898
    .line 899
    move-result v18

    .line 900
    or-int v12, v0, v18

    .line 901
    .line 902
    goto :goto_1f

    .line 903
    :cond_27
    aget v0, v21, v13

    .line 904
    .line 905
    sub-int/2addr v12, v0

    .line 906
    move-object/from16 v0, v24

    .line 907
    .line 908
    invoke-static {v12, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 909
    .line 910
    .line 911
    aget v12, v23, v12

    .line 912
    .line 913
    move/from16 v18, v2

    .line 914
    .line 915
    move-object v13, v4

    .line 916
    move-object v1, v5

    .line 917
    move/from16 v5, v26

    .line 918
    .line 919
    move-object/from16 v2, v30

    .line 920
    .line 921
    move/from16 v4, v31

    .line 922
    .line 923
    move-object/from16 v0, v32

    .line 924
    .line 925
    goto/16 :goto_1a

    .line 926
    .line 927
    :cond_28
    move/from16 v31, v4

    .line 928
    .line 929
    new-instance v0, Ljava/io/IOException;

    .line 930
    .line 931
    const-string v1, "block overrun in MTF, "

    .line 932
    .line 933
    move-object/from16 v3, v29

    .line 934
    .line 935
    move/from16 v2, v31

    .line 936
    .line 937
    invoke-static {v11, v2, v1, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    throw v0

    .line 945
    :cond_29
    move-object/from16 v32, v0

    .line 946
    .line 947
    move-object/from16 v30, v2

    .line 948
    .line 949
    goto/16 :goto_1b

    .line 950
    .line 951
    :goto_20
    move/from16 v31, v2

    .line 952
    .line 953
    move/from16 v2, v24

    .line 954
    .line 955
    const/16 v27, -0x1

    .line 956
    .line 957
    move-object/from16 v24, v23

    .line 958
    .line 959
    move/from16 v23, v22

    .line 960
    .line 961
    move-object/from16 v22, v21

    .line 962
    .line 963
    move-object/from16 v21, v19

    .line 964
    .line 965
    move/from16 v19, v18

    .line 966
    .line 967
    const/16 v18, 0x1

    .line 968
    .line 969
    :goto_21
    if-nez v2, :cond_2a

    .line 970
    .line 971
    add-int v27, v27, v18

    .line 972
    .line 973
    move-object/from16 v28, v3

    .line 974
    .line 975
    goto :goto_22

    .line 976
    :cond_2a
    move-object/from16 v28, v3

    .line 977
    .line 978
    const/4 v3, 0x1

    .line 979
    if-ne v2, v3, :cond_2d

    .line 980
    .line 981
    shl-int/lit8 v2, v18, 0x1

    .line 982
    .line 983
    add-int v27, v27, v2

    .line 984
    .line 985
    :goto_22
    if-nez v25, :cond_2b

    .line 986
    .line 987
    add-int/lit8 v2, v23, 0x1

    .line 988
    .line 989
    const/16 v3, 0x4652

    .line 990
    .line 991
    invoke-static {v2, v3, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 992
    .line 993
    .line 994
    aget-byte v3, v9, v2

    .line 995
    .line 996
    and-int/lit16 v3, v3, 0xff

    .line 997
    .line 998
    move/from16 v19, v2

    .line 999
    .line 1000
    const/4 v2, 0x6

    .line 1001
    invoke-static {v3, v2, v10}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    aget-object v22, v14, v3

    .line 1005
    .line 1006
    aget-object v21, v8, v3

    .line 1007
    .line 1008
    aget-object v24, v15, v3

    .line 1009
    .line 1010
    aget v3, v32, v3

    .line 1011
    .line 1012
    move/from16 v23, v19

    .line 1013
    .line 1014
    const/16 v2, 0x102

    .line 1015
    .line 1016
    const/16 v25, 0x31

    .line 1017
    .line 1018
    goto :goto_23

    .line 1019
    :cond_2b
    const/4 v2, 0x6

    .line 1020
    add-int/lit8 v25, v25, -0x1

    .line 1021
    .line 1022
    move/from16 v3, v19

    .line 1023
    .line 1024
    const/16 v2, 0x102

    .line 1025
    .line 1026
    :goto_23
    invoke-static {v3, v2, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v12, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 1030
    .line 1031
    .line 1032
    move-result v19

    .line 1033
    move/from16 v29, v3

    .line 1034
    .line 1035
    move/from16 v2, v19

    .line 1036
    .line 1037
    move/from16 v19, v29

    .line 1038
    .line 1039
    :goto_24
    aget v3, v21, v19

    .line 1040
    .line 1041
    if-le v2, v3, :cond_2c

    .line 1042
    .line 1043
    add-int/lit8 v3, v19, 0x1

    .line 1044
    .line 1045
    move-object/from16 v34, v5

    .line 1046
    .line 1047
    const/16 v5, 0x102

    .line 1048
    .line 1049
    invoke-static {v3, v5, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    shl-int/lit8 v2, v2, 0x1

    .line 1053
    .line 1054
    const/4 v5, 0x1

    .line 1055
    invoke-static {v12, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 1056
    .line 1057
    .line 1058
    move-result v19

    .line 1059
    or-int v2, v2, v19

    .line 1060
    .line 1061
    move/from16 v19, v3

    .line 1062
    .line 1063
    move-object/from16 v5, v34

    .line 1064
    .line 1065
    goto :goto_24

    .line 1066
    :cond_2c
    move-object/from16 v34, v5

    .line 1067
    .line 1068
    aget v3, v22, v19

    .line 1069
    .line 1070
    sub-int/2addr v2, v3

    .line 1071
    const/16 v3, 0x102

    .line 1072
    .line 1073
    invoke-static {v2, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    aget v2, v24, v2

    .line 1077
    .line 1078
    shl-int/lit8 v18, v18, 0x1

    .line 1079
    .line 1080
    move-object/from16 v3, v28

    .line 1081
    .line 1082
    move/from16 v19, v29

    .line 1083
    .line 1084
    goto :goto_21

    .line 1085
    :cond_2d
    move v5, v2

    .line 1086
    const/4 v2, 0x0

    .line 1087
    aget-char v3, v7, v2

    .line 1088
    .line 1089
    const/16 v2, 0x100

    .line 1090
    .line 1091
    invoke-static {v3, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    aget-byte v1, v13, v3

    .line 1095
    .line 1096
    and-int/lit16 v3, v1, 0xff

    .line 1097
    .line 1098
    aget v13, v6, v3

    .line 1099
    .line 1100
    add-int/lit8 v17, v27, 0x1

    .line 1101
    .line 1102
    add-int v17, v17, v13

    .line 1103
    .line 1104
    aput v17, v6, v3

    .line 1105
    .line 1106
    add-int/lit8 v11, v11, 0x1

    .line 1107
    .line 1108
    add-int v3, v11, v27

    .line 1109
    .line 1110
    add-int/lit8 v13, v3, 0x1

    .line 1111
    .line 1112
    move-object/from16 v2, v28

    .line 1113
    .line 1114
    invoke-static {v2, v11, v13, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1115
    .line 1116
    .line 1117
    move/from16 v1, v31

    .line 1118
    .line 1119
    if-ge v3, v1, :cond_2e

    .line 1120
    .line 1121
    move v11, v3

    .line 1122
    move-object v13, v4

    .line 1123
    move/from16 v18, v19

    .line 1124
    .line 1125
    move-object/from16 v19, v21

    .line 1126
    .line 1127
    move-object/from16 v21, v22

    .line 1128
    .line 1129
    move/from16 v22, v23

    .line 1130
    .line 1131
    move-object/from16 v23, v24

    .line 1132
    .line 1133
    move-object/from16 v24, v0

    .line 1134
    .line 1135
    move v4, v1

    .line 1136
    move-object v3, v2

    .line 1137
    move-object v1, v12

    .line 1138
    move-object/from16 v2, v30

    .line 1139
    .line 1140
    move-object/from16 v0, v32

    .line 1141
    .line 1142
    move v12, v5

    .line 1143
    move/from16 v5, v26

    .line 1144
    .line 1145
    goto/16 :goto_1a

    .line 1146
    .line 1147
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    .line 1148
    .line 1149
    const-string v2, "block overrun while expanding RLE in MTF, "

    .line 1150
    .line 1151
    move-object/from16 v4, v33

    .line 1152
    .line 1153
    invoke-static {v3, v1, v2, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1158
    .line 1159
    .line 1160
    throw v0

    .line 1161
    :cond_2f
    move-object/from16 v0, p0

    .line 1162
    .line 1163
    iput v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 1164
    .line 1165
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 1166
    .line 1167
    const/4 v2, -0x1

    .line 1168
    iput v2, v1, Lorg/apache/commons/compress/compressors/bzip2/CRC;->globalCrc:I

    .line 1169
    .line 1170
    const/4 v1, 0x1

    .line 1171
    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 1172
    .line 1173
    return-void

    .line 1174
    :cond_30
    move v1, v10

    .line 1175
    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 1176
    .line 1177
    new-instance v0, Ljava/io/IOException;

    .line 1178
    .line 1179
    const-string v1, "bad block header"

    .line 1180
    .line 1181
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    throw v0
.end method

.method public final read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read([BII)I
    .locals 3

    .line 4
    const-string v0, ") < 0."

    const-string/jumbo v1, "offs("

    if-ltz p2, :cond_6

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    .line 5
    array-length v2, p1

    if-gt v0, v2, :cond_4

    .line 6
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v1, :cond_3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v2, p3, 0x1

    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, p3

    move p3, v2

    goto :goto_0

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 p0, -0x1

    goto :goto_1

    :cond_2
    sub-int p0, p3, p2

    :goto_1
    return p0

    .line 9
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "stream closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, ") + len("

    const-string v2, ") > dest.length("

    .line 11
    invoke-static {p2, p3, v1, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12
    array-length p1, p1

    const-string p3, ")."

    .line 13
    invoke-static {p1, p2, p3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "len("

    .line 16
    invoke-static {p3, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 19
    invoke-static {p2, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read0()I
    .locals 7

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string/jumbo v2, "su_tPos"

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :pswitch_1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 24
    .line 25
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 26
    .line 27
    if-eq v0, v5, :cond_0

    .line 28
    .line 29
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 37
    .line 38
    add-int/2addr v0, v4

    .line 39
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 40
    .line 41
    if-lt v0, v3, :cond_1

    .line 42
    .line 43
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 44
    .line 45
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 46
    .line 47
    iget-object v3, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 48
    .line 49
    array-length v3, v3

    .line 50
    invoke-static {v0, v3, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 54
    .line 55
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 56
    .line 57
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 58
    .line 59
    aget-byte v2, v2, v3

    .line 60
    .line 61
    and-int/lit16 v2, v2, 0xff

    .line 62
    .line 63
    int-to-char v2, v2

    .line 64
    iput-char v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 65
    .line 66
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 67
    .line 68
    aget v0, v0, v3

    .line 69
    .line 70
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 71
    .line 72
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    :goto_0
    return p0

    .line 84
    :pswitch_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    return p0

    .line 95
    :pswitch_4
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 96
    .line 97
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 98
    .line 99
    const/4 v6, 0x2

    .line 100
    if-eq v0, v5, :cond_2

    .line 101
    .line 102
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 103
    .line 104
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 105
    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 112
    .line 113
    add-int/2addr v0, v4

    .line 114
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 115
    .line 116
    if-lt v0, v3, :cond_6

    .line 117
    .line 118
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 119
    .line 120
    iget-object v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 121
    .line 122
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 123
    .line 124
    aget-byte v5, v5, v6

    .line 125
    .line 126
    and-int/lit16 v5, v5, 0xff

    .line 127
    .line 128
    int-to-char v5, v5

    .line 129
    iput-char v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 130
    .line 131
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 132
    .line 133
    array-length v0, v0

    .line 134
    invoke-static {v6, v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 138
    .line 139
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 140
    .line 141
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 142
    .line 143
    aget v0, v0, v2

    .line 144
    .line 145
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 146
    .line 147
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 148
    .line 149
    if-nez v0, :cond_3

    .line 150
    .line 151
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 152
    .line 153
    sget-object v2, Lorg/apache/commons/compress/compressors/bzip2/Rand;->RNUMS:[I

    .line 154
    .line 155
    aget v2, v2, v0

    .line 156
    .line 157
    sub-int/2addr v2, v4

    .line 158
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 159
    .line 160
    add-int/2addr v0, v4

    .line 161
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 162
    .line 163
    const/16 v2, 0x200

    .line 164
    .line 165
    if-ne v0, v2, :cond_4

    .line 166
    .line 167
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    sub-int/2addr v0, v4

    .line 171
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 172
    .line 173
    :cond_4
    :goto_1
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 174
    .line 175
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 176
    .line 177
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 178
    .line 179
    if-ne v0, v4, :cond_5

    .line 180
    .line 181
    iget-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 182
    .line 183
    xor-int/2addr v0, v4

    .line 184
    int-to-char v0, v0

    .line 185
    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 186
    .line 187
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 193
    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    :goto_2
    return p0

    .line 199
    :pswitch_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    return p0

    .line 210
    :pswitch_7
    const/4 p0, -0x1

    .line 211
    return p0

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setupBlock()I
    .locals 11

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 11
    .line 12
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    add-int/2addr v2, v3

    .line 16
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    array-length v5, v4

    .line 21
    if-ge v5, v2, :cond_2

    .line 22
    .line 23
    :cond_1
    new-array v4, v2, [I

    .line 24
    .line 25
    iput-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 26
    .line 27
    :cond_2
    iget-object v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    aput v6, v1, v6

    .line 31
    .line 32
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 33
    .line 34
    const/16 v7, 0x100

    .line 35
    .line 36
    invoke-static {v0, v6, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    aget v0, v1, v6

    .line 40
    .line 41
    :goto_0
    if-gt v3, v7, :cond_3

    .line 42
    .line 43
    aget v8, v1, v3

    .line 44
    .line 45
    add-int/2addr v0, v8

    .line 46
    aput v0, v1, v3

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 52
    .line 53
    move v3, v6

    .line 54
    :goto_1
    if-gt v3, v0, :cond_4

    .line 55
    .line 56
    aget-byte v8, v5, v3

    .line 57
    .line 58
    and-int/lit16 v8, v8, 0xff

    .line 59
    .line 60
    aget v9, v1, v8

    .line 61
    .line 62
    add-int/lit8 v10, v9, 0x1

    .line 63
    .line 64
    aput v10, v1, v8

    .line 65
    .line 66
    const-string/jumbo v8, "tt index"

    .line 67
    .line 68
    .line 69
    invoke-static {v9, v2, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    aput v3, v4, v9

    .line 73
    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 78
    .line 79
    if-ltz v0, :cond_6

    .line 80
    .line 81
    array-length v1, v4

    .line 82
    if-ge v0, v1, :cond_6

    .line 83
    .line 84
    aget v0, v4, v0

    .line 85
    .line 86
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 87
    .line 88
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 89
    .line 90
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 91
    .line 92
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 93
    .line 94
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    .line 95
    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 99
    .line 100
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 101
    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    return p0

    .line 107
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    return p0

    .line 112
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 113
    .line 114
    const-string/jumbo v0, "stream corrupted"

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_7
    :goto_2
    const/4 p0, -0x1

    .line 122
    return p0
.end method

.method public final setupNoRandPartA()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 8
    .line 9
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 12
    .line 13
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 14
    .line 15
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 16
    .line 17
    aget-byte v1, v1, v2

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 20
    .line 21
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 22
    .line 23
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 24
    .line 25
    array-length v0, v0

    .line 26
    const-string/jumbo v3, "su_tPos"

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 33
    .line 34
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 35
    .line 36
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 37
    .line 38
    aget v0, v0, v2

    .line 39
    .line 40
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 41
    .line 42
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 47
    .line 48
    const/4 v0, 0x6

    .line 49
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 50
    .line 51
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :cond_0
    const/4 v0, 0x5

    .line 58
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0
.end method

.method public final setupNoRandPartC()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 2
    .line 3
    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public final setupRandPartA()I
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 8
    .line 9
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 12
    .line 13
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 14
    .line 15
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 16
    .line 17
    aget-byte v1, v1, v2

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0xff

    .line 20
    .line 21
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 22
    .line 23
    array-length v0, v0

    .line 24
    const-string/jumbo v3, "su_tPos"

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 33
    .line 34
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 35
    .line 36
    aget v0, v0, v2

    .line 37
    .line 38
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 39
    .line 40
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x1

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 47
    .line 48
    sget-object v4, Lorg/apache/commons/compress/compressors/bzip2/Rand;->RNUMS:[I

    .line 49
    .line 50
    aget v4, v4, v0

    .line 51
    .line 52
    sub-int/2addr v4, v3

    .line 53
    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 54
    .line 55
    add-int/2addr v0, v3

    .line 56
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 57
    .line 58
    const/16 v4, 0x200

    .line 59
    .line 60
    if-ne v0, v4, :cond_1

    .line 61
    .line 62
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    sub-int/2addr v0, v3

    .line 66
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 67
    .line 68
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 69
    .line 70
    if-ne v0, v3, :cond_2

    .line 71
    .line 72
    move v2, v3

    .line 73
    :cond_2
    xor-int v0, v1, v2

    .line 74
    .line 75
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 76
    .line 77
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 78
    .line 79
    add-int/2addr v1, v3

    .line 80
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 81
    .line 82
    const/4 v1, 0x3

    .line 83
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 84
    .line 85
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 88
    .line 89
    .line 90
    return v0

    .line 91
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    return p0
.end method

.method public final setupRandPartC()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 2
    .line 3
    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 19
    .line 20
    iget p0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 21
    .line 22
    return p0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 25
    .line 26
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method
