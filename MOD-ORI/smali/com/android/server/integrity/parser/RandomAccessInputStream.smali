.class public final Lcom/android/server/integrity/parser/RandomAccessInputStream;
.super Ljava/io/InputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mPosition:I

.field public final mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;


# direct methods
.method public constructor <init>(Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mLength:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 6
    .line 7
    sub-int/2addr v0, p0

    .line 8
    return v0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final read()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 3
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;

    .line 4
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 2

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 2

    if-gtz p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 9
    iget-object v0, v1, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    .line 11
    iget p2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    return p1
.end method

.method public final skip(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-gtz v2, :cond_1

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_1
    int-to-long v0, v2

    .line 16
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    long-to-int p1, p1

    .line 21
    iget p2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 22
    .line 23
    add-int/2addr p2, p1

    .line 24
    iput p2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 29
    .line 30
    int-to-long v0, p2

    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 32
    .line 33
    .line 34
    int-to-long p0, p1

    .line 35
    return-wide p0
.end method
