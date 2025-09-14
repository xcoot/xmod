.class public final Lcom/android/server/integrity/model/BitOutputStream;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBuffer:[B

.field public mNextBitIndex:I

.field public final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x1000

    .line 6
    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mBuffer:[B

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    .line 13
    iput-object p1, p0, Lcom/android/server/integrity/model/BitOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 15
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    .line 3
    div-int/lit8 v1, v0, 0x8

    .line 5
    rem-int/lit8 v0, v0, 0x8

    .line 7
    if-eqz v0, :cond_0

    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 13
    iget-object v2, p0, Lcom/android/server/integrity/model/BitOutputStream;->mBuffer:[B

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 19
    iput v3, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    .line 21
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 24
    return-void
.end method

.method public final setNext(II)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_2

    and-int p1, p2, v0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    ushr-int/lit8 v0, v0, 0x1

    move p1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setNext(Z)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    div-int/lit8 v0, v0, 0x8

    const/16 v1, 0x1000

    .line 3
    iget-object v2, p0, Lcom/android/server/integrity/model/BitOutputStream;->mBuffer:[B

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    .line 6
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 7
    aget-byte p1, v2, v0

    iget v3, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    rem-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x7

    shl-int v3, v1, v3

    or-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    .line 8
    :cond_1
    iget p1, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/integrity/model/BitOutputStream;->mNextBitIndex:I

    return-void
.end method
