.class public final Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final base:[[I

.field public final cftab:[I

.field public final getAndMoveToFrontDecode_yy:[C

.field public final inUse:[Z

.field public final limit:[[I

.field public final ll8:[B

.field public final minLens:[I

.field public final perm:[[I

.field public final recvDecodingTables_pos:[B

.field public final selector:[B

.field public final selectorMtf:[B

.field public final seqToUnseq:[B

.field public final temp_charArray2d:[[C

.field public tt:[I

.field public final unzftab:[I


# direct methods
.method public constructor <init>(I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v1, v0, [Z

    .line 7
    .line 8
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 13
    .line 14
    const/16 v1, 0x4652

    .line 15
    .line 16
    new-array v2, v1, [B

    .line 17
    .line 18
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 19
    .line 20
    new-array v1, v1, [B

    .line 21
    .line 22
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    .line 23
    .line 24
    new-array v1, v0, [I

    .line 25
    .line 26
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    new-array v2, v1, [I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/16 v4, 0x102

    .line 33
    .line 34
    aput v4, v2, v3

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x6

    .line 38
    aput v6, v2, v5

    .line 39
    .line 40
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, [[I

    .line 47
    .line 48
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 49
    .line 50
    new-array v2, v1, [I

    .line 51
    .line 52
    aput v4, v2, v3

    .line 53
    .line 54
    aput v6, v2, v5

    .line 55
    .line 56
    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, [[I

    .line 61
    .line 62
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 63
    .line 64
    new-array v2, v1, [I

    .line 65
    .line 66
    aput v4, v2, v3

    .line 67
    .line 68
    aput v6, v2, v5

    .line 69
    .line 70
    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, [[I

    .line 75
    .line 76
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 77
    .line 78
    new-array v2, v6, [I

    .line 79
    .line 80
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 81
    .line 82
    const/16 v2, 0x101

    .line 83
    .line 84
    new-array v2, v2, [I

    .line 85
    .line 86
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 87
    .line 88
    new-array v0, v0, [C

    .line 89
    .line 90
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 91
    .line 92
    new-array v0, v1, [I

    .line 93
    .line 94
    aput v4, v0, v3

    .line 95
    .line 96
    aput v6, v0, v5

    .line 97
    .line 98
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 99
    .line 100
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, [[C

    .line 105
    .line 106
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 107
    .line 108
    new-array v0, v6, [B

    .line 109
    .line 110
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 111
    .line 112
    const v0, 0x186a0

    .line 113
    .line 114
    .line 115
    mul-int/2addr p1, v0

    .line 116
    new-array p1, p1, [B

    .line 117
    .line 118
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 119
    .line 120
    return-void
.end method
