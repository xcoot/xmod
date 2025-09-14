.class public final Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;
.super Ljava/io/InputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bytesRemaining:J

.field public final checksum:Ljava/util/zip/Checksum;

.field public final expectedChecksum:J

.field public final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/zip/CRC32;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->in:Ljava/io/InputStream;

    .line 12
    .line 13
    iput-wide p4, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->expectedChecksum:J

    .line 14
    .line 15
    iput-wide p2, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->bytesRemaining:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read()I
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 4
    iget-wide v4, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->bytesRemaining:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->bytesRemaining:J

    .line 5
    :cond_1
    iget-wide v4, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->bytesRemaining:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_3

    iget-wide v1, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->expectedChecksum:J

    iget-object p0, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Checksum verification failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return v0
.end method

.method public final read([B)I
    .locals 2

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 2

    .line 8
    iget-object v0, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_0

    .line 9
    iget-object v0, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 10
    iget-wide p1, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->bytesRemaining:J

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->bytesRemaining:J

    .line 11
    :cond_0
    iget-wide p1, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->bytesRemaining:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    iget-wide p1, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->expectedChecksum:J

    iget-object p0, p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Checksum verification failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return p3
.end method

.method public final skip(J)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    const-wide/16 p0, 0x1

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    const-wide/16 p0, 0x0

    .line 11
    .line 12
    return-wide p0
.end method
