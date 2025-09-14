.class public final Lcom/android/server/utils/WatchedSparseBooleanMatrix;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# static fields
.field static final STEP:I = 0x40


# instance fields
.field public mInUse:[Z

.field public mKeys:[I

.field public mMap:[I

.field public mOrder:I

.field public mSize:I

.field public mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x40

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 7
    .line 8
    rem-int v1, v0, v0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x80

    .line 13
    .line 14
    iput v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 15
    .line 16
    :cond_0
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 17
    .line 18
    if-lt v1, v0, :cond_1

    .line 19
    .line 20
    rem-int/lit8 v0, v1, 0x40

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 29
    .line 30
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 37
    .line 38
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 39
    .line 40
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 45
    .line 46
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 47
    .line 48
    mul-int/2addr v0, v0

    .line 49
    div-int/lit8 v0, v0, 0x20

    .line 50
    .line 51
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo v2, "mOrder is "

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 72
    .line 73
    const-string v2, " initCap is 64"

    .line 74
    .line 75
    invoke-static {p0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public static binarySearch([III)I
    .locals 3

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    if-gt v0, p1, :cond_2

    .line 5
    .line 6
    add-int v1, v0, p1

    .line 7
    .line 8
    ushr-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    aget v2, p0, v1

    .line 11
    .line 12
    if-ge v2, p2, :cond_0

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-le v2, p2, :cond_1

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v1

    .line 25
    :cond_2
    not-int p0, v0

    .line 26
    return p0
.end method


# virtual methods
.method public final compact()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree(Z)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 17
    .line 18
    if-ge v1, v2, :cond_7

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    aput-boolean v3, v2, v1

    .line 24
    .line 25
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 26
    .line 27
    sub-int/2addr v2, v3

    .line 28
    :goto_0
    if-ltz v2, :cond_5

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 31
    .line 32
    aget-boolean v4, v4, v2

    .line 33
    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    move v4, v0

    .line 37
    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 38
    .line 39
    if-ge v4, v5, :cond_3

    .line 40
    .line 41
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 42
    .line 43
    aget v5, v5, v4

    .line 44
    .line 45
    if-ne v5, v2, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    const/4 v4, -0x1

    .line 61
    :goto_2
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 62
    .line 63
    aget v5, v2, v4

    .line 64
    .line 65
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 66
    .line 67
    aput-boolean v0, v6, v5

    .line 68
    .line 69
    aput v1, v2, v4

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 72
    .line 73
    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 74
    .line 75
    mul-int v6, v5, v4

    .line 76
    .line 77
    div-int/lit8 v6, v6, 0x20

    .line 78
    .line 79
    mul-int v7, v1, v4

    .line 80
    .line 81
    div-int/lit8 v7, v7, 0x20

    .line 82
    .line 83
    div-int/lit8 v4, v4, 0x20

    .line 84
    .line 85
    invoke-static {v2, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    div-int/lit8 v2, v5, 0x20

    .line 89
    .line 90
    rem-int/lit8 v5, v5, 0x20

    .line 91
    .line 92
    shl-int v4, v3, v5

    .line 93
    .line 94
    div-int/lit8 v5, v1, 0x20

    .line 95
    .line 96
    rem-int/lit8 v1, v1, 0x20

    .line 97
    .line 98
    shl-int v1, v3, v1

    .line 99
    .line 100
    move v3, v0

    .line 101
    :goto_3
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 102
    .line 103
    if-ge v3, v6, :cond_1

    .line 104
    .line 105
    iget-object v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 106
    .line 107
    aget v8, v7, v2

    .line 108
    .line 109
    and-int/2addr v8, v4

    .line 110
    if-nez v8, :cond_6

    .line 111
    .line 112
    aget v8, v7, v5

    .line 113
    .line 114
    not-int v9, v1

    .line 115
    and-int/2addr v8, v9

    .line 116
    aput v8, v7, v5

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    aget v8, v7, v5

    .line 120
    .line 121
    or-int/2addr v8, v1

    .line 122
    aput v8, v7, v5

    .line 123
    .line 124
    :goto_4
    div-int/lit8 v6, v6, 0x20

    .line 125
    .line 126
    add-int/2addr v2, v6

    .line 127
    add-int/2addr v5, v6

    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    :goto_5
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 132
    .line 133
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 134
    .line 135
    sub-int v1, v0, v1

    .line 136
    .line 137
    div-int/lit8 v1, v1, 0x40

    .line 138
    .line 139
    if-lez v1, :cond_8

    .line 140
    .line 141
    mul-int/lit8 v1, v1, 0x40

    .line 142
    .line 143
    sub-int/2addr v0, v1

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    .line 145
    .line 146
    .line 147
    :cond_8
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 14
    .line 15
    iget v3, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    move v1, v2

    .line 32
    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 33
    .line 34
    if-ge v1, v3, :cond_6

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 37
    .line 38
    aget v3, v3, v1

    .line 39
    .line 40
    move v4, v2

    .line 41
    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 42
    .line 43
    if-ge v4, v5, :cond_5

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 46
    .line 47
    aget v5, v5, v4

    .line 48
    .line 49
    invoke-virtual {p0, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {p1, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eq v6, v5, :cond_4

    .line 58
    .line 59
    return v2

    .line 60
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v0, v1

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 24
    .line 25
    if-ge v2, v3, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 28
    .line 29
    aget v3, v3, v2

    .line 30
    .line 31
    move v4, v1

    .line 32
    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 33
    .line 34
    if-ge v4, v5, :cond_0

    .line 35
    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 39
    .line 40
    aget v5, v5, v4

    .line 41
    .line 42
    invoke-virtual {p0, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    add-int/2addr v0, v5

    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return v0
.end method

.method public final indexOfKey(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch([III)I

    move-result p0

    return p0
.end method

.method public final indexOfKey(I)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch([III)I

    move-result v0

    if-gez v0, :cond_1

    not-int v0, v0

    .line 3
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v2, 0x40

    .line 4
    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree(Z)I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v3, v4, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 7
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {p1, v3, v0, v2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 8
    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 9
    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    div-int/lit8 p1, p1, 0x20

    .line 10
    div-int/lit8 v0, v2, 0x20

    .line 11
    rem-int/lit8 v3, v2, 0x20

    shl-int v3, v1, v3

    not-int v3, v3

    .line 12
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v5, v2, p1

    add-int/2addr v2, v1

    mul-int/2addr v2, p1

    const/4 v1, 0x0

    invoke-static {v4, v5, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 13
    :goto_0
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_1

    .line 14
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v4, v1, p1

    add-int/2addr v4, v0

    aget v5, v2, v4

    and-int/2addr v5, v3

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public matrixToStringCooked()[Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 8
    .line 9
    if-ge v2, v3, :cond_2

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 12
    .line 13
    aget v4, v4, v2

    .line 14
    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    move v3, v1

    .line 21
    :goto_1
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 22
    .line 23
    if-ge v3, v6, :cond_1

    .line 24
    .line 25
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 26
    .line 27
    aget v6, v6, v3

    .line 28
    .line 29
    invoke-virtual {p0, v4, v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    const-string v6, "1"

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const-string v6, "0"

    .line 39
    .line 40
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    aput-object v3, v0, v2

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v0
.end method

.method public matrixToStringMeta()[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 9
    .line 10
    const-string v4, " "

    .line 11
    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 15
    .line 16
    aget v3, v3, v2

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 22
    .line 23
    add-int/lit8 v3, v3, -0x1

    .line 24
    .line 25
    if-ge v2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    move v3, v1

    .line 43
    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 44
    .line 45
    if-ge v3, v5, :cond_3

    .line 46
    .line 47
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 48
    .line 49
    aget v5, v5, v3

    .line 50
    .line 51
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 55
    .line 56
    add-int/lit8 v5, v5, -0x1

    .line 57
    .line 58
    if-ge v3, v5, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    move v4, v1

    .line 76
    :goto_2
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 77
    .line 78
    if-ge v4, v5, :cond_5

    .line 79
    .line 80
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 81
    .line 82
    aget-boolean v5, v5, v4

    .line 83
    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    const-string v5, "1"

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    const-string v5, "0"

    .line 90
    .line 91
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    filled-new-array {v0, v2, p0}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method

.method public matrixToStringRaw()[Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 8
    .line 9
    if-ge v2, v3, :cond_2

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    move v3, v1

    .line 17
    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 18
    .line 19
    if-ge v3, v5, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    const-string v5, "1"

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const-string v5, "0"

    .line 31
    .line 32
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    aput-object v3, v0, v2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-object v0
.end method

.method public final nextFree(Z)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-boolean v2, v1, v0

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    aput-boolean p1, v1, v0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final put(IIZ)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    if-gez v1, :cond_3

    .line 12
    .line 13
    :cond_0
    if-gez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    if-gez v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)V

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_3
    if-ltz v0, :cond_5

    .line 32
    .line 33
    if-ltz v1, :cond_5

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 42
    .line 43
    aget p2, p1, v0

    .line 44
    .line 45
    aget p1, p1, v1

    .line 46
    .line 47
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 48
    .line 49
    mul-int/2addr p2, v0

    .line 50
    add-int/2addr p2, p1

    .line 51
    div-int/lit8 p1, p2, 0x20

    .line 52
    .line 53
    rem-int/lit8 p2, p2, 0x20

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    shl-int p2, v0, p2

    .line 57
    .line 58
    if-eqz p3, :cond_4

    .line 59
    .line 60
    iget-object p3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 61
    .line 62
    aget v0, p3, p1

    .line 63
    .line 64
    or-int/2addr p2, v0

    .line 65
    aput p2, p3, p1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget-object p3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 69
    .line 70
    aget v0, p3, p1

    .line 71
    .line 72
    not-int p2, p2

    .line 73
    and-int/2addr p2, v0

    .line 74
    aput p2, p3, p1

    .line 75
    .line 76
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    .line 81
    .line 82
    const-string/jumbo p1, "matrix overflow"

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public final removeAt(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 7
    .line 8
    aget v1, v1, p1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-boolean v2, v0, v1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 14
    .line 15
    add-int/lit8 v1, p1, 0x1

    .line 16
    .line 17
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 18
    .line 19
    sub-int/2addr v3, v1

    .line 20
    invoke-static {v0, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 24
    .line 25
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 26
    .line 27
    add-int/lit8 v4, v3, -0x1

    .line 28
    .line 29
    aput v2, v0, v4

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 32
    .line 33
    sub-int/2addr v3, v1

    .line 34
    invoke-static {v0, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 38
    .line 39
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    aput v2, p1, v0

    .line 44
    .line 45
    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 46
    .line 47
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final removeRange(II)V
    .locals 5

    .line 1
    if-lt p2, p1, :cond_3

    .line 2
    .line 3
    sub-int v0, p2, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, p2, -0x1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    .line 14
    .line 15
    .line 16
    move v1, p1

    .line 17
    :goto_0
    const/4 v2, 0x0

    .line 18
    if-ge v1, p2, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 23
    .line 24
    aget v4, v4, v1

    .line 25
    .line 26
    aput-boolean v2, v3, v4

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 32
    .line 33
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 34
    .line 35
    sub-int/2addr v3, p2

    .line 36
    invoke-static {v1, p2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 40
    .line 41
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 42
    .line 43
    sub-int/2addr v3, p2

    .line 44
    invoke-static {v1, p2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 48
    .line 49
    sub-int/2addr p1, v0

    .line 50
    :goto_1
    iget p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 51
    .line 52
    if-ge p1, p2, :cond_2

    .line 53
    .line 54
    iget-object p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 55
    .line 56
    aput v2, p2, p1

    .line 57
    .line 58
    iget-object p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 59
    .line 60
    aput v2, p2, p1

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    sub-int/2addr p2, v0

    .line 66
    iput p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 67
    .line 68
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 73
    .line 74
    const-string/jumbo p1, "toIndex < fromIndex"

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final resizeMatrix(I)V
    .locals 10

    .line 1
    rem-int/lit8 v0, p1, 0x40

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 6
    .line 7
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 26
    .line 27
    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 35
    .line 36
    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    mul-int v5, p1, p1

    .line 40
    .line 41
    div-int/lit8 v5, v5, 0x20

    .line 42
    .line 43
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :goto_0
    if-ge v3, v0, :cond_0

    .line 48
    .line 49
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 50
    .line 51
    mul-int/2addr v6, v3

    .line 52
    div-int/lit8 v6, v6, 0x20

    .line 53
    .line 54
    mul-int v7, p1, v3

    .line 55
    .line 56
    div-int/lit8 v7, v7, 0x20

    .line 57
    .line 58
    iget-object v8, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 59
    .line 60
    div-int/lit8 v9, v0, 0x20

    .line 61
    .line 62
    invoke-static {v8, v6, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iput-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 69
    .line 70
    iput-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 71
    .line 72
    iput-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 73
    .line 74
    iput-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 75
    .line 76
    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string/jumbo v0, "matrix order "

    .line 82
    .line 83
    .line 84
    const-string v1, " is not a multiple of 64"

    .line 85
    .line 86
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 7
    .line 8
    iput v1, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 11
    .line 12
    iput v1, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 15
    .line 16
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, [I

    .line 21
    .line 22
    iput-object v1, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 25
    .line 26
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, [I

    .line 31
    .line 32
    iput-object v1, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 35
    .line 36
    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, [Z

    .line 41
    .line 42
    iput-object v1, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 45
    .line 46
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, [I

    .line 51
    .line 52
    iput-object p0, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 53
    .line 54
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "x"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 21
    .line 22
    const-string/jumbo v1, "}"

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final validateIndex(I)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 2
    .line 3
    if-ge p1, p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final valueAtInternal(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    .line 2
    .line 3
    mul-int/2addr p1, v0

    .line 4
    add-int/2addr p1, p2

    .line 5
    div-int/lit8 p2, p1, 0x20

    .line 6
    .line 7
    rem-int/lit8 p1, p1, 0x20

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    shl-int p1, v0, p1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    .line 13
    .line 14
    aget p0, p0, p2

    .line 15
    .line 16
    and-int/2addr p0, p1

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method
