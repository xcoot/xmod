.class public final Lorg/apache/commons/compress/utils/CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bytesRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 5

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lorg/apache/commons/compress/utils/CountingInputStream;->bytesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/utils/CountingInputStream;->bytesRead:J

    :cond_0
    return v0
.end method

.method public final read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/utils/CountingInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 2

    .line 4
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_0

    int-to-long p2, p1

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 5
    iget-wide v0, p0, Lorg/apache/commons/compress/utils/CountingInputStream;->bytesRead:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/apache/commons/compress/utils/CountingInputStream;->bytesRead:J

    :cond_0
    return p1
.end method
