.class public Lcom/android/internal/util/jobs/RingBufferIndices;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final mCapacity:I

.field private mSize:I

.field private mStart:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mCapacity:I

    .line 6
    return-void
.end method


# virtual methods
.method public add()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mSize:I

    .line 3
    iget v1, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mCapacity:I

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 9
    iput v1, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mSize:I

    .line 11
    return v0

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mStart:I

    .line 14
    add-int/lit8 v2, v0, 0x1

    .line 16
    iput v2, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mStart:I

    .line 18
    if-ne v2, v1, :cond_1

    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mStart:I

    .line 23
    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mStart:I

    .line 4
    iput v0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mSize:I

    .line 6
    return-void
.end method

.method public indexOf(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mStart:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    iget p0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mCapacity:I

    .line 6
    if-lt v0, p0, :cond_0

    .line 8
    sub-int/2addr v0, p0

    .line 9
    :cond_0
    return v0
.end method

.method public size()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/internal/util/jobs/RingBufferIndices;->mSize:I

    .line 3
    return p0
.end method
