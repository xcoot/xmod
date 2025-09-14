.class public final synthetic Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

.field public final synthetic f$1:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 6
    .line 7
    const-string v2, "Unexpected null attribution found for "

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    .line 11
    .line 12
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const-wide/32 v4, 0x20000

    .line 17
    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-wide v10, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    const/16 v6, 0x24c

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[IJ[I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "wakeup_attribution"

    .line 33
    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-wide v6, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 41
    .line 42
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " --"

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v4, v5, v2, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit v1

    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 64
    .line 65
    iget-wide v6, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 66
    .line 67
    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/util/SparseArray;

    .line 72
    .line 73
    if-nez v3, :cond_1

    .line 74
    .line 75
    const-string v3, "CpuWakeupStats"

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit v1

    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    move v7, v6

    .line 102
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-ge v7, v8, :cond_c

    .line 107
    .line 108
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    check-cast v9, Landroid/util/SparseIntArray;

    .line 117
    .line 118
    if-eqz v9, :cond_4

    .line 119
    .line 120
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-nez v10, :cond_2

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    new-array v11, v10, [I

    .line 132
    .line 133
    new-array v12, v10, [I

    .line 134
    .line 135
    move v13, v6

    .line 136
    :goto_1
    if-ge v13, v10, :cond_3

    .line 137
    .line 138
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 139
    .line 140
    .line 141
    move-result v14

    .line 142
    aput v14, v11, v13

    .line 143
    .line 144
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    invoke-static {v14}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    aput v14, v12, v13

    .line 153
    .line 154
    add-int/lit8 v13, v13, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    move-object/from16 v18, v12

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_4
    :goto_2
    new-array v11, v6, [I

    .line 161
    .line 162
    move-object/from16 v18, v11

    .line 163
    .line 164
    :goto_3
    iget v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    .line 165
    .line 166
    const/4 v10, 0x1

    .line 167
    const/4 v12, 0x2

    .line 168
    if-eq v9, v10, :cond_6

    .line 169
    .line 170
    if-eq v9, v12, :cond_5

    .line 171
    .line 172
    move v13, v6

    .line 173
    goto :goto_4

    .line 174
    :cond_5
    move v13, v12

    .line 175
    goto :goto_4

    .line 176
    :cond_6
    move v13, v10

    .line 177
    :goto_4
    if-eq v8, v10, :cond_9

    .line 178
    .line 179
    if-eq v8, v12, :cond_8

    .line 180
    .line 181
    const/4 v9, 0x3

    .line 182
    if-eq v8, v9, :cond_7

    .line 183
    .line 184
    const/4 v9, 0x4

    .line 185
    if-eq v8, v9, :cond_7

    .line 186
    .line 187
    const/4 v9, 0x5

    .line 188
    if-eq v8, v9, :cond_7

    .line 189
    .line 190
    move v14, v6

    .line 191
    goto :goto_5

    .line 192
    :cond_7
    move v14, v9

    .line 193
    goto :goto_5

    .line 194
    :cond_8
    move v14, v12

    .line 195
    goto :goto_5

    .line 196
    :cond_9
    move v14, v10

    .line 197
    :goto_5
    iget-wide v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 198
    .line 199
    const/16 v12, 0x24c

    .line 200
    .line 201
    move-object v15, v11

    .line 202
    move-wide/from16 v16, v9

    .line 203
    .line 204
    invoke-static/range {v12 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[IJ[I)V

    .line 205
    .line 206
    .line 207
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-eqz v9, :cond_b

    .line 212
    .line 213
    if-nez v7, :cond_a

    .line 214
    .line 215
    new-instance v9, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-wide v12, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    .line 221
    .line 222
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v10, " "

    .line 226
    .line 227
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    :cond_a
    invoke-static {v8}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v8, ":"

    .line 245
    .line 246
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v8, " "

    .line 257
    .line 258
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_c
    const-string/jumbo v0, "wakeup_attribution"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v4, v5, v0, v2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    .line 278
    .line 279
    monitor-exit v1

    .line 280
    :goto_6
    return-void

    .line 281
    :goto_7
    monitor-exit v1

    .line 282
    throw v0
.end method
