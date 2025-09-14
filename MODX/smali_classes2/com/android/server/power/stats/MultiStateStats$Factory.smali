.class public final Lcom/android/server/power/stats/MultiStateStats$Factory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCompositeToSerialState:[I

.field public final mDimensionCount:I

.field public final mSerialStateCount:I

.field public final mStateBitFieldMasks:[I

.field public final mStateBitFieldShifts:[S

.field public final mStates:[Lcom/android/server/power/stats/MultiStateStats$States;


# direct methods
.method public varargs constructor <init>(I[Lcom/android/server/power/stats/MultiStateStats$States;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mDimensionCount:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 7
    .line 8
    array-length p1, p2

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    move v3, v0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v2, p1, :cond_1

    .line 14
    .line 15
    aget-object v4, p2, v2

    .line 16
    .line 17
    iget-boolean v5, v4, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    iget-object v4, v4, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 22
    .line 23
    array-length v4, v4

    .line 24
    mul-int/2addr v3, v4

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iput v3, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mSerialStateCount:I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 31
    .line 32
    array-length p2, p1

    .line 33
    new-array p2, p2, [I

    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    .line 36
    .line 37
    array-length p1, p1

    .line 38
    new-array p1, p1, [S

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    .line 41
    .line 42
    move p1, v1

    .line 43
    move p2, p1

    .line 44
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 45
    .line 46
    array-length v3, v2

    .line 47
    if-ge p1, v3, :cond_3

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    .line 50
    .line 51
    int-to-short v4, p2

    .line 52
    aput-short v4, v3, p1

    .line 53
    .line 54
    aget-object v2, v2, p1

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 57
    .line 58
    array-length v3, v2

    .line 59
    const/4 v4, 0x2

    .line 60
    if-lt v3, v4, :cond_2

    .line 61
    .line 62
    array-length v2, v2

    .line 63
    sub-int/2addr v2, v0

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    rsub-int/lit8 v2, v2, 0x20

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    .line 71
    .line 72
    shl-int v4, v0, v2

    .line 73
    .line 74
    sub-int/2addr v4, v0

    .line 75
    shl-int/2addr v4, p2

    .line 76
    aput v4, v3, p1

    .line 77
    .line 78
    add-int/2addr p2, v2

    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, "Invalid state: "

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 92
    .line 93
    aget-object p0, p0, p1

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, ". Should have at least two values."

    .line 102
    .line 103
    invoke-static {v0, p0, p1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p2

    .line 111
    :cond_3
    const/16 p1, 0x1f

    .line 112
    .line 113
    if-ge p2, p1, :cond_a

    .line 114
    .line 115
    const/4 p1, -0x1

    .line 116
    move v3, p1

    .line 117
    move v2, v1

    .line 118
    :goto_2
    iget-object v4, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 119
    .line 120
    array-length v5, v4

    .line 121
    if-ge v2, v5, :cond_5

    .line 122
    .line 123
    aget-object v4, v4, v2

    .line 124
    .line 125
    iget-boolean v4, v4, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 126
    .line 127
    if-nez v4, :cond_4

    .line 128
    .line 129
    iget-object v4, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    .line 130
    .line 131
    aget v4, v4, v2

    .line 132
    .line 133
    not-int v4, v4

    .line 134
    and-int/2addr v3, v4

    .line 135
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    shl-int p2, v0, p2

    .line 139
    .line 140
    new-array p2, p2, [I

    .line 141
    .line 142
    iput-object p2, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mCompositeToSerialState:[I

    .line 143
    .line 144
    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    .line 145
    .line 146
    .line 147
    move p2, v1

    .line 148
    move v0, p2

    .line 149
    :goto_3
    iget-object v2, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mCompositeToSerialState:[I

    .line 150
    .line 151
    array-length v2, v2

    .line 152
    if-ge p2, v2, :cond_9

    .line 153
    .line 154
    move v2, v1

    .line 155
    :goto_4
    iget-object v4, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 156
    .line 157
    array-length v5, v4

    .line 158
    if-ge v2, v5, :cond_7

    .line 159
    .line 160
    iget-object v5, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    .line 161
    .line 162
    aget v5, v5, v2

    .line 163
    .line 164
    and-int/2addr v5, p2

    .line 165
    iget-object v6, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    .line 166
    .line 167
    aget-short v6, v6, v2

    .line 168
    .line 169
    ushr-int/2addr v5, v6

    .line 170
    aget-object v4, v4, v2

    .line 171
    .line 172
    iget-object v4, v4, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 173
    .line 174
    array-length v4, v4

    .line 175
    if-lt v5, v4, :cond_6

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_7
    and-int v2, p2, v3

    .line 182
    .line 183
    iget-object v4, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mCompositeToSerialState:[I

    .line 184
    .line 185
    aget v2, v4, v2

    .line 186
    .line 187
    if-eq v2, p1, :cond_8

    .line 188
    .line 189
    aput v2, v4, p2

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_8
    add-int/lit8 v2, v0, 0x1

    .line 193
    .line 194
    aput v0, v4, p2

    .line 195
    .line 196
    move v0, v2

    .line 197
    :goto_5
    add-int/lit8 p2, p2, 0x1

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_9
    return-void

    .line 201
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 202
    .line 203
    const-string p1, "Too many states: "

    .line 204
    .line 205
    const-string v0, " bits are required to represent the composite state, but only 31 are available"

    .line 206
    .line 207
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p0
.end method


# virtual methods
.method public getSerialState([I)I
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 12
    .line 13
    .line 14
    move v0, v2

    .line 15
    :goto_1
    array-length v1, p1

    .line 16
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget v1, p1, v2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    .line 21
    .line 22
    aget v3, v3, v2

    .line 23
    .line 24
    not-int v3, v3

    .line 25
    and-int/2addr v0, v3

    .line 26
    iget-object v3, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    .line 27
    .line 28
    aget-short v3, v3, v2

    .line 29
    .line 30
    shl-int/2addr v1, v3

    .line 31
    or-int/2addr v0, v1

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mCompositeToSerialState:[I

    .line 36
    .line 37
    aget p0, p0, v0

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    if-eq p0, v0, :cond_2

    .line 41
    .line 42
    return p0

    .line 43
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "State values out of bounds: "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public getSerialStateCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mSerialStateCount:I

    .line 2
    .line 3
    return p0
.end method
