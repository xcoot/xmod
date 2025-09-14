.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/WorkSource;

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(IJJLandroid/os/WorkSource;Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->$r8$classId:I

    .line 2
    .line 3
    iput-object p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    iput-object p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$3:Landroid/os/WorkSource;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$4:J

    .line 12
    .line 13
    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$5:J

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 9
    .line 10
    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$2:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$3:Landroid/os/WorkSource;

    .line 15
    .line 16
    iget-wide v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$4:J

    .line 17
    .line 18
    iget-wide v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$5:J

    .line 19
    .line 20
    iget-object v15, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 21
    .line 22
    monitor-enter v15

    .line 23
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v12}, Landroid/os/WorkSource;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v16, 0x0

    .line 33
    .line 34
    move/from16 v6, v16

    .line 35
    .line 36
    :goto_0
    if-ge v6, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v12, v6}, Landroid/os/WorkSource;->getUid(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    move-object v2, v0

    .line 47
    move-object v4, v10

    .line 48
    move-object v5, v11

    .line 49
    move/from16 v17, v6

    .line 50
    .line 51
    move-wide v6, v13

    .line 52
    move-wide/from16 v18, v8

    .line 53
    .line 54
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockFinishInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v6, v17, 0x1

    .line 58
    .line 59
    move-wide/from16 v8, v18

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move-wide/from16 v18, v8

    .line 63
    .line 64
    invoke-virtual {v12}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    move/from16 v12, v16

    .line 71
    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-ge v12, v2, :cond_1

    .line 77
    .line 78
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    move-object v2, v0

    .line 89
    move-object v4, v10

    .line 90
    move-object v5, v11

    .line 91
    move-wide v6, v13

    .line 92
    move-wide/from16 v8, v18

    .line 93
    .line 94
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockFinishInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v12, v12, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    monitor-exit v15

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw v0

    .line 105
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 106
    .line 107
    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$2:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$3:Landroid/os/WorkSource;

    .line 112
    .line 113
    iget-wide v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$4:J

    .line 114
    .line 115
    iget-wide v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;->f$5:J

    .line 116
    .line 117
    iget-object v15, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 118
    .line 119
    monitor-enter v15

    .line 120
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v12}, Landroid/os/WorkSource;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const/16 v16, 0x0

    .line 130
    .line 131
    move/from16 v6, v16

    .line 132
    .line 133
    :goto_2
    if-ge v6, v1, :cond_2

    .line 134
    .line 135
    invoke-virtual {v12, v6}, Landroid/os/WorkSource;->getUid(I)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    move-object v2, v0

    .line 144
    move-object v4, v10

    .line 145
    move-object v5, v11

    .line 146
    move/from16 v17, v6

    .line 147
    .line 148
    move-wide v6, v13

    .line 149
    move-wide/from16 v18, v8

    .line 150
    .line 151
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockStartInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v6, v17, 0x1

    .line 155
    .line 156
    move-wide/from16 v8, v18

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_2
    move-wide/from16 v18, v8

    .line 160
    .line 161
    invoke-virtual {v12}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_3

    .line 166
    .line 167
    move/from16 v12, v16

    .line 168
    .line 169
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-ge v12, v2, :cond_3

    .line 174
    .line 175
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 180
    .line 181
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    move-object v2, v0

    .line 186
    move-object v4, v10

    .line 187
    move-object v5, v11

    .line 188
    move-wide v6, v13

    .line 189
    move-wide/from16 v8, v18

    .line 190
    .line 191
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockStartInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 192
    .line 193
    .line 194
    add-int/lit8 v12, v12, 0x1

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_3
    monitor-exit v15

    .line 198
    return-void

    .line 199
    :catchall_1
    move-exception v0

    .line 200
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    throw v0

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
