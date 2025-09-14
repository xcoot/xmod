.class public final Lcom/android/server/power/stats/EnergyConsumerSnapshot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAttributionSnapshots:Landroid/util/SparseArray;

.field public final mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

.field public final mEnergyConsumers:Landroid/util/SparseArray;

.field public final mNumCpuClusterOrdinals:I

.field public final mNumDisplayOrdinals:I

.field public final mNumOtherOrdinals:I

.field public final mVoltageSnapshots:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    .line 5
    .line 6
    new-instance v0, Landroid/util/SparseLongArray;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    .line 16
    .line 17
    new-instance v0, Landroid/util/SparseIntArray;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumCpuClusterOrdinals:I

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumDisplayOrdinals:I

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    .line 48
    .line 49
    new-instance v0, Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    .line 55
    .line 56
    return-void
.end method

.method public static calculateNumOrdinals(ILandroid/util/SparseArray;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Landroid/hardware/power/stats/EnergyConsumer;

    .line 14
    .line 15
    iget-byte v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 16
    .line 17
    if-ne v3, p0, :cond_0

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v2
.end method


# virtual methods
.method public final getOtherOrdinalNames()[Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v3, v1, :cond_5

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Landroid/hardware/power/stats/EnergyConsumer;

    .line 23
    .line 24
    iget-byte v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 25
    .line 26
    if-nez v6, :cond_4

    .line 27
    .line 28
    add-int/lit8 v6, v4, 0x1

    .line 29
    .line 30
    iget-object v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    const-string v5, ""

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    array-length v8, v5

    .line 51
    move v9, v2

    .line 52
    :goto_1
    if-ge v9, v8, :cond_3

    .line 53
    .line 54
    aget-char v10, v5, v9

    .line 55
    .line 56
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-eqz v11, :cond_1

    .line 61
    .line 62
    const/16 v10, 0x20

    .line 63
    .line 64
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-static {v10}, Ljava/lang/Character;->isISOControl(C)Z

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-eqz v11, :cond_2

    .line 73
    .line 74
    const/16 v10, 0x5f

    .line 75
    .line 76
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    :goto_3
    aput-object v5, v0, v4

    .line 91
    .line 92
    move v4, v6

    .line 93
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    return-object v0
.end method

.method public final updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    array-length v4, v1

    .line 11
    if-nez v4, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v0, v3

    .line 14
    goto/16 :goto_c

    .line 15
    .line 16
    :cond_1
    const-string v4, "EnergyConsumerSnapshot"

    .line 17
    .line 18
    if-gtz v2, :cond_2

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Unexpected battery voltage ("

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " mV) when taking energy consumer snapshot"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-object v3

    .line 43
    :cond_2
    new-instance v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    const-wide/16 v6, -0x1

    .line 49
    .line 50
    iput-wide v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    .line 51
    .line 52
    iput-object v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 53
    .line 54
    iput-object v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    .line 55
    .line 56
    iput-wide v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    .line 57
    .line 58
    iput-wide v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    .line 59
    .line 60
    iput-wide v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    .line 61
    .line 62
    iput-wide v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    .line 63
    .line 64
    iput-object v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 65
    .line 66
    iput-object v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    .line 67
    .line 68
    array-length v8, v1

    .line 69
    const/4 v10, 0x0

    .line 70
    :goto_0
    if-ge v10, v8, :cond_14

    .line 71
    .line 72
    aget-object v11, v1, v10

    .line 73
    .line 74
    iget v12, v11, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 75
    .line 76
    iget-wide v13, v11, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 77
    .line 78
    iget-object v11, v11, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 79
    .line 80
    iget-object v15, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-virtual {v15, v12, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v15

    .line 86
    check-cast v15, Landroid/hardware/power/stats/EnergyConsumer;

    .line 87
    .line 88
    if-nez v15, :cond_3

    .line 89
    .line 90
    const-string/jumbo v11, "updateAndGetDelta given invalid consumerId "

    .line 91
    .line 92
    .line 93
    invoke-static {v12, v11, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    move v6, v2

    .line 97
    move/from16 v16, v8

    .line 98
    .line 99
    move/from16 v23, v10

    .line 100
    .line 101
    goto/16 :goto_b

    .line 102
    .line 103
    :cond_3
    iget-byte v3, v15, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 104
    .line 105
    iget v9, v15, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 106
    .line 107
    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    .line 108
    .line 109
    move/from16 v16, v8

    .line 110
    .line 111
    move/from16 v17, v9

    .line 112
    .line 113
    invoke-virtual {v1, v12, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide v8

    .line 117
    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    .line 118
    .line 119
    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->get(I)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iget-object v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    .line 124
    .line 125
    invoke-virtual {v6, v12, v13, v14}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 126
    .line 127
    .line 128
    iget-object v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    .line 129
    .line 130
    invoke-virtual {v6, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    .line 132
    .line 133
    add-int v6, v1, v2

    .line 134
    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 136
    .line 137
    div-int/lit8 v6, v6, 0x2

    .line 138
    .line 139
    iget-byte v7, v15, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 140
    .line 141
    const-wide/16 v18, 0x3e8

    .line 142
    .line 143
    const-string v12, ": new energy ("

    .line 144
    .line 145
    move/from16 v20, v3

    .line 146
    .line 147
    if-eqz v7, :cond_4

    .line 148
    .line 149
    move/from16 v24, v1

    .line 150
    .line 151
    move-wide/from16 v27, v8

    .line 152
    .line 153
    move/from16 v23, v10

    .line 154
    .line 155
    :goto_1
    move-wide/from16 v25, v13

    .line 156
    .line 157
    const-wide/16 v0, 0x0

    .line 158
    .line 159
    const/4 v3, 0x0

    .line 160
    goto/16 :goto_6

    .line 161
    .line 162
    :cond_4
    if-nez v11, :cond_5

    .line 163
    .line 164
    const/4 v7, 0x0

    .line 165
    new-array v11, v7, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 166
    .line 167
    :cond_5
    iget-object v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    .line 168
    .line 169
    iget v2, v15, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 170
    .line 171
    const/4 v3, 0x0

    .line 172
    invoke-virtual {v7, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Landroid/util/SparseLongArray;

    .line 177
    .line 178
    if-nez v2, :cond_7

    .line 179
    .line 180
    new-instance v2, Landroid/util/SparseLongArray;

    .line 181
    .line 182
    array-length v3, v11

    .line 183
    invoke-direct {v2, v3}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    .line 187
    .line 188
    iget v7, v15, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 189
    .line 190
    invoke-virtual {v3, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    array-length v3, v11

    .line 194
    const/4 v7, 0x0

    .line 195
    :goto_2
    if-ge v7, v3, :cond_6

    .line 196
    .line 197
    move/from16 v22, v3

    .line 198
    .line 199
    aget-object v3, v11, v7

    .line 200
    .line 201
    move/from16 v23, v10

    .line 202
    .line 203
    iget v10, v3, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    .line 204
    .line 205
    move/from16 v24, v1

    .line 206
    .line 207
    iget-wide v0, v3, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    .line 208
    .line 209
    invoke-virtual {v2, v10, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 210
    .line 211
    .line 212
    add-int/lit8 v7, v7, 0x1

    .line 213
    .line 214
    move-object/from16 v0, p0

    .line 215
    .line 216
    move/from16 v3, v22

    .line 217
    .line 218
    move/from16 v10, v23

    .line 219
    .line 220
    move/from16 v1, v24

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_6
    move/from16 v24, v1

    .line 224
    .line 225
    move/from16 v23, v10

    .line 226
    .line 227
    move-wide/from16 v27, v8

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_7
    move/from16 v24, v1

    .line 231
    .line 232
    move/from16 v23, v10

    .line 233
    .line 234
    new-instance v3, Landroid/util/SparseLongArray;

    .line 235
    .line 236
    invoke-direct {v3}, Landroid/util/SparseLongArray;-><init>()V

    .line 237
    .line 238
    .line 239
    array-length v0, v11

    .line 240
    const/4 v1, 0x0

    .line 241
    :goto_3
    if-ge v1, v0, :cond_c

    .line 242
    .line 243
    aget-object v7, v11, v1

    .line 244
    .line 245
    iget v10, v7, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    .line 246
    .line 247
    move-wide/from16 v25, v13

    .line 248
    .line 249
    iget-wide v13, v7, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    .line 250
    .line 251
    move/from16 v22, v1

    .line 252
    .line 253
    move-wide/from16 v27, v8

    .line 254
    .line 255
    const-wide/16 v7, 0x0

    .line 256
    .line 257
    move v9, v0

    .line 258
    invoke-virtual {v2, v10, v7, v8}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 259
    .line 260
    .line 261
    move-result-wide v0

    .line 262
    invoke-virtual {v2, v10, v13, v14}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 263
    .line 264
    .line 265
    cmp-long v21, v0, v7

    .line 266
    .line 267
    if-gez v21, :cond_8

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_8
    cmp-long v21, v13, v0

    .line 271
    .line 272
    if-nez v21, :cond_9

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_9
    sub-long v29, v13, v0

    .line 276
    .line 277
    cmp-long v31, v29, v7

    .line 278
    .line 279
    if-ltz v31, :cond_b

    .line 280
    .line 281
    if-gtz v6, :cond_a

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_a
    mul-long v29, v29, v18

    .line 285
    .line 286
    div-int/lit8 v0, v6, 0x2

    .line 287
    .line 288
    int-to-long v0, v0

    .line 289
    add-long v29, v29, v0

    .line 290
    .line 291
    int-to-long v0, v6

    .line 292
    div-long v0, v29, v0

    .line 293
    .line 294
    invoke-virtual {v3, v10, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_b
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v8, "EnergyConsumer "

    .line 301
    .line 302
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v8, v15, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v8, ") but old energy ("

    .line 317
    .line 318
    const-string v10, "). Average voltage ("

    .line 319
    .line 320
    invoke-static {v7, v8, v0, v1, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const-string v0, ")Skipping. "

    .line 324
    .line 325
    invoke-static {v7, v6, v0, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    :goto_5
    add-int/lit8 v1, v22, 0x1

    .line 329
    .line 330
    move v0, v9

    .line 331
    move-wide/from16 v13, v25

    .line 332
    .line 333
    move-wide/from16 v8, v27

    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_c
    move-wide/from16 v27, v8

    .line 337
    .line 338
    move-wide/from16 v25, v13

    .line 339
    .line 340
    const-wide/16 v0, 0x0

    .line 341
    .line 342
    :goto_6
    cmp-long v2, v27, v0

    .line 343
    .line 344
    if-gez v2, :cond_d

    .line 345
    .line 346
    :goto_7
    move-object/from16 v0, p0

    .line 347
    .line 348
    :goto_8
    move/from16 v6, p2

    .line 349
    .line 350
    goto/16 :goto_b

    .line 351
    .line 352
    :cond_d
    cmp-long v2, v25, v27

    .line 353
    .line 354
    if-nez v2, :cond_e

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_e
    sub-long v13, v25, v27

    .line 358
    .line 359
    cmp-long v0, v13, v0

    .line 360
    .line 361
    if-ltz v0, :cond_f

    .line 362
    .line 363
    if-gtz v24, :cond_10

    .line 364
    .line 365
    :cond_f
    move-object/from16 v0, p0

    .line 366
    .line 367
    goto/16 :goto_a

    .line 368
    .line 369
    :cond_10
    mul-long v13, v13, v18

    .line 370
    .line 371
    div-int/lit8 v0, v6, 0x2

    .line 372
    .line 373
    int-to-long v0, v0

    .line 374
    add-long/2addr v13, v0

    .line 375
    int-to-long v0, v6

    .line 376
    div-long/2addr v13, v0

    .line 377
    packed-switch v20, :pswitch_data_0

    .line 378
    .line 379
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string v1, "Ignoring consumer "

    .line 383
    .line 384
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v1, v15, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v1, " of unknown type "

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    move/from16 v1, v20

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    goto :goto_7

    .line 410
    :pswitch_0
    iput-wide v13, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    .line 411
    .line 412
    goto :goto_7

    .line 413
    :pswitch_1
    iput-wide v13, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    .line 414
    .line 415
    goto :goto_7

    .line 416
    :pswitch_2
    iput-wide v13, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    .line 417
    .line 418
    goto :goto_7

    .line 419
    :pswitch_3
    iput-wide v13, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    .line 420
    .line 421
    goto :goto_7

    .line 422
    :pswitch_4
    iget-object v0, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    .line 423
    .line 424
    if-nez v0, :cond_11

    .line 425
    .line 426
    move-object/from16 v0, p0

    .line 427
    .line 428
    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumDisplayOrdinals:I

    .line 429
    .line 430
    new-array v1, v1, [J

    .line 431
    .line 432
    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    .line 433
    .line 434
    goto :goto_9

    .line 435
    :cond_11
    move-object/from16 v0, p0

    .line 436
    .line 437
    :goto_9
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    .line 438
    .line 439
    aput-wide v13, v1, v17

    .line 440
    .line 441
    goto :goto_8

    .line 442
    :pswitch_5
    move-object/from16 v0, p0

    .line 443
    .line 444
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 445
    .line 446
    if-nez v1, :cond_12

    .line 447
    .line 448
    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumCpuClusterOrdinals:I

    .line 449
    .line 450
    new-array v1, v1, [J

    .line 451
    .line 452
    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 453
    .line 454
    :cond_12
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 455
    .line 456
    aput-wide v13, v1, v17

    .line 457
    .line 458
    goto :goto_8

    .line 459
    :pswitch_6
    move-object/from16 v0, p0

    .line 460
    .line 461
    iput-wide v13, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    .line 462
    .line 463
    goto :goto_8

    .line 464
    :pswitch_7
    move-object/from16 v0, p0

    .line 465
    .line 466
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 467
    .line 468
    if-nez v1, :cond_13

    .line 469
    .line 470
    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    .line 471
    .line 472
    new-array v2, v1, [J

    .line 473
    .line 474
    iput-object v2, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 475
    .line 476
    new-array v1, v1, [Landroid/util/SparseLongArray;

    .line 477
    .line 478
    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    .line 479
    .line 480
    :cond_13
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 481
    .line 482
    aput-wide v13, v1, v17

    .line 483
    .line 484
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    .line 485
    .line 486
    aput-object v3, v1, v17

    .line 487
    .line 488
    goto/16 :goto_8

    .line 489
    .line 490
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    const-string v2, "Bad data! EnergyConsumer "

    .line 493
    .line 494
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iget-object v2, v15, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 498
    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    move-wide/from16 v2, v25

    .line 506
    .line 507
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    const-string v2, ") < old energy ("

    .line 511
    .line 512
    const-string v3, "), new voltage ("

    .line 513
    .line 514
    move-wide/from16 v6, v27

    .line 515
    .line 516
    invoke-static {v1, v2, v6, v7, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 517
    .line 518
    .line 519
    const-string v2, "), old voltage ("

    .line 520
    .line 521
    const-string v3, "). Skipping. "

    .line 522
    .line 523
    move/from16 v6, p2

    .line 524
    .line 525
    move/from16 v7, v24

    .line 526
    .line 527
    invoke-static {v6, v7, v2, v3, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .line 533
    .line 534
    :goto_b
    add-int/lit8 v10, v23, 0x1

    .line 535
    .line 536
    move-object/from16 v1, p1

    .line 537
    .line 538
    move v2, v6

    .line 539
    move/from16 v8, v16

    .line 540
    .line 541
    const/4 v3, 0x0

    .line 542
    const-wide/16 v6, -0x1

    .line 543
    .line 544
    goto/16 :goto_0

    .line 545
    .line 546
    :cond_14
    return-object v5

    .line 547
    :goto_c
    return-object v0

    .line 548
    nop

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
