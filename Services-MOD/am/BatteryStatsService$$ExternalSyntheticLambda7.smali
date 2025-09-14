.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJI)V
    .locals 0

    .line 1
    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$1:Landroid/os/WorkSource;

    .line 7
    iput-boolean p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$2:Z

    .line 9
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$3:J

    .line 11
    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$4:J

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 10
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$1:Landroid/os/WorkSource;

    .line 12
    iget-boolean v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$2:Z

    .line 14
    iget-wide v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$3:J

    .line 16
    iget-wide v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$4:J

    .line 18
    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 20
    monitor-enter v9

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
    const/16 v16, 0x0

    .line 32
    move/from16 v10, v16

    .line 34
    :goto_0
    if-ge v10, v1, :cond_0

    .line 36
    invoke-virtual {v2, v10}, Landroid/os/WorkSource;->getUid(I)I

    .line 39
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    const/4 v4, 0x0

    .line 41
    move-object v3, v0

    .line 42
    move v6, v11

    .line 43
    move-wide v7, v12

    .line 44
    move-object/from16 v17, v9

    .line 46
    move/from16 v18, v10

    .line 48
    move-wide v9, v14

    .line 49
    :try_start_1
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStoppedLocked(Landroid/os/WorkSource$WorkChain;IZJJ)V

    .line 52
    add-int/lit8 v10, v18, 0x1

    .line 54
    move-object/from16 v9, v17

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object/from16 v17, v9

    .line 59
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 65
    move/from16 v2, v16

    .line 67
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 70
    move-result v3

    .line 71
    if-ge v2, v3, :cond_1

    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    move-object v4, v3

    .line 78
    check-cast v4, Landroid/os/WorkSource$WorkChain;

    .line 80
    const/4 v5, -0x1

    .line 81
    move-object v3, v0

    .line 82
    move v6, v11

    .line 83
    move-wide v7, v12

    .line 84
    move-wide v9, v14

    .line 85
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStoppedLocked(Landroid/os/WorkSource$WorkChain;IZJJ)V

    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    monitor-exit v17

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto :goto_2

    .line 95
    :catchall_1
    move-exception v0

    .line 96
    move-object/from16 v17, v9

    .line 98
    :goto_2
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    throw v0

    .line 100
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 102
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$1:Landroid/os/WorkSource;

    .line 104
    iget-boolean v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$2:Z

    .line 106
    iget-wide v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$3:J

    .line 108
    iget-wide v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;->f$4:J

    .line 110
    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 112
    monitor-enter v9

    .line 113
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    .line 121
    move-result v1

    .line 122
    const/16 v16, 0x0

    .line 124
    move/from16 v10, v16

    .line 126
    :goto_3
    if-ge v10, v1, :cond_2

    .line 128
    invoke-virtual {v2, v10}, Landroid/os/WorkSource;->getUid(I)I

    .line 131
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 132
    const/4 v4, 0x0

    .line 133
    move-object v3, v0

    .line 134
    move v6, v11

    .line 135
    move-wide v7, v12

    .line 136
    move-object/from16 v17, v9

    .line 138
    move/from16 v18, v10

    .line 140
    move-wide v9, v14

    .line 141
    :try_start_3
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStartedLocked(Landroid/os/WorkSource$WorkChain;IZJJ)V

    .line 144
    add-int/lit8 v10, v18, 0x1

    .line 146
    move-object/from16 v9, v17

    .line 148
    goto :goto_3

    .line 149
    :cond_2
    move-object/from16 v17, v9

    .line 151
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 154
    move-result-object v1

    .line 155
    if-eqz v1, :cond_3

    .line 157
    move/from16 v2, v16

    .line 159
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 162
    move-result v3

    .line 163
    if-ge v2, v3, :cond_3

    .line 165
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v3

    .line 169
    move-object v4, v3

    .line 170
    check-cast v4, Landroid/os/WorkSource$WorkChain;

    .line 172
    const/4 v5, -0x1

    .line 173
    move-object v3, v0

    .line 174
    move v6, v11

    .line 175
    move-wide v7, v12

    .line 176
    move-wide v9, v14

    .line 177
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStartedLocked(Landroid/os/WorkSource$WorkChain;IZJJ)V

    .line 180
    add-int/lit8 v2, v2, 0x1

    .line 182
    goto :goto_4

    .line 183
    :cond_3
    monitor-exit v17

    .line 184
    return-void

    .line 185
    :catchall_2
    move-exception v0

    .line 186
    goto :goto_5

    .line 187
    :catchall_3
    move-exception v0

    .line 188
    move-object/from16 v17, v9

    .line 190
    :goto_5
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 191
    throw v0

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
