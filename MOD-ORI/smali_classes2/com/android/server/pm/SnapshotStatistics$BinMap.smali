.class public final Lcom/android/server/pm/SnapshotStatistics$BinMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCount:I

.field public final mMaxBin:I

.field public final mUserKey:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    .line 15
    .line 16
    array-length v0, p1

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    aget p1, p1, v0

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getBin(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz p1, :cond_2

    .line 7
    .line 8
    if-ge p1, p0, :cond_2

    .line 9
    .line 10
    move p0, v1

    .line 11
    :goto_0
    array-length v2, v0

    .line 12
    if-ge p0, v2, :cond_1

    .line 13
    .line 14
    aget v2, v0, p0

    .line 15
    .line 16
    if-gt p1, v2, :cond_0

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v1

    .line 23
    :cond_2
    if-lt p1, p0, :cond_3

    .line 24
    .line 25
    array-length p0, v0

    .line 26
    return p0

    .line 27
    :cond_3
    return v1
.end method
