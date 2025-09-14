.class public final Lorg/tukaani/xz/DeltaInputStream;
.super Ljava/io/InputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final delta:Lorg/tukaani/xz/delta/DeltaDecoder;

.field public exception:Ljava/io/IOException;

.field public in:Ljava/io/InputStream;

.field public final tempBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->tempBuf:[B

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    .line 16
    .line 17
    new-instance p1, Lorg/tukaani/xz/delta/DeltaDecoder;

    .line 18
    .line 19
    invoke-direct {p1, p2}, Lorg/tukaani/xz/delta/DeltaDecoder;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/tukaani/xz/DeltaInputStream;->delta:Lorg/tukaani/xz/delta/DeltaDecoder;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    throw p0

    .line 15
    :cond_1
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    .line 16
    .line 17
    const-string v0, "Stream closed"

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public final read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/DeltaInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/tukaani/xz/DeltaInputStream;->tempBuf:[B

    aget-byte p0, p0, v2

    and-int/lit16 v1, p0, 0xff

    :goto_0
    return v1
.end method

.method public final read([BII)I
    .locals 5

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    .line 3
    iget-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_3

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    return v0

    .line 5
    :cond_1
    iget-object p0, p0, Lorg/tukaani/xz/DeltaInputStream;->delta:Lorg/tukaani/xz/delta/DeltaDecoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_2

    .line 6
    aget-byte v1, p1, p2

    iget v2, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->pos:I

    iget v3, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->distance:I

    add-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->history:[B

    aget-byte v3, v4, v3

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v3, v2, -0x1

    .line 7
    iput v3, p0, Lorg/tukaani/xz/delta/DeltaDecoder;->pos:I

    and-int/lit16 v2, v2, 0xff

    aput-byte v1, v4, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p3

    :catch_0
    move-exception p1

    .line 8
    iput-object p1, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    .line 9
    throw p1

    .line 10
    :cond_3
    throw v1

    .line 11
    :cond_4
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
