.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJI)V
    .locals 0

    .line 1
    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$1:Landroid/os/WorkSource;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$2:I

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$3:J

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$4:J

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$1:Landroid/os/WorkSource;

    .line 11
    .line 12
    iget v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$2:I

    .line 13
    .line 14
    iget-wide v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$3:J

    .line 15
    .line 16
    iget-wide v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$4:J

    .line 17
    .line 18
    iget-object v14, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 19
    .line 20
    monitor-enter v14

    .line 21
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v15, 0x0

    .line 31
    move v8, v15

    .line 32
    :goto_0
    if-ge v8, v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, v8}, Landroid/os/WorkSource;->getUid(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    move-object v4, v0

    .line 43
    move-wide v6, v10

    .line 44
    move/from16 v16, v8

    .line 45
    .line 46
    move-wide v8, v12

    .line 47
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4, v3, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v8, v16, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-ge v15, v2, :cond_1

    .line 68
    .line 69
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    move-object v4, v0

    .line 84
    move-wide v6, v10

    .line 85
    move-wide v8, v12

    .line 86
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2, v3, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v15, v15, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    monitor-exit v14

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw v0

    .line 101
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 102
    .line 103
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$1:Landroid/os/WorkSource;

    .line 104
    .line 105
    iget v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$2:I

    .line 106
    .line 107
    iget-wide v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$3:J

    .line 108
    .line 109
    iget-wide v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$4:J

    .line 110
    .line 111
    iget-object v14, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 112
    .line 113
    monitor-enter v14

    .line 114
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    const/4 v15, 0x0

    .line 124
    move v8, v15

    .line 125
    :goto_2
    if-ge v8, v1, :cond_4

    .line 126
    .line 127
    invoke-virtual {v2, v8}, Landroid/os/WorkSource;->getUid(I)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    move-object v4, v0

    .line 136
    move-wide v6, v10

    .line 137
    move/from16 v16, v8

    .line 138
    .line 139
    move-wide v8, v12

    .line 140
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 145
    .line 146
    if-nez v5, :cond_2

    .line 147
    .line 148
    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 149
    .line 150
    iget-object v6, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 151
    .line 152
    iget-object v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 153
    .line 154
    invoke-direct {v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 155
    .line 156
    .line 157
    iput-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 158
    .line 159
    :cond_2
    iget-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 160
    .line 161
    invoke-virtual {v5, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 162
    .line 163
    .line 164
    iget-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 165
    .line 166
    if-nez v5, :cond_3

    .line 167
    .line 168
    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 169
    .line 170
    iget-object v6, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 171
    .line 172
    invoke-direct {v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 173
    .line 174
    .line 175
    iput-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 176
    .line 177
    :cond_3
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 178
    .line 179
    invoke-virtual {v4, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v8, v16, 0x1

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_7

    .line 190
    .line 191
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-ge v15, v2, :cond_7

    .line 196
    .line 197
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 202
    .line 203
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    move-object v4, v0

    .line 212
    move-wide v6, v10

    .line 213
    move-wide v8, v12

    .line 214
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    iget-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 219
    .line 220
    if-nez v4, :cond_5

    .line 221
    .line 222
    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 223
    .line 224
    iget-object v5, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 225
    .line 226
    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 227
    .line 228
    invoke-direct {v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 229
    .line 230
    .line 231
    iput-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 232
    .line 233
    :cond_5
    iget-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 234
    .line 235
    invoke-virtual {v4, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 236
    .line 237
    .line 238
    iget-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 239
    .line 240
    if-nez v4, :cond_6

    .line 241
    .line 242
    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 243
    .line 244
    iget-object v5, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 245
    .line 246
    invoke-direct {v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 247
    .line 248
    .line 249
    iput-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 250
    .line 251
    :cond_6
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 252
    .line 253
    invoke-virtual {v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 254
    .line 255
    .line 256
    add-int/lit8 v15, v15, 0x1

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_7
    monitor-exit v14

    .line 260
    return-void

    .line 261
    :catchall_1
    move-exception v0

    .line 262
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    throw v0

    .line 264
    nop

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
