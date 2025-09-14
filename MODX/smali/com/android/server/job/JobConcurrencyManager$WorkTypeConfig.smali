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

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 12
    new-instance v0, Landroid/util/SparseIntArray;

    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 19
    new-instance v0, Landroid/util/SparseIntArray;

    .line 21
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 24
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    .line 26
    new-instance v0, Landroid/util/SparseIntArray;

    .line 28
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 31
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

    .line 33
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mConfigIdentifier:Ljava/lang/String;

    .line 35
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 41
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxTotal:I

    .line 43
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 46
    move-result p1

    .line 47
    add-int/lit8 p1, p1, -0x1

    .line 49
    const/4 v0, 0x0

    .line 50
    move v1, v0

    .line 51
    :goto_0
    const/4 v2, 0x0

    .line 52
    if-ltz p1, :cond_1

    .line 54
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/util/Pair;

    .line 60
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 62
    check-cast v3, Ljava/lang/Float;

    .line 64
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 67
    move-result v3

    .line 68
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroid/util/Pair;

    .line 74
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 76
    check-cast v4, Ljava/lang/Integer;

    .line 78
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 81
    move-result v4

    .line 82
    cmpg-float v2, v3, v2

    .line 84
    if-ltz v2, :cond_0

    .line 86
    const/high16 v2, 0x3f800000    # 1.0f

    .line 88
    cmpg-float v2, v2, v3

    .line 90
    if-lez v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    .line 94
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 97
    move-result v5

    .line 98
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    int-to-float v1, v1

    .line 102
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

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

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    const-string p2, "Invalid default min ratio: wt="

    .line 117
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string p2, " minRatio="

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    throw p0

    .line 139
    :cond_1
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxTotal:I

    .line 141
    const-string v3, " max="

    .line 143
    const-string v4, " min="

    .line 145
    const-string v5, "Invalid default config: t="

    .line 147
    if-ltz p1, :cond_4

    .line 149
    if-gt v1, p1, :cond_4

    .line 151
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 154
    move-result p1

    .line 155
    add-int/lit8 p1, p1, -0x1

    .line 157
    :goto_1
    if-ltz p1, :cond_3

    .line 159
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Landroid/util/Pair;

    .line 165
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 167
    check-cast v1, Ljava/lang/Float;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 172
    move-result v1

    .line 173
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v6

    .line 177
    check-cast v6, Landroid/util/Pair;

    .line 179
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 181
    check-cast v6, Ljava/lang/Integer;

    .line 183
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 186
    move-result v6

    .line 187
    iget-object v7, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    .line 189
    invoke-virtual {v7, v6, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 192
    move-result v7

    .line 193
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 196
    move-result v7

    .line 197
    cmpg-float v7, v1, v7

    .line 199
    if-ltz v7, :cond_2

    .line 201
    cmpg-float v7, v1, v2

    .line 203
    if-lez v7, :cond_2

    .line 205
    iget-object v7, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

    .line 207
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 210
    move-result v1

    .line 211
    invoke-virtual {v7, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    add-int/lit8 p1, p1, -0x1

    .line 216
    goto :goto_1

    .line 217
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    .line 221
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object p1

    .line 243
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    throw p0

    .line 247
    :cond_3
    new-instance p1, Landroid/provider/DeviceConfig$Properties$Builder;

    .line 249
    const-string/jumbo p3, "jobscheduler"

    .line 252
    invoke-direct {p1, p3}, Landroid/provider/DeviceConfig$Properties$Builder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties$Builder;->build()Landroid/provider/DeviceConfig$Properties;

    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 262
    return-void

    .line 263
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object p1

    .line 289
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 292
    throw p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "concurrency_max_total_"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mConfigIdentifier:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v2, "concurrency_min_ratio_top_"

    .line 36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v2, "concurrency_max_ratio_top_"

    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 81
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 84
    move-result v2

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v2, "concurrency_min_ratio_fgs_"

    .line 101
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 113
    const/4 v3, 0x2

    .line 114
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 117
    move-result v2

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v2, "concurrency_max_ratio_fgs_"

    .line 134
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 146
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 149
    move-result v2

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v2, "concurrency_min_ratio_ui_"

    .line 166
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 178
    const/4 v3, 0x4

    .line 179
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 182
    move-result v2

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v2, "concurrency_max_ratio_ui_"

    .line 199
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 209
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 211
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 214
    move-result v2

    .line 215
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 228
    const-string/jumbo v2, "concurrency_min_ratio_ej_"

    .line 231
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 243
    const/16 v3, 0x8

    .line 245
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 248
    move-result v2

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    const-string/jumbo v2, "concurrency_max_ratio_ej_"

    .line 265
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 275
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 277
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 280
    move-result v2

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    const-string/jumbo v2, "concurrency_min_ratio_bg_"

    .line 297
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    move-result-object v0

    .line 307
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 309
    const/16 v3, 0x10

    .line 311
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 314
    move-result v2

    .line 315
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v2, "concurrency_max_ratio_bg_"

    .line 331
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    move-result-object v0

    .line 341
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 343
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 346
    move-result v2

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    .line 360
    const-string/jumbo v2, "concurrency_min_ratio_bguser_"

    .line 363
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object v0

    .line 373
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 375
    const/16 v4, 0x20

    .line 377
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 380
    move-result v3

    .line 381
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    move-result-object v3

    .line 385
    invoke-virtual {p1, v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 394
    const-string/jumbo v3, "concurrency_max_ratio_bguser_"

    .line 397
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    move-result-object v0

    .line 407
    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 409
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 412
    move-result v4

    .line 413
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {p1, v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    .line 426
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    move-result-object v0

    .line 436
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 438
    const/16 v4, 0x40

    .line 440
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 443
    move-result v2

    .line 444
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    move-result-object v2

    .line 448
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    .line 457
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    move-result-object v0

    .line 467
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 469
    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 472
    move-result p0

    .line 473
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    move-result-object p0

    .line 477
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 480
    move-result-object p0

    .line 481
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 484
    return-void
.end method

.method public final getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxAllowedSlotsRatio:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0, p3, p4}, Landroid/util/SparseIntArray;->get(II)I

    .line 6
    move-result p3

    .line 7
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    .line 14
    move-result p1

    .line 15
    const/high16 p2, 0x3f800000    # 1.0f

    .line 17
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 20
    move-result p1

    .line 21
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

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

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMinReservedSlotsRatio:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    .line 6
    move-result p3

    .line 7
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    .line 14
    move-result p1

    .line 15
    const/high16 p2, 0x3f800000    # 1.0f

    .line 17
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 20
    move-result p1

    .line 21
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 23
    int-to-float p0, p0

    .line 24
    mul-float/2addr p0, p1

    .line 25
    float-to-int p0, p0

    .line 26
    invoke-static {p5, p0}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result p0

    .line 30
    invoke-static {p4, p0}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final update(Landroid/provider/DeviceConfig$Properties;I)V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "concurrency_max_total_"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v8, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mConfigIdentifier:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iget v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mDefaultMaxTotal:I

    .line 24
    invoke-virtual {v7, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 27
    move-result v0

    .line 28
    move/from16 v1, p2

    .line 30
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 33
    move-result v0

    .line 34
    const/4 v9, 0x1

    .line 35
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v0

    .line 39
    iput v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 46
    move-result v0

    .line 47
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 49
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v2, "concurrency_max_ratio_top_"

    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v6, v7, v1, v9, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 70
    move-result v1

    .line 71
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 73
    invoke-virtual {v2, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v3, "concurrency_max_ratio_fgs_"

    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 91
    const/4 v10, 0x2

    .line 92
    invoke-virtual {v6, v7, v2, v10, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 95
    move-result v11

    .line 96
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 98
    invoke-virtual {v2, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v3, "concurrency_max_ratio_ui_"

    .line 106
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v2

    .line 116
    const/4 v12, 0x4

    .line 117
    invoke-virtual {v6, v7, v2, v12, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 120
    move-result v13

    .line 121
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 123
    invoke-virtual {v2, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v3, "concurrency_max_ratio_ej_"

    .line 131
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 141
    const/16 v14, 0x8

    .line 143
    invoke-virtual {v6, v7, v2, v14, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 146
    move-result v15

    .line 147
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 149
    invoke-virtual {v2, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo v3, "concurrency_max_ratio_bg_"

    .line 157
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    const/16 v5, 0x10

    .line 169
    invoke-virtual {v6, v7, v2, v5, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 172
    move-result v4

    .line 173
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 175
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    const-string/jumbo v3, "concurrency_max_ratio_bguser_important_"

    .line 183
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v2

    .line 193
    const/16 v3, 0x20

    .line 195
    invoke-virtual {v6, v7, v2, v3, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 198
    move-result v2

    .line 199
    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 201
    invoke-virtual {v5, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    const-string/jumbo v3, "concurrency_max_ratio_bguser_"

    .line 209
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v3

    .line 219
    const/16 v5, 0x40

    .line 221
    invoke-virtual {v6, v7, v3, v5, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;II)I

    .line 224
    move-result v3

    .line 225
    iget-object v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 227
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    iget v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 232
    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 234
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    .line 239
    const-string/jumbo v14, "concurrency_min_ratio_top_"

    .line 242
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object v5

    .line 252
    iget v14, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 254
    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    .line 257
    move-result v14

    .line 258
    const/16 v16, 0x1

    .line 260
    const/16 v17, 0x1

    .line 262
    move/from16 v18, v0

    .line 264
    move-object/from16 v0, p0

    .line 266
    move-object/from16 v1, p1

    .line 268
    move/from16 v19, v2

    .line 270
    move-object v2, v5

    .line 271
    move/from16 v20, v3

    .line 273
    const/16 v5, 0x20

    .line 275
    move/from16 v3, v16

    .line 277
    move/from16 v21, v4

    .line 279
    move/from16 v4, v17

    .line 281
    move v5, v14

    .line 282
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 285
    move-result v0

    .line 286
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 288
    invoke-virtual {v1, v9, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 291
    sub-int v9, v18, v0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    .line 295
    const-string/jumbo v1, "concurrency_min_ratio_fgs_"

    .line 298
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v2

    .line 308
    const/4 v4, 0x0

    .line 309
    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    .line 312
    move-result v5

    .line 313
    const/4 v3, 0x2

    .line 314
    move-object/from16 v0, p0

    .line 316
    move-object/from16 v1, p1

    .line 318
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 321
    move-result v0

    .line 322
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 324
    invoke-virtual {v1, v10, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 327
    sub-int/2addr v9, v0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    .line 330
    const-string/jumbo v1, "concurrency_min_ratio_ui_"

    .line 333
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v2

    .line 343
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    .line 346
    move-result v5

    .line 347
    const/4 v3, 0x4

    .line 348
    move-object/from16 v0, p0

    .line 350
    move-object/from16 v1, p1

    .line 352
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 355
    move-result v0

    .line 356
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 358
    invoke-virtual {v1, v12, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 361
    sub-int/2addr v9, v0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    .line 364
    const-string/jumbo v1, "concurrency_min_ratio_ej_"

    .line 367
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object v2

    .line 377
    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    .line 380
    move-result v5

    .line 381
    const/16 v3, 0x8

    .line 383
    move-object/from16 v0, p0

    .line 385
    move-object/from16 v1, p1

    .line 387
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 390
    move-result v0

    .line 391
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 393
    const/16 v2, 0x8

    .line 395
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 398
    sub-int/2addr v9, v0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v1, "concurrency_min_ratio_bg_"

    .line 404
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object v2

    .line 414
    move/from16 v0, v21

    .line 416
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 419
    move-result v5

    .line 420
    const/16 v3, 0x10

    .line 422
    move-object/from16 v0, p0

    .line 424
    move-object/from16 v1, p1

    .line 426
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 429
    move-result v0

    .line 430
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 432
    const/16 v2, 0x10

    .line 434
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 437
    sub-int/2addr v9, v0

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    .line 440
    const-string/jumbo v1, "concurrency_min_ratio_bguser_important_"

    .line 443
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    move-result-object v2

    .line 453
    move/from16 v0, v19

    .line 455
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 458
    move-result v5

    .line 459
    const/16 v3, 0x20

    .line 461
    move-object/from16 v0, p0

    .line 463
    move-object/from16 v1, p1

    .line 465
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 468
    move-result v0

    .line 469
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 471
    const/16 v2, 0x20

    .line 473
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 476
    sub-int/2addr v9, v0

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    .line 479
    const-string/jumbo v1, "concurrency_min_ratio_bguser_"

    .line 482
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    move-result-object v2

    .line 492
    move/from16 v0, v20

    .line 494
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 497
    move-result v5

    .line 498
    const/16 v3, 0x40

    .line 500
    move-object/from16 v0, p0

    .line 502
    move-object/from16 v1, p1

    .line 504
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMinValue(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;III)I

    .line 507
    move-result v0

    .line 508
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 510
    const/16 v2, 0x40

    .line 512
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 515
    return-void
.end method
