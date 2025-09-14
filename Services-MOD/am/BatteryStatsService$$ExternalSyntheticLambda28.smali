.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$3:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/SpeakerOutEnergyInfo;JJ)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$3:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V
    .locals 1

    .line 3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$3:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;JJI)V
    .locals 0

    .line 4
    iput p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$3:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda85()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 5
    move-object v3, v1

    .line 6
    check-cast v3, Landroid/telephony/SignalStrength;

    .line 8
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$2:J

    .line 10
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$3:J

    .line 12
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 17
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;JJ)V

    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 8
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/lang/String;

    .line 12
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$2:J

    .line 14
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$3:J

    .line 16
    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    monitor-enter v10

    .line 19
    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 21
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 23
    const/16 v7, 0xc

    .line 25
    const/4 v9, 0x0

    .line 26
    move-object v8, v1

    .line 27
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 30
    new-instance v0, Landroid/os/BatteryStats$PackageChange;

    .line 32
    invoke-direct {v0}, Landroid/os/BatteryStats$PackageChange;-><init>()V

    .line 35
    iput-object v1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    .line 37
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    .line 40
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 42
    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyPackageChanges:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v10

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0

    .line 61
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda85()V

    .line 64
    return-void

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 67
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 69
    move-object v3, v1

    .line 70
    check-cast v3, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 72
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$2:J

    .line 74
    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$3:J

    .line 76
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 78
    monitor-enter v1

    .line 79
    :try_start_1
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 81
    const-wide/16 v4, -0x1

    .line 83
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    .line 86
    monitor-exit v1

    .line 87
    return-void

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    throw p0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 93
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 95
    check-cast v1, Landroid/os/PowerSaveState;

    .line 97
    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$2:J

    .line 99
    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$3:J

    .line 101
    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 103
    monitor-enter v8

    .line 104
    :try_start_2
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 106
    iget-boolean v7, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 108
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLocked(JJZ)V

    .line 111
    monitor-exit v8

    .line 112
    return-void

    .line 113
    :catchall_2
    move-exception p0

    .line 114
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 115
    throw p0

    .line 116
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 118
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Object;

    .line 120
    move-object v3, v1

    .line 121
    check-cast v3, Landroid/os/SpeakerOutEnergyInfo;

    .line 123
    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$2:J

    .line 125
    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;->f$3:J

    .line 127
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 129
    monitor-enter p0

    .line 130
    :try_start_3
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 132
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateSpeakerOutEnergyInfoLocked(Landroid/os/SpeakerOutEnergyInfo;JJ)V

    .line 135
    monitor-exit p0

    .line 136
    return-void

    .line 137
    :catchall_3
    move-exception v0

    .line 138
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 139
    throw v0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
