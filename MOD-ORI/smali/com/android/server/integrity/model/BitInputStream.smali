.class public final Lcom/android/server/integrity/model/BitInputStream;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBitsRead:J

.field public mCurrentByte:B

.field public final mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getNext(I)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 4
    .line 5
    if-ge v0, p1, :cond_1

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/integrity/model/BitInputStream;->mBitsRead:J

    .line 8
    .line 9
    const-wide/16 v5, 0x8

    .line 10
    .line 11
    rem-long/2addr v3, v5

    .line 12
    const-wide/16 v7, 0x0

    .line 13
    .line 14
    cmp-long v0, v3, v7

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-byte v0, v0

    .line 25
    iput-byte v0, p0, Lcom/android/server/integrity/model/BitInputStream;->mCurrentByte:B

    .line 26
    .line 27
    :cond_0
    iget-wide v3, p0, Lcom/android/server/integrity/model/BitInputStream;->mBitsRead:J

    .line 28
    .line 29
    rem-long v5, v3, v5

    .line 30
    .line 31
    long-to-int v0, v5

    .line 32
    rsub-int/lit8 v0, v0, 0x7

    .line 33
    .line 34
    shl-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    iget-byte v5, p0, Lcom/android/server/integrity/model/BitInputStream;->mCurrentByte:B

    .line 37
    .line 38
    ushr-int v0, v5, v0

    .line 39
    .line 40
    and-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    or-int/2addr v1, v0

    .line 43
    const-wide/16 v5, 0x1

    .line 44
    .line 45
    add-long/2addr v3, v5

    .line 46
    iput-wide v3, p0, Lcom/android/server/integrity/model/BitInputStream;->mBitsRead:J

    .line 47
    .line 48
    move v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return v1
.end method
