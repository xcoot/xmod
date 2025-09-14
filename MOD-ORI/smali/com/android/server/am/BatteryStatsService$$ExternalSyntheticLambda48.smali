.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJI)V
    .locals 0

    .line 1
    iput p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$1:Landroid/os/WorkSource;

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$2:Z

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$3:I

    .line 10
    .line 11
    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$4:J

    .line 12
    .line 13
    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$5:J

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$1:Landroid/os/WorkSource;

    .line 11
    .line 12
    iget-boolean v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$2:Z

    .line 13
    .line 14
    iget v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$3:I

    .line 15
    .line 16
    iget-wide v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$4:J

    .line 17
    .line 18
    iget-wide v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$5:J

    .line 19
    .line 20
    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 21
    .line 22
    monitor-enter v8

    .line 23
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v16, 0x0

    .line 33
    .line 34
    move/from16 v9, v16

    .line 35
    .line 36
    :goto_0
    if-ge v9, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2, v9}, Landroid/os/WorkSource;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    const/4 v4, 0x0

    .line 43
    move-object v3, v0

    .line 44
    move v6, v12

    .line 45
    move v7, v13

    .line 46
    move-object/from16 v17, v8

    .line 47
    .line 48
    move/from16 v18, v9

    .line 49
    .line 50
    move-wide v8, v14

    .line 51
    move-wide/from16 v19, v10

    .line 52
    .line 53
    :try_start_1
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothDutyScanStartedLocked(Landroid/os/WorkSource$WorkChain;IZIJJ)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v9, v18, 0x1

    .line 57
    .line 58
    move-object/from16 v8, v17

    .line 59
    .line 60
    move-wide/from16 v10, v19

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object/from16 v17, v8

    .line 64
    .line 65
    move-wide/from16 v19, v10

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    move/from16 v2, v16

    .line 74
    .line 75
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-ge v2, v3, :cond_1

    .line 80
    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    move-object v4, v3

    .line 86
    check-cast v4, Landroid/os/WorkSource$WorkChain;

    .line 87
    .line 88
    const/4 v5, -0x1

    .line 89
    move-object v3, v0

    .line 90
    move v6, v12

    .line 91
    move v7, v13

    .line 92
    move-wide v8, v14

    .line 93
    move-wide/from16 v10, v19

    .line 94
    .line 95
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothDutyScanStartedLocked(Landroid/os/WorkSource$WorkChain;IZIJJ)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    monitor-exit v17

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto :goto_2

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    move-object/from16 v17, v8

    .line 107
    .line 108
    :goto_2
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw v0

    .line 110
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 111
    .line 112
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$1:Landroid/os/WorkSource;

    .line 113
    .line 114
    iget-boolean v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$2:Z

    .line 115
    .line 116
    iget v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$3:I

    .line 117
    .line 118
    iget-wide v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$4:J

    .line 119
    .line 120
    iget-wide v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;->f$5:J

    .line 121
    .line 122
    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 123
    .line 124
    monitor-enter v8

    .line 125
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const/16 v16, 0x0

    .line 135
    .line 136
    move/from16 v9, v16

    .line 137
    .line 138
    :goto_3
    if-ge v9, v1, :cond_2

    .line 139
    .line 140
    invoke-virtual {v2, v9}, Landroid/os/WorkSource;->get(I)I

    .line 141
    .line 142
    .line 143
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 144
    const/4 v4, 0x0

    .line 145
    move-object v3, v0

    .line 146
    move v6, v12

    .line 147
    move v7, v13

    .line 148
    move-object/from16 v17, v8

    .line 149
    .line 150
    move/from16 v18, v9

    .line 151
    .line 152
    move-wide v8, v14

    .line 153
    move-wide/from16 v19, v10

    .line 154
    .line 155
    :try_start_3
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothDutyScanStoppedLocked(Landroid/os/WorkSource$WorkChain;IZIJJ)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v9, v18, 0x1

    .line 159
    .line 160
    move-object/from16 v8, v17

    .line 161
    .line 162
    move-wide/from16 v10, v19

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_2
    move-object/from16 v17, v8

    .line 166
    .line 167
    move-wide/from16 v19, v10

    .line 168
    .line 169
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    if-eqz v1, :cond_3

    .line 174
    .line 175
    move/from16 v2, v16

    .line 176
    .line 177
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-ge v2, v3, :cond_3

    .line 182
    .line 183
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    move-object v4, v3

    .line 188
    check-cast v4, Landroid/os/WorkSource$WorkChain;

    .line 189
    .line 190
    const/4 v5, -0x1

    .line 191
    move-object v3, v0

    .line 192
    move v6, v12

    .line 193
    move v7, v13

    .line 194
    move-wide v8, v14

    .line 195
    move-wide/from16 v10, v19

    .line 196
    .line 197
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothDutyScanStoppedLocked(Landroid/os/WorkSource$WorkChain;IZIJJ)V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_3
    monitor-exit v17

    .line 204
    return-void

    .line 205
    :catchall_2
    move-exception v0

    .line 206
    goto :goto_5

    .line 207
    :catchall_3
    move-exception v0

    .line 208
    move-object/from16 v17, v8

    .line 209
    .line 210
    :goto_5
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    throw v0

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
