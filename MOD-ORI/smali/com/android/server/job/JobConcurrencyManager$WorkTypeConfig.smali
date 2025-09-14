.class Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final KEY_PREFIX_MAX_RATIO:Ljava/lang/String; = "concurrency_max_ratio_"

.field static final KEY_PREFIX_MAX_TOTAL:Ljava/lang/String; = "concurrency_max_total_"

.field static final KEY_PREFIX_MIN_RATIO:Ljava/lang/String; = "concurrency_min_ratio_"


# instance fields
.field public final mConfigIdentifier:Ljava/lang/String;

.field public final mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

.field public final mDefaultMaxTotal:I

.field public final mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

.field public final mMaxAllowedSlots:Landroid/util/SparseIntArray;

.field public mMaxTotal:I

.field public final mMinReservedSlots:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseIntArray;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 18
    .line 19
    new-instance v0, Landroid/util/SparseIntArray;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    .line 25
    .line 26
    new-instance v0, Landroid/util/SparseIntArray;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mConfigIdentifier:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 40
    .line 41
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxTotal:I

    .line 42
    .line 43
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    add-int/lit8 p1, p1, -0x1

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    move v1, v0

    .line 51
    :goto_0
    const/4 v2, 0x0

    .line 52
    if-ltz p1, :cond_1

    .line 53
    .line 54
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/util/Pair;

    .line 59
    .line 60
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v3, Ljava/lang/Float;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroid/util/Pair;

    .line 73
    .line 74
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v4, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    cmpg-float v2, v3, v2

    .line 83
    .line 84
    if-ltz v2, :cond_0

    .line 85
    .line 86
    const/high16 v2, 0x3f800000    # 1.0f

    .line 87
    .line 88
    cmpg-float v2, v2, v3

    .line 89
    .line 90
    if-lez v2, :cond_0

    .line 91
    .line 92
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    .line 93
    .line 94
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    .line 100
    .line 101
    int-to-float v1, v1

    .line 102
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 103
    .line 104
    int-to-float v2, v2

    .line 105
    mul-float/2addr v2, v3

    .line 106
    add-float/2addr v2, v1

    .line 107
    float-to-int v1, v2

    .line 108
    add-int/lit8 p1, p1, -0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string p2, "Invalid default min ratio: wt="

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p2, " minRatio="

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_1
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxTotal:I

    .line 140
    .line 141
    const-string v3, " max="

    .line 142
    .line 143
    const-string v4, " min="

    .line 144
    .line 145
    const-string v5, "Invalid default config: t="

    .line 146
    .line 147
    if-ltz p1, :cond_4

    .line 148
    .line 149
    if-gt v1, p1, :cond_4

    .line 150
    .line 151
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    add-int/lit8 p1, p1, -0x1

    .line 156
    .line 157
    :goto_1
    if-ltz p1, :cond_3

    .line 158
    .line 159
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Landroid/util/Pair;

    .line 164
    .line 165
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v1, Ljava/lang/Float;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    check-cast v6, Landroid/util/Pair;

    .line 178
    .line 179
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v6, Ljava/lang/Integer;

    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    iget-object v7, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    .line 188
    .line 189
    invoke-virtual {v7, v6, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    cmpg-float v7, v1, v7

    .line 198
    .line 199
    if-ltz v7, :cond_2

    .line 200
    .line 201
    cmpg-float v7, v1, v2

    .line 202
    .line 203
    if-lez v7, :cond_2

    .line 204
    .line 205
    iget-object v7, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

    .line 206
    .line 207
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-virtual {v7, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 212
    .line 213
    .line 214
    add-int/lit8 p1, p1, -0x1

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 218
    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p0

    .line 247
    :cond_3
    new-instance p1, Landroid/provider/DeviceConfig$Properties$Builder;

    .line 248
    .line 249
    const-string/jumbo p3, "jobscheduler"

    .line 250
    .line 251
    .line 252
    invoke-direct {p1, p3}, Landroid/provider/DeviceConfig$Properties$Builder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties$Builder;->build()Landroid/provider/DeviceConfig$Properties;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 264
    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "concurrency_max_total_"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mConfigIdentifier:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v2, "concurrency_min_ratio_top_"

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo v2, "concurrency_max_ratio_top_"

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 94
    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v2, "concurrency_min_ratio_fgs_"

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 112
    .line 113
    const/4 v3, 0x2

    .line 114
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 127
    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string/jumbo v2, "concurrency_max_ratio_fgs_"

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 159
    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string/jumbo v2, "concurrency_min_ratio_ui_"

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 177
    .line 178
    const/4 v3, 0x4

    .line 179
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 192
    .line 193
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string/jumbo v2, "concurrency_max_ratio_ui_"

    .line 197
    .line 198
    .line 199
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 224
    .line 225
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string/jumbo v2, "concurrency_min_ratio_ej_"

    .line 229
    .line 230
    .line 231
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 242
    .line 243
    const/16 v3, 0x8

    .line 244
    .line 245
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 258
    .line 259
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string/jumbo v2, "concurrency_max_ratio_ej_"

    .line 263
    .line 264
    .line 265
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 276
    .line 277
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 290
    .line 291
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string/jumbo v2, "concurrency_min_ratio_bg_"

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 308
    .line 309
    const/16 v3, 0x10

    .line 310
    .line 311
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 324
    .line 325
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string/jumbo v2, "concurrency_max_ratio_bg_"

    .line 329
    .line 330
    .line 331
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 342
    .line 343
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 356
    .line 357
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string/jumbo v2, "concurrency_min_ratio_bguser_"

    .line 361
    .line 362
    .line 363
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 374
    .line 375
    const/16 v4, 0x20

    .line 376
    .line 377
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-virtual {p1, v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 390
    .line 391
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string/jumbo v3, "concurrency_max_ratio_bguser_"

    .line 395
    .line 396
    .line 397
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 408
    .line 409
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {p1, v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 422
    .line 423
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 437
    .line 438
    const/16 v4, 0x40

    .line 439
    .line 440
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 453
    .line 454
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 468
    .line 469
    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 470
    .line 471
    .line 472
    move-result p0

    .line 473
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 478
    .line 479
    .line 480
    move-result-object p0

    .line 481
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 482
    .line 483
    .line 484
    return-void
.end method

.method public final getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0, p3, p4}, Landroid/util/SparseIntArray;->get(II)I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/high16 p2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 22
    .line 23
    int-to-float p0, p0

    .line 24
    mul-float/2addr p0, p1

    .line 25
    float-to-int p0, p0

    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/high16 p2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 22
    .line 23
    int-to-float p0, p0

    .line 24
    mul-float/2addr p0, p1

    .line 25
    float-to-int p0, p0

    .line 26
    invoke-static {p5, p0}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p4, p0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final update(Landroid/provider/DeviceConfig$Properties;I)V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "concurrency_max_total_"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v8, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mConfigIdentifier:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxTotal:I

    .line 23
    .line 24
    invoke-virtual {v7, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    move/from16 v1, p2

    .line 29
    .line 30
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v9, 0x1

    .line 35
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 40
    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 50
    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v2, "concurrency_max_ratio_top_"

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v6, v7, v1, v9, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 72
    .line 73
    invoke-virtual {v2, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v3, "concurrency_max_ratio_fgs_"

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const/4 v10, 0x2

    .line 92
    invoke-virtual {v6, v7, v2, v10, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 97
    .line 98
    invoke-virtual {v2, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    .line 100
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string/jumbo v3, "concurrency_max_ratio_ui_"

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const/4 v12, 0x4

    .line 117
    invoke-virtual {v6, v7, v2, v12, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 122
    .line 123
    invoke-virtual {v2, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string/jumbo v3, "concurrency_max_ratio_ej_"

    .line 129
    .line 130
    .line 131
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const/16 v14, 0x8

    .line 142
    .line 143
    invoke-virtual {v6, v7, v2, v14, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 144
    .line 145
    .line 146
    move-result v15

    .line 147
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 148
    .line 149
    invoke-virtual {v2, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    .line 151
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string/jumbo v3, "concurrency_max_ratio_bg_"

    .line 155
    .line 156
    .line 157
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const/16 v5, 0x10

    .line 168
    .line 169
    invoke-virtual {v6, v7, v2, v5, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 174
    .line 175
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string/jumbo v3, "concurrency_max_ratio_bguser_important_"

    .line 181
    .line 182
    .line 183
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const/16 v3, 0x20

    .line 194
    .line 195
    invoke-virtual {v6, v7, v2, v3, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 200
    .line 201
    invoke-virtual {v5, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    .line 203
    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string/jumbo v3, "concurrency_max_ratio_bguser_"

    .line 207
    .line 208
    .line 209
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    const/16 v5, 0x40

    .line 220
    .line 221
    invoke-virtual {v6, v7, v3, v5, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    iget-object v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 226
    .line 227
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    .line 229
    .line 230
    iget v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 231
    .line 232
    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 233
    .line 234
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 235
    .line 236
    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string/jumbo v14, "concurrency_min_ratio_top_"

    .line 240
    .line 241
    .line 242
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    iget v14, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 253
    .line 254
    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    const/16 v16, 0x1

    .line 259
    .line 260
    const/16 v17, 0x1

    .line 261
    .line 262
    move/from16 v18, v0

    .line 263
    .line 264
    move-object/from16 v0, p0

    .line 265
    .line 266
    move-object/from16 v1, p1

    .line 267
    .line 268
    move/from16 v19, v2

    .line 269
    .line 270
    move-object v2, v5

    .line 271
    move/from16 v20, v3

    .line 272
    .line 273
    const/16 v5, 0x20

    .line 274
    .line 275
    move/from16 v3, v16

    .line 276
    .line 277
    move/from16 v21, v4

    .line 278
    .line 279
    move/from16 v4, v17

    .line 280
    .line 281
    move v5, v14

    .line 282
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 287
    .line 288
    invoke-virtual {v1, v9, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 289
    .line 290
    .line 291
    sub-int v9, v18, v0

    .line 292
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string/jumbo v1, "concurrency_min_ratio_fgs_"

    .line 296
    .line 297
    .line 298
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    const/4 v4, 0x0

    .line 309
    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    const/4 v3, 0x2

    .line 314
    move-object/from16 v0, p0

    .line 315
    .line 316
    move-object/from16 v1, p1

    .line 317
    .line 318
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 323
    .line 324
    invoke-virtual {v1, v10, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    .line 326
    .line 327
    sub-int/2addr v9, v0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string/jumbo v1, "concurrency_min_ratio_ui_"

    .line 331
    .line 332
    .line 333
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    const/4 v3, 0x4

    .line 348
    move-object/from16 v0, p0

    .line 349
    .line 350
    move-object/from16 v1, p1

    .line 351
    .line 352
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 357
    .line 358
    invoke-virtual {v1, v12, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 359
    .line 360
    .line 361
    sub-int/2addr v9, v0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string/jumbo v1, "concurrency_min_ratio_ej_"

    .line 365
    .line 366
    .line 367
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    const/16 v3, 0x8

    .line 382
    .line 383
    move-object/from16 v0, p0

    .line 384
    .line 385
    move-object/from16 v1, p1

    .line 386
    .line 387
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 392
    .line 393
    const/16 v2, 0x8

    .line 394
    .line 395
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 396
    .line 397
    .line 398
    sub-int/2addr v9, v0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    const-string/jumbo v1, "concurrency_min_ratio_bg_"

    .line 402
    .line 403
    .line 404
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    move/from16 v0, v21

    .line 415
    .line 416
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    const/16 v3, 0x10

    .line 421
    .line 422
    move-object/from16 v0, p0

    .line 423
    .line 424
    move-object/from16 v1, p1

    .line 425
    .line 426
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 431
    .line 432
    const/16 v2, 0x10

    .line 433
    .line 434
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 435
    .line 436
    .line 437
    sub-int/2addr v9, v0

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    const-string/jumbo v1, "concurrency_min_ratio_bguser_important_"

    .line 441
    .line 442
    .line 443
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    move/from16 v0, v19

    .line 454
    .line 455
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    const/16 v3, 0x20

    .line 460
    .line 461
    move-object/from16 v0, p0

    .line 462
    .line 463
    move-object/from16 v1, p1

    .line 464
    .line 465
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 470
    .line 471
    const/16 v2, 0x20

    .line 472
    .line 473
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 474
    .line 475
    .line 476
    sub-int/2addr v9, v0

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    const-string/jumbo v1, "concurrency_min_ratio_bguser_"

    .line 480
    .line 481
    .line 482
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    move/from16 v0, v20

    .line 493
    .line 494
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    const/16 v3, 0x40

    .line 499
    .line 500
    move-object/from16 v0, p0

    .line 501
    .line 502
    move-object/from16 v1, p1

    .line 503
    .line 504
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 509
    .line 510
    const/16 v2, 0x40

    .line 511
    .line 512
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 513
    .line 514
    .line 515
    return-void
.end method
