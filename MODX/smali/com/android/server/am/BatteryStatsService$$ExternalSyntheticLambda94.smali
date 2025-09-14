.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$14:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZI)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p17

    .line 4
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->$r8$classId:I

    .line 6
    move-object v1, p1

    .line 7
    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 9
    move v1, p2

    .line 10
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$1:I

    .line 12
    move v1, p3

    .line 13
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$2:I

    .line 15
    move v1, p4

    .line 16
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$3:I

    .line 18
    move v1, p5

    .line 19
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$4:I

    .line 21
    move v1, p6

    .line 22
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$5:I

    .line 24
    move v1, p7

    .line 25
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$6:I

    .line 27
    move v1, p8

    .line 28
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$7:I

    .line 30
    move v1, p9

    .line 31
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$8:I

    .line 33
    move-wide v1, p10

    .line 34
    iput-wide v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$9:J

    .line 36
    move v1, p12

    .line 37
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$10:I

    .line 39
    move/from16 v1, p13

    .line 41
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$11:I

    .line 43
    move/from16 v1, p14

    .line 45
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$12:I

    .line 47
    move/from16 v1, p15

    .line 49
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$13:I

    .line 51
    move/from16 v1, p16

    .line 53
    iput-boolean v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$14:Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 10
    iget v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$1:I

    .line 12
    iget v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$2:I

    .line 14
    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$3:I

    .line 16
    iget v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$4:I

    .line 18
    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$5:I

    .line 20
    iget v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$6:I

    .line 22
    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$7:I

    .line 24
    iget v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$8:I

    .line 26
    iget-wide v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$9:J

    .line 28
    iget v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$10:I

    .line 30
    iget v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$11:I

    .line 32
    iget v15, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$12:I

    .line 34
    iget v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$13:I

    .line 36
    iget-boolean v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$14:Z

    .line 38
    move/from16 v16, v15

    .line 40
    iget-object v15, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 42
    monitor-enter v15

    .line 43
    :try_start_0
    iget-object v1, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    move-result-wide v18

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 52
    move-result-wide v20

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    move-result-wide v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    move/from16 v17, v2

    .line 59
    move-object v2, v1

    .line 60
    move-object v1, v15

    .line 61
    move/from16 v15, v16

    .line 63
    move/from16 v16, v17

    .line 65
    move/from16 v17, v0

    .line 67
    :try_start_1
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJIIIIIJJJ)V

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_0

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    move-object v1, v15

    .line 76
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw v0

    .line 78
    :pswitch_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 80
    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$1:I

    .line 82
    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$2:I

    .line 84
    iget v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$3:I

    .line 86
    iget v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$4:I

    .line 88
    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$5:I

    .line 90
    iget v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$6:I

    .line 92
    iget v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$7:I

    .line 94
    iget v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$8:I

    .line 96
    iget-wide v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$9:J

    .line 98
    iget v15, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$10:I

    .line 100
    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$11:I

    .line 102
    iget v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$12:I

    .line 104
    iget v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$13:I

    .line 106
    iget-boolean v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$14:Z

    .line 108
    move/from16 v17, v2

    .line 110
    iget-object v2, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 112
    monitor-enter v2

    .line 113
    :try_start_2
    sget v16, Lcom/android/server/power/stats/BatteryStatsImpl;->VERSION:I

    .line 115
    move/from16 v16, v4

    .line 117
    if-nez v7, :cond_0

    .line 119
    const/4 v4, 0x1

    .line 120
    if-eq v5, v4, :cond_0

    .line 122
    :goto_1
    move/from16 v20, v0

    .line 124
    goto :goto_2

    .line 125
    :cond_0
    const/4 v4, 0x0

    .line 126
    goto :goto_1

    .line 127
    :goto_2
    iget-object v0, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 129
    move-object/from16 v18, v3

    .line 131
    iget-boolean v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    .line 133
    if-ne v3, v4, :cond_1

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 138
    move-result-wide v21

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 142
    move-result-wide v23

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    move-result-wide v25

    .line 147
    move/from16 v27, v16

    .line 149
    move-object v4, v0

    .line 150
    move/from16 v16, v1

    .line 152
    move/from16 v18, v27

    .line 154
    move/from16 v19, v20

    .line 156
    move-wide/from16 v20, v21

    .line 158
    move-wide/from16 v22, v23

    .line 160
    move-wide/from16 v24, v25

    .line 162
    invoke-virtual/range {v4 .. v25}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJIIIIIJJJ)V

    .line 165
    monitor-exit v2

    .line 166
    goto :goto_3

    .line 167
    :catchall_2
    move-exception v0

    .line 168
    goto :goto_4

    .line 169
    :cond_1
    move/from16 v27, v16

    .line 171
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 172
    move-object/from16 v0, v18

    .line 174
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 176
    const-string v3, "battery-state"

    .line 178
    const/16 v4, 0x7f

    .line 180
    invoke-virtual {v2, v4, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)Ljava/util/concurrent/Future;

    .line 183
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 185
    new-instance v3, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;

    .line 187
    move/from16 v16, v17

    .line 189
    move-object v2, v3

    .line 190
    const/16 v19, 0x2

    .line 192
    move-object/from16 v28, v3

    .line 194
    move-object v3, v0

    .line 195
    move-object v0, v4

    .line 196
    move v4, v5

    .line 197
    move v5, v6

    .line 198
    move v6, v7

    .line 199
    move v7, v8

    .line 200
    move v8, v9

    .line 201
    move v9, v10

    .line 202
    move v10, v11

    .line 203
    move v11, v12

    .line 204
    move-wide v12, v13

    .line 205
    move v14, v15

    .line 206
    move v15, v1

    .line 207
    move/from16 v17, v27

    .line 209
    move/from16 v18, v20

    .line 211
    invoke-direct/range {v2 .. v19}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZI)V

    .line 214
    move-object/from16 v1, v28

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 219
    :goto_3
    return-void

    .line 220
    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 221
    throw v0

    .line 222
    :pswitch_1
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 224
    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$1:I

    .line 226
    iget v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$2:I

    .line 228
    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$3:I

    .line 230
    iget v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$4:I

    .line 232
    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$5:I

    .line 234
    iget v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$6:I

    .line 236
    iget v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$7:I

    .line 238
    iget v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$8:I

    .line 240
    iget-wide v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$9:J

    .line 242
    iget v15, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$10:I

    .line 244
    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$11:I

    .line 246
    iget v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$12:I

    .line 248
    iget v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$13:I

    .line 250
    iget-boolean v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;->f$14:Z

    .line 252
    move/from16 v19, v0

    .line 254
    iget-object v0, v4, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 256
    move-object/from16 v21, v0

    .line 258
    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;

    .line 260
    move/from16 v18, v3

    .line 262
    move-object v3, v0

    .line 263
    const/16 v20, 0x1

    .line 265
    move/from16 v16, v1

    .line 267
    move/from16 v17, v2

    .line 269
    invoke-direct/range {v3 .. v20}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZI)V

    .line 272
    move-object/from16 v1, v21

    .line 274
    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 277
    return-void

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
