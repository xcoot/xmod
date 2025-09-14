.class public final Lcom/android/server/integrity/parser/LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLimit:I

.field public mReadBytes:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    if-ltz p2, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mLimit:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string/jumbo p1, "limit "

    .line 15
    .line 16
    .line 17
    const-string v0, " cannot be negative"

    .line 18
    .line 19
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method


# virtual methods
.method public final available()I
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mLimit:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 8
    .line 9
    sub-int/2addr v1, p0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final read()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    iget v1, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mLimit:I

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 3
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/parser/LimitInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 1

    if-gtz p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/LimitInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 6
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    .line 7
    iget p2, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

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
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/LimitInputStream;->available()I

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
    int-to-long p1, p1

    .line 22
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    iget v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 27
    .line 28
    long-to-int v1, p1

    .line 29
    add-int/2addr v0, v1

    .line 30
    iput v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 31
    .line 32
    return-wide p1
.end method
