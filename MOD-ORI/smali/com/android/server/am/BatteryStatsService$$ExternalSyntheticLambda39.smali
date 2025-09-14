.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;
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

.field public final synthetic f$6:J

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$1:Landroid/os/WorkSource;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$5:I

    .line 15
    .line 16
    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$6:J

    .line 17
    .line 18
    iput-wide p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$7:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$1:Landroid/os/WorkSource;

    .line 6
    .line 7
    iget v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$2:I

    .line 8
    .line 9
    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$3:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    iget v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$5:I

    .line 14
    .line 15
    iget-wide v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$6:J

    .line 16
    .line 17
    iget-wide v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;->f$7:J

    .line 18
    .line 19
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 20
    .line 21
    monitor-enter v7

    .line 22
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v16, 0x0

    .line 32
    .line 33
    move/from16 v6, v16

    .line 34
    .line 35
    :goto_0
    if-ge v6, v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, v6}, Landroid/os/WorkSource;->getUid(I)I

    .line 38
    .line 39
    .line 40
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    const/16 v17, 0x0

    .line 42
    .line 43
    move-object v3, v0

    .line 44
    move v5, v14

    .line 45
    move/from16 v18, v6

    .line 46
    .line 47
    move-object/from16 v6, v17

    .line 48
    .line 49
    move-object/from16 v17, v7

    .line 50
    .line 51
    move-object v7, v15

    .line 52
    move-wide/from16 v19, v8

    .line 53
    .line 54
    move-object v8, v12

    .line 55
    move v9, v13

    .line 56
    move-wide/from16 v21, v10

    .line 57
    .line 58
    move-object/from16 v23, v12

    .line 59
    .line 60
    move/from16 v24, v13

    .line 61
    .line 62
    move-wide/from16 v12, v19

    .line 63
    .line 64
    :try_start_1
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v6, v18, 0x1

    .line 68
    .line 69
    move-object/from16 v7, v17

    .line 70
    .line 71
    move-wide/from16 v8, v19

    .line 72
    .line 73
    move-wide/from16 v10, v21

    .line 74
    .line 75
    move-object/from16 v12, v23

    .line 76
    .line 77
    move/from16 v13, v24

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move-object/from16 v17, v7

    .line 81
    .line 82
    move-wide/from16 v19, v8

    .line 83
    .line 84
    move-wide/from16 v21, v10

    .line 85
    .line 86
    move-object/from16 v23, v12

    .line 87
    .line 88
    move/from16 v24, v13

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    move/from16 v2, v16

    .line 97
    .line 98
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-ge v2, v3, :cond_1

    .line 103
    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    move-object v6, v3

    .line 109
    check-cast v6, Landroid/os/WorkSource$WorkChain;

    .line 110
    .line 111
    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    move-object v3, v0

    .line 116
    move v5, v14

    .line 117
    move-object v7, v15

    .line 118
    move-object/from16 v8, v23

    .line 119
    .line 120
    move/from16 v9, v24

    .line 121
    .line 122
    move-wide/from16 v10, v21

    .line 123
    .line 124
    move-wide/from16 v12, v19

    .line 125
    .line 126
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    monitor-exit v17

    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto :goto_2

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    move-object/from16 v17, v7

    .line 138
    .line 139
    :goto_2
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw v0
.end method
