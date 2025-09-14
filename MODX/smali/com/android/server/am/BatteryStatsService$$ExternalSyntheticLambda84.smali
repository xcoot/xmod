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

    .line 3
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$1:Landroid/os/WorkSource;

    .line 7
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$2:I

    .line 9
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$3:J

    .line 11
    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$4:J

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 10
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$1:Landroid/os/WorkSource;

    .line 12
    iget v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$2:I

    .line 14
    iget-wide v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$3:J

    .line 16
    iget-wide v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$4:J

    .line 18
    iget-object v14, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 20
    monitor-enter v14

    .line 21
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    .line 29
    move-result v1

    .line 30
    const/4 v15, 0x0

    .line 31
    move v8, v15

    .line 32
    :goto_0
    if-ge v8, v1, :cond_0

    .line 34
    invoke-virtual {v2, v8}, Landroid/os/WorkSource;->getUid(I)I

    .line 37
    move-result v4

    .line 38
    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 41
    move-result v5

    .line 42
    move-object v4, v0

    .line 43
    move-wide v6, v10

    .line 44
    move/from16 v16, v8

    .line 46
    move-wide v8, v12

    .line 47
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4, v3, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    .line 54
    add-int/lit8 v8, v16, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 63
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    move-result v2

    .line 67
    if-ge v15, v2, :cond_1

    .line 69
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 75
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

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

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2, v3, v10, v11}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiBatchedScanStartedLocked(IJ)V

    .line 93
    add-int/lit8 v15, v15, 0x1

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

    .line 103
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$1:Landroid/os/WorkSource;

    .line 105
    iget v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$2:I

    .line 107
    iget-wide v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$3:J

    .line 109
    iget-wide v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;->f$4:J

    .line 111
    iget-object v14, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 113
    monitor-enter v14

    .line 114
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    .line 122
    move-result v1

    .line 123
    const/4 v15, 0x0

    .line 124
    move v8, v15

    .line 125
    :goto_2
    if-ge v8, v1, :cond_4

    .line 127
    invoke-virtual {v2, v8}, Landroid/os/WorkSource;->getUid(I)I

    .line 130
    move-result v4

    .line 131
    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 134
    move-result v5

    .line 135
    move-object v4, v0

    .line 136
    move-wide v6, v10

    .line 137
    move/from16 v16, v8

    .line 139
    move-wide v8, v12

    .line 140
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 143
    move-result-object v4

    .line 144
    iget-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 146
    if-nez v5, :cond_2

    .line 148
    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 150
    iget-object v6, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 152
    iget-object v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 154
    invoke-direct {v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 157
    iput-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 159
    :cond_2
    iget-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 161
    invoke-virtual {v5, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 164
    iget-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 166
    if-nez v5, :cond_3

    .line 168
    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 170
    iget-object v6, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 172
    invoke-direct {v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 175
    iput-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 177
    :cond_3
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 179
    invoke-virtual {v4, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 182
    add-int/lit8 v8, v16, 0x1

    .line 184
    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_7

    .line 191
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 194
    move-result v2

    .line 195
    if-ge v15, v2, :cond_7

    .line 197
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 203
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 206
    move-result v2

    .line 207
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

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

    .line 217
    move-result-object v2

    .line 218
    iget-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 220
    if-nez v4, :cond_5

    .line 222
    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 224
    iget-object v5, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 226
    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 228
    invoke-direct {v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 231
    iput-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 233
    :cond_5
    iget-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 235
    invoke-virtual {v4, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 238
    iget-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 240
    if-nez v4, :cond_6

    .line 242
    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 244
    iget-object v5, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 246
    invoke-direct {v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 249
    iput-object v4, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 251
    :cond_6
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 253
    invoke-virtual {v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 256
    add-int/lit8 v15, v15, 0x1

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
