.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:J

.field public final synthetic f$8:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$1:Landroid/os/WorkSource;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$5:I

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$6:Z

    .line 17
    .line 18
    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$7:J

    .line 19
    .line 20
    iput-wide p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$8:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$1:Landroid/os/WorkSource;

    .line 6
    .line 7
    iget v15, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$2:I

    .line 8
    .line 9
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$3:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    iget v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$5:I

    .line 14
    .line 15
    iget-boolean v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$6:Z

    .line 16
    .line 17
    iget-wide v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$7:J

    .line 18
    .line 19
    iget-wide v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$8:J

    .line 20
    .line 21
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 22
    .line 23
    monitor-enter v6

    .line 24
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    move/from16 v5, v16

    .line 36
    .line 37
    :goto_0
    if-ge v5, v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2, v5}, Landroid/os/WorkSource;->getUid(I)I

    .line 40
    .line 41
    .line 42
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    const/16 v17, 0x0

    .line 44
    .line 45
    move-object v3, v0

    .line 46
    move/from16 v18, v5

    .line 47
    .line 48
    move v5, v15

    .line 49
    move-object/from16 v19, v6

    .line 50
    .line 51
    move-object/from16 v6, v17

    .line 52
    .line 53
    move-wide/from16 v20, v7

    .line 54
    .line 55
    move-object v7, v13

    .line 56
    move-object v8, v14

    .line 57
    move-wide/from16 v22, v9

    .line 58
    .line 59
    move v9, v11

    .line 60
    move v10, v12

    .line 61
    move/from16 v17, v11

    .line 62
    .line 63
    move/from16 v24, v12

    .line 64
    .line 65
    move-wide/from16 v11, v22

    .line 66
    .line 67
    move-object/from16 v25, v13

    .line 68
    .line 69
    move-object/from16 v26, v14

    .line 70
    .line 71
    move-wide/from16 v13, v20

    .line 72
    .line 73
    :try_start_1
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v5, v18, 0x1

    .line 77
    .line 78
    move/from16 v11, v17

    .line 79
    .line 80
    move-object/from16 v6, v19

    .line 81
    .line 82
    move-wide/from16 v7, v20

    .line 83
    .line 84
    move-wide/from16 v9, v22

    .line 85
    .line 86
    move/from16 v12, v24

    .line 87
    .line 88
    move-object/from16 v13, v25

    .line 89
    .line 90
    move-object/from16 v14, v26

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    move-object/from16 v19, v6

    .line 94
    .line 95
    move-wide/from16 v20, v7

    .line 96
    .line 97
    move-wide/from16 v22, v9

    .line 98
    .line 99
    move/from16 v17, v11

    .line 100
    .line 101
    move/from16 v24, v12

    .line 102
    .line 103
    move-object/from16 v25, v13

    .line 104
    .line 105
    move-object/from16 v26, v14

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_1

    .line 112
    .line 113
    move/from16 v2, v16

    .line 114
    .line 115
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-ge v2, v3, :cond_1

    .line 120
    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    move-object v6, v3

    .line 126
    check-cast v6, Landroid/os/WorkSource$WorkChain;

    .line 127
    .line 128
    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    move-object v3, v0

    .line 133
    move v5, v15

    .line 134
    move-object/from16 v7, v25

    .line 135
    .line 136
    move-object/from16 v8, v26

    .line 137
    .line 138
    move/from16 v9, v17

    .line 139
    .line 140
    move/from16 v10, v24

    .line 141
    .line 142
    move-wide/from16 v11, v22

    .line 143
    .line 144
    move-wide/from16 v13, v20

    .line 145
    .line 146
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    monitor-exit v19

    .line 153
    return-void

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    goto :goto_2

    .line 156
    :catchall_1
    move-exception v0

    .line 157
    move-object/from16 v19, v6

    .line 158
    .line 159
    :goto_2
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    throw v0
.end method
