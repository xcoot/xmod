.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JLandroid/os/BatteryUsageStats;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$2:J

    iput-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/app/AlarmManager;J)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/os/BatteryUsageStats;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v8, Lcom/android/server/power/stats/PowerStatsSpan;

    .line 20
    .line 21
    invoke-direct {v8, v2, v3}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    iget-object v9, v8, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 33
    .line 34
    iget-object v10, v9, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 35
    .line 36
    new-instance v11, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 37
    .line 38
    move-object v1, v11

    .line 39
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;-><init>(JJJ)V

    .line 40
    .line 41
    .line 42
    check-cast v10, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/android/server/power/stats/BatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, v9, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 53
    .line 54
    check-cast v2, Ljava/util/ArrayList;

    .line 55
    .line 56
    const-string v3, "battery-usage-stats"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    iget-object v2, v9, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 65
    .line 66
    check-cast v2, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v2, v8, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    .line 72
    .line 73
    check-cast v2, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V

    .line 79
    .line 80
    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    const-string v0, "BatteryStatsImpl"

    .line 87
    .line 88
    const-string v1, "Cannot close BatteryUsageStats"

    .line 89
    .line 90
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 97
    .line 98
    move-object v2, v1

    .line 99
    check-cast v2, Landroid/app/AlarmManager;

    .line 100
    .line 101
    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$2:J

    .line 102
    .line 103
    iget-object v9, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mLongPlugInAlarmHandler:Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;

    .line 104
    .line 105
    iget-object v10, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    const-wide/32 v6, 0x36ee80

    .line 109
    .line 110
    .line 111
    const-string v8, "BatteryStatsImpl"

    .line 112
    .line 113
    invoke-virtual/range {v2 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
