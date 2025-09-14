.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V
    .locals 0

    .line 1
    iput p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$1:Landroid/os/WorkSource;

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$2:J

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$3:J

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda37()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$1:Landroid/os/WorkSource;

    .line 4
    .line 5
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$2:J

    .line 6
    .line 7
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    .line 18
    .line 19
    .line 20
    move-result v12

    .line 21
    const/4 v13, 0x0

    .line 22
    move v14, v13

    .line 23
    :goto_0
    if-ge v14, v12, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v14}, Landroid/os/WorkSource;->getUid(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    move-object v2, v0

    .line 34
    move-wide v4, v8

    .line 35
    move-wide v6, v10

    .line 36
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(IJJ)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v14, v14, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ge v13, v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    move-object v2, v0

    .line 69
    move-wide v4, v8

    .line 70
    move-wide v6, v10

    .line 71
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(IJJ)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v13, v13, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda73()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$1:Landroid/os/WorkSource;

    .line 4
    .line 5
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$2:J

    .line 6
    .line 7
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    .line 18
    .line 19
    .line 20
    move-result v12

    .line 21
    const/4 v13, 0x0

    .line 22
    move v14, v13

    .line 23
    :goto_0
    if-ge v14, v12, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v14}, Landroid/os/WorkSource;->getUid(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    move-object v2, v0

    .line 34
    move-wide v4, v8

    .line 35
    move-wide v6, v10

    .line 36
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStartedLocked(IJJ)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v14, v14, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ge v13, v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    move-object v2, v0

    .line 69
    move-wide v4, v8

    .line 70
    move-wide v6, v10

    .line 71
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStartedLocked(IJJ)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v13, v13, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda80()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$1:Landroid/os/WorkSource;

    .line 4
    .line 5
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$2:J

    .line 6
    .line 7
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    .line 18
    .line 19
    .line 20
    move-result v12

    .line 21
    const/4 v13, 0x0

    .line 22
    move v14, v13

    .line 23
    :goto_0
    if-ge v14, v12, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v14}, Landroid/os/WorkSource;->getUid(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    move-object v2, v0

    .line 34
    move-wide v4, v8

    .line 35
    move-wide v6, v10

    .line 36
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStoppedLocked(IJJ)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v14, v14, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ge v13, v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    move-object v2, v0

    .line 69
    move-wide v4, v8

    .line 70
    move-wide v6, v10

    .line 71
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStoppedLocked(IJJ)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v13, v13, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$1:Landroid/os/WorkSource;

    .line 9
    .line 10
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$2:J

    .line 11
    .line 12
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$3:J

    .line 13
    .line 14
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    .line 16
    monitor-enter v7

    .line 17
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;JJ)V

    .line 20
    .line 21
    .line 22
    monitor-exit v7

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda80()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda73()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda37()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$1:Landroid/os/WorkSource;

    .line 42
    .line 43
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$2:J

    .line 44
    .line 45
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$3:J

    .line 46
    .line 47
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 48
    .line 49
    monitor-enter v7

    .line 50
    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 51
    .line 52
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;JJ)V

    .line 53
    .line 54
    .line 55
    monitor-exit v7

    .line 56
    return-void

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    throw p0

    .line 60
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$1:Landroid/os/WorkSource;

    .line 63
    .line 64
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$2:J

    .line 65
    .line 66
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$3:J

    .line 67
    .line 68
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 69
    .line 70
    monitor-enter v12

    .line 71
    :try_start_2
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v13, 0x0

    .line 81
    move v14, v13

    .line 82
    :goto_0
    if-ge v14, v0, :cond_0

    .line 83
    .line 84
    invoke-virtual {v1, v14}, Landroid/os/WorkSource;->getUid(I)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    move-object v2, p0

    .line 93
    move-wide v4, v8

    .line 94
    move-wide v6, v10

    .line 95
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(IJJ)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v14, v14, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-ge v13, v1, :cond_1

    .line 112
    .line 113
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Landroid/os/WorkSource$WorkChain;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    move-object v2, p0

    .line 128
    move-wide v4, v8

    .line 129
    move-wide v6, v10

    .line 130
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(IJJ)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 v13, v13, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    monitor-exit v12

    .line 137
    return-void

    .line 138
    :catchall_2
    move-exception p0

    .line 139
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 140
    throw p0

    .line 141
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$1:Landroid/os/WorkSource;

    .line 144
    .line 145
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$2:J

    .line 146
    .line 147
    iget-wide v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;->f$3:J

    .line 148
    .line 149
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 150
    .line 151
    monitor-enter p0

    .line 152
    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    const/4 v13, 0x0

    .line 162
    move v14, v13

    .line 163
    :goto_2
    if-ge v14, v12, :cond_2

    .line 164
    .line 165
    invoke-virtual {v1, v14}, Landroid/os/WorkSource;->getUid(I)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    move-object v2, v0

    .line 174
    move-wide v4, v8

    .line 175
    move-wide v6, v10

    .line 176
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiBatchedScanStoppedLocked(J)V

    .line 181
    .line 182
    .line 183
    add-int/lit8 v14, v14, 0x1

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_2
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_3

    .line 191
    .line 192
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-ge v13, v2, :cond_3

    .line 197
    .line 198
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Landroid/os/WorkSource$WorkChain;

    .line 203
    .line 204
    invoke-virtual {v2}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    move-object v2, v0

    .line 213
    move-wide v4, v8

    .line 214
    move-wide v6, v10

    .line 215
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiBatchedScanStoppedLocked(J)V

    .line 220
    .line 221
    .line 222
    add-int/lit8 v13, v13, 0x1

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_3
    monitor-exit p0

    .line 226
    return-void

    .line 227
    :catchall_3
    move-exception v0

    .line 228
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 229
    throw v0

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
