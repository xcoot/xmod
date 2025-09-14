.class public final Lcom/android/server/powerstats/PowerStatsService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mContext:Landroid/content/Context;

.field public mDataStoragePath:Ljava/io/File;

.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field public final mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

.field public mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

.field public mEnergyMeters:[Landroid/hardware/power/stats/Channel;

.field public mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

.field public mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

.field public mPowerMonitorApiEnabled:Z

.field public mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

.field public volatile mPowerMonitors:[Landroid/os/PowerMonitor;

.field public mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

.field public mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

.field public final mService:Lcom/android/server/powerstats/PowerStatsService$1;


# direct methods
.method public static -$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/powerstats/PowerStatsService;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 5
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    .line 6
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$1;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Lcom/android/server/powerstats/PowerStatsService$1;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    .line 8
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object p1, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    .line 12
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mClock:Lcom/android/internal/os/Clock;

    .line 13
    sget-object p1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    .line 14
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    return-void
.end method

.method public static collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget-object v4, p0, v2

    .line 8
    .line 9
    iget-object v4, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/os/PowerMonitor;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, p1, :cond_0

    .line 16
    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-nez v3, :cond_2

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_2
    new-array v0, v3, [I

    .line 27
    .line 28
    array-length v2, p0

    .line 29
    move v3, v1

    .line 30
    :goto_1
    if-ge v1, v2, :cond_4

    .line 31
    .line 32
    aget-object v4, p0, v1

    .line 33
    .line 34
    iget-object v5, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/os/PowerMonitor;->getType()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-ne v5, p1, :cond_3

    .line 41
    .line 42
    add-int/lit8 v5, v3, 0x1

    .line 43
    .line 44
    iget v4, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    .line 45
    .line 46
    aput v4, v0, v3

    .line 47
    .line 48
    move v3, v5

    .line 49
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    return-object v0
.end method

.method public static getEnergyConsumerName(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-byte v1, p0, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->isBlank()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "CONSUMER_"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-byte v1, p0, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_0
    const-string v1, "CAMERA"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_1
    const-string v1, "WIFI"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    const-string v1, "MOBILE_RADIO"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_3
    const-string v1, "GNSS"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_4
    const-string v1, "DISPLAY"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_5
    const-string v1, "CPU"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_6
    const-string v1, "BLUETOOTH"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :goto_0
    iget v1, p0, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    const/4 v3, 0x0

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    move v1, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move v1, v3

    .line 94
    :goto_1
    if-nez v1, :cond_3

    .line 95
    .line 96
    array-length v4, p1

    .line 97
    :goto_2
    if-ge v3, v4, :cond_3

    .line 98
    .line 99
    aget-object v5, p1, v3

    .line 100
    .line 101
    iget-byte v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 102
    .line 103
    iget-byte v7, p0, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 104
    .line 105
    if-ne v6, v7, :cond_2

    .line 106
    .line 107
    iget v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 108
    .line 109
    if-eqz v5, :cond_2

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move v2, v1

    .line 116
    :goto_3
    if-eqz v2, :cond_4

    .line 117
    .line 118
    const/16 p1, 0x2f

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget p0, p0, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ensurePowerMonitors()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    .line 31
    .line 32
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    new-array v0, v1, [Landroid/os/PowerMonitor;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 40
    .line 41
    new-array v0, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    .line 59
    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iput-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    .line 77
    .line 78
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    :try_start_2
    array-length v4, v3

    .line 82
    move v5, v1

    .line 83
    move v6, v5

    .line 84
    :goto_1
    if-ge v5, v4, :cond_7

    .line 85
    .line 86
    aget-object v7, v3, v5

    .line 87
    .line 88
    new-instance v8, Landroid/os/PowerMonitor;

    .line 89
    .line 90
    add-int/lit8 v9, v6, 0x1

    .line 91
    .line 92
    new-instance v10, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v11, "["

    .line 95
    .line 96
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v11, v7, Landroid/hardware/power/stats/Channel;->name:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v11, "]:"

    .line 105
    .line 106
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v11, v7, Landroid/hardware/power/stats/Channel;->subsystem:Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v11, :cond_5

    .line 112
    .line 113
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    const/4 v11, 0x1

    .line 121
    invoke-direct {v8, v6, v11, v10}, Landroid/os/PowerMonitor;-><init>(IILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    new-instance v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 128
    .line 129
    iget v7, v7, Landroid/hardware/power/stats/Channel;->id:I

    .line 130
    .line 131
    invoke-direct {v6, v8, v7}, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;-><init>(Landroid/os/PowerMonitor;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v5, v5, 0x1

    .line 138
    .line 139
    move v6, v9

    .line 140
    goto :goto_1

    .line 141
    :cond_6
    move v6, v1

    .line 142
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-eqz v3, :cond_8

    .line 147
    .line 148
    array-length v4, v3

    .line 149
    move v5, v1

    .line 150
    :goto_2
    if-ge v5, v4, :cond_8

    .line 151
    .line 152
    aget-object v7, v3, v5

    .line 153
    .line 154
    new-instance v8, Landroid/os/PowerMonitor;

    .line 155
    .line 156
    add-int/lit8 v9, v6, 0x1

    .line 157
    .line 158
    invoke-static {v7, v3}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerName(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    invoke-direct {v8, v6, v1, v10}, Landroid/os/PowerMonitor;-><init>(IILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    new-instance v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 169
    .line 170
    iget v7, v7, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 171
    .line 172
    invoke-direct {v6, v8, v7}, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;-><init>(Landroid/os/PowerMonitor;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 179
    .line 180
    move v6, v9

    .line 181
    goto :goto_2

    .line 182
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    new-array v1, v1, [Landroid/os/PowerMonitor;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, [Landroid/os/PowerMonitor;

    .line 193
    .line 194
    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    new-array v0, v0, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 201
    .line 202
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 209
    .line 210
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    return-void

    .line 212
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    :try_start_4
    throw v0

    .line 214
    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    throw v0
.end method

.method public getDeleteMeterDataOnBoot()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    .line 4
    .line 5
    return p0
.end method

.method public getDeleteModelDataOnBoot()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    .line 4
    .line 5
    return p0
.end method

.method public getDeleteResidencyDataOnBoot()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    .line 4
    .line 5
    return p0
.end method

.method public final getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    .line 4
    const-string v1, "PowerStatsService"

    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v0
.end method

.method public getPowerMonitorReadingsImpl([ILandroid/os/ResultReceiver;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/powerstats/PowerStatsService;->ensurePowerMonitors()V

    .line 8
    .line 9
    .line 10
    array-length v3, v1

    .line 11
    new-array v4, v3, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 12
    .line 13
    const-wide v5, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    move v8, v7

    .line 20
    :goto_0
    array-length v9, v1

    .line 21
    const/4 v10, 0x1

    .line 22
    if-ge v8, v9, :cond_3

    .line 23
    .line 24
    aget v9, v1, v8

    .line 25
    .line 26
    if-ltz v9, :cond_2

    .line 27
    .line 28
    iget-object v11, v0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 29
    .line 30
    array-length v12, v11

    .line 31
    if-lt v9, v12, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    aget-object v10, v11, v9

    .line 35
    .line 36
    aput-object v10, v4, v8

    .line 37
    .line 38
    aget-object v9, v11, v9

    .line 39
    .line 40
    if-eqz v9, :cond_1

    .line 41
    .line 42
    iget-wide v9, v9, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    .line 43
    .line 44
    cmp-long v11, v9, v5

    .line 45
    .line 46
    if-gez v11, :cond_1

    .line 47
    .line 48
    move-wide v5, v9

    .line 49
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 53
    invoke-virtual {v2, v10, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    const-wide/16 v8, 0x0

    .line 58
    .line 59
    cmp-long v1, v5, v8

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/server/powerstats/PowerStatsService;->mClock:Lcom/android/internal/os/Clock;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 66
    .line 67
    .line 68
    move-result-wide v8

    .line 69
    sub-long/2addr v8, v5

    .line 70
    const-wide/16 v5, 0x7530

    .line 71
    .line 72
    cmp-long v1, v8, v5

    .line 73
    .line 74
    if-lez v1, :cond_f

    .line 75
    .line 76
    :cond_4
    invoke-static {v4, v7}, Lcom/android/server/powerstats/PowerStatsService;->collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_5

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-interface {v5, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_6

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_6
    move v5, v7

    .line 95
    :goto_2
    if-ge v5, v3, :cond_9

    .line 96
    .line 97
    aget-object v6, v4, v5

    .line 98
    .line 99
    iget-object v8, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    .line 100
    .line 101
    invoke-virtual {v8}, Landroid/os/PowerMonitor;->getType()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-nez v8, :cond_8

    .line 106
    .line 107
    array-length v8, v1

    .line 108
    move v9, v7

    .line 109
    :goto_3
    if-ge v9, v8, :cond_8

    .line 110
    .line 111
    aget-object v11, v1, v9

    .line 112
    .line 113
    iget v12, v11, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 114
    .line 115
    iget v13, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    .line 116
    .line 117
    if-ne v12, v13, :cond_7

    .line 118
    .line 119
    iget-wide v8, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 120
    .line 121
    iput-wide v8, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    .line 122
    .line 123
    iget-wide v8, v11, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 124
    .line 125
    iput-wide v8, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 126
    .line 127
    iget-wide v8, v11, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    .line 128
    .line 129
    iput-wide v8, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_9
    :goto_5
    invoke-static {v4, v10}, Lcom/android/server/powerstats/PowerStatsService;->collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-nez v1, :cond_a

    .line 143
    .line 144
    goto :goto_9

    .line 145
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-interface {v5, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-nez v1, :cond_b

    .line 154
    .line 155
    goto :goto_9

    .line 156
    :cond_b
    move v5, v7

    .line 157
    :goto_6
    if-ge v5, v3, :cond_e

    .line 158
    .line 159
    aget-object v6, v4, v5

    .line 160
    .line 161
    iget-object v8, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    .line 162
    .line 163
    invoke-virtual {v8}, Landroid/os/PowerMonitor;->getType()I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-ne v8, v10, :cond_d

    .line 168
    .line 169
    array-length v8, v1

    .line 170
    move v9, v7

    .line 171
    :goto_7
    if-ge v9, v8, :cond_d

    .line 172
    .line 173
    aget-object v11, v1, v9

    .line 174
    .line 175
    iget v12, v11, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    .line 176
    .line 177
    iget v13, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    .line 178
    .line 179
    if-ne v12, v13, :cond_c

    .line 180
    .line 181
    iget-wide v8, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 182
    .line 183
    iput-wide v8, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    .line 184
    .line 185
    iget-wide v8, v11, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    .line 186
    .line 187
    iput-wide v8, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 188
    .line 189
    iget-wide v8, v11, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    .line 190
    .line 191
    iput-wide v8, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_c
    add-int/lit8 v9, v9, 0x1

    .line 195
    .line 196
    goto :goto_7

    .line 197
    :cond_d
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_e
    :goto_9
    iget-object v1, v0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    .line 201
    .line 202
    iget-object v1, v1, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mSamples:[D

    .line 203
    .line 204
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 205
    .line 206
    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    .line 207
    .line 208
    .line 209
    :cond_f
    new-array v1, v3, [J

    .line 210
    .line 211
    new-array v5, v3, [J

    .line 212
    .line 213
    move v6, v7

    .line 214
    :goto_a
    if-ge v6, v3, :cond_12

    .line 215
    .line 216
    aget-object v8, v4, v6

    .line 217
    .line 218
    iget-wide v9, v8, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 219
    .line 220
    const-wide/16 v11, -0x1

    .line 221
    .line 222
    cmp-long v13, v9, v11

    .line 223
    .line 224
    if-eqz v13, :cond_11

    .line 225
    .line 226
    iget-wide v13, v8, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    .line 227
    .line 228
    cmp-long v11, v13, v11

    .line 229
    .line 230
    if-eqz v11, :cond_11

    .line 231
    .line 232
    iget-object v11, v0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    .line 233
    .line 234
    const-wide/32 v15, 0x989680

    .line 235
    .line 236
    .line 237
    sub-long/2addr v9, v15

    .line 238
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 239
    .line 240
    .line 241
    move-result-wide v9

    .line 242
    iget-wide v12, v8, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 243
    .line 244
    rem-int/lit8 v14, p3, 0x11

    .line 245
    .line 246
    iget-object v15, v11, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mSamples:[D

    .line 247
    .line 248
    aget-wide v16, v15, v14

    .line 249
    .line 250
    const-wide/16 v18, 0x0

    .line 251
    .line 252
    cmpg-double v18, v16, v18

    .line 253
    .line 254
    if-gez v18, :cond_10

    .line 255
    .line 256
    :try_start_0
    iget-object v11, v11, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mDistribution:Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    .line 257
    .line 258
    invoke-virtual {v11}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->sample()D

    .line 259
    .line 260
    .line 261
    move-result-wide v16
    :try_end_0
    .catch Lorg/apache/commons/math/MathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    aput-wide v16, v15, v14

    .line 263
    .line 264
    goto :goto_b

    .line 265
    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 267
    .line 268
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    throw v1

    .line 272
    :cond_10
    :goto_b
    sub-long/2addr v12, v9

    .line 273
    long-to-double v11, v12

    .line 274
    mul-double v11, v11, v16

    .line 275
    .line 276
    double-to-long v11, v11

    .line 277
    add-long/2addr v9, v11

    .line 278
    aput-wide v9, v1, v6

    .line 279
    .line 280
    goto :goto_c

    .line 281
    :cond_11
    aput-wide v9, v1, v6

    .line 282
    .line 283
    :goto_c
    iget-wide v8, v8, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    .line 284
    .line 285
    aput-wide v8, v5, v6

    .line 286
    .line 287
    add-int/lit8 v6, v6, 0x1

    .line 288
    .line 289
    goto :goto_a

    .line 290
    :cond_12
    new-instance v0, Landroid/os/Bundle;

    .line 291
    .line 292
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v3, "energy"

    .line 296
    .line 297
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 298
    .line 299
    .line 300
    const-string/jumbo v1, "timestamps"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v7, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 307
    .line 308
    .line 309
    return-void
.end method

.method public final getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->mInstance:Landroid/hardware/power/stats/IPowerStats;

    .line 20
    .line 21
    sput-object v2, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    sput-object v2, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sput-object v1, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->isInitialized()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;-><init>()V

    .line 44
    .line 45
    .line 46
    :goto_1
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_3

    .line 51
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$Injector;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-object v0

    .line 55
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw v0
.end method

.method public getSupportedPowerMonitorsImpl(Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->ensurePowerMonitors()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "monitors"

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {p1, p0, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 2
    .line 3
    const/16 v1, 0x1f4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne p1, v1, :cond_8

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v3, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mChannels:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v3, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v3, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mEntityNames:Ljava/util/Map;

    .line 33
    .line 34
    new-instance v3, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v3, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mStateNames:Ljava/util/Map;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const-string v4, "StatsPullAtomCallbackImpl"

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    const-string p1, "Failed to start PowerStatsService statsd pullers"

    .line 49
    .line 50
    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_0
    const-class v5, Landroid/app/StatsManager;

    .line 56
    .line 57
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/app/StatsManager;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    array-length v5, v1

    .line 76
    if-nez v5, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v5, v2

    .line 80
    :goto_0
    array-length v6, v1

    .line 81
    if-ge v5, v6, :cond_2

    .line 82
    .line 83
    aget-object v6, v1, v5

    .line 84
    .line 85
    iget-object v7, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mChannels:Ljava/util/Map;

    .line 86
    .line 87
    iget v8, v6, Landroid/hardware/power/stats/Channel;->id:I

    .line 88
    .line 89
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    check-cast v7, Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const/16 v1, 0x2736

    .line 102
    .line 103
    sget-object v5, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 104
    .line 105
    invoke-virtual {p1, v1, v3, v5, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    :goto_1
    const-string v1, "Failed to init OnDevicePowerMeasurement puller"

    .line 110
    .line 111
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :goto_2
    iget-object v1, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    array-length v5, v1

    .line 129
    if-nez v5, :cond_4

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_4
    move v4, v2

    .line 133
    :goto_3
    array-length v5, v1

    .line 134
    if-ge v4, v5, :cond_6

    .line 135
    .line 136
    aget-object v5, v1, v4

    .line 137
    .line 138
    new-instance v6, Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 141
    .line 142
    .line 143
    move v7, v2

    .line 144
    :goto_4
    iget-object v8, v5, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    .line 145
    .line 146
    array-length v9, v8

    .line 147
    if-ge v7, v9, :cond_5

    .line 148
    .line 149
    aget-object v8, v8, v7

    .line 150
    .line 151
    iget v9, v8, Landroid/hardware/power/stats/State;->id:I

    .line 152
    .line 153
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    iget-object v8, v8, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    add-int/lit8 v7, v7, 0x1

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    iget-object v7, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mEntityNames:Ljava/util/Map;

    .line 166
    .line 167
    iget v8, v5, Landroid/hardware/power/stats/PowerEntity;->id:I

    .line 168
    .line 169
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    iget-object v9, v5, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    .line 174
    .line 175
    check-cast v7, Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    iget-object v7, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mStateNames:Ljava/util/Map;

    .line 181
    .line 182
    iget v5, v5, Landroid/hardware/power/stats/PowerEntity;->id:I

    .line 183
    .line 184
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v7, Ljava/util/HashMap;

    .line 189
    .line 190
    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_6
    const/16 v1, 0x2715

    .line 197
    .line 198
    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 199
    .line 200
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 201
    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_7
    :goto_5
    const-string p1, "Failed to init SubsystemSleepState puller"

    .line 205
    .line 206
    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :goto_6
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    .line 210
    .line 211
    iget-object v0, p1, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 214
    .line 215
    iget-object v1, p1, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 216
    .line 217
    const-string v2, "battery_stats"

    .line 218
    .line 219
    invoke-interface {v0, v2, v1, p1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 223
    .line 224
    const-string/jumbo v0, "power_monitor_api_enabled"

    .line 225
    .line 226
    .line 227
    const/4 v1, 0x1

    .line 228
    invoke-interface {p1, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    .line 233
    .line 234
    if-eq p1, v0, :cond_a

    .line 235
    .line 236
    iput-boolean p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    .line 237
    .line 238
    iput-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 239
    .line 240
    iput-object v3, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_8
    const/16 v1, 0x3e8

    .line 244
    .line 245
    if-ne p1, v1, :cond_a

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-eqz p1, :cond_9

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    new-instance p1, Ljava/io/File;

    .line 261
    .line 262
    invoke-static {v2}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const-string/jumbo v1, "powerstats"

    .line 267
    .line 268
    .line 269
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    new-instance v2, Lcom/android/server/powerstats/PowerStatsLogger;

    .line 285
    .line 286
    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/powerstats/PowerStatsLogger;-><init>(Landroid/os/Looper;Ljava/io/File;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V

    .line 287
    .line 288
    .line 289
    iput-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 290
    .line 291
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    .line 292
    .line 293
    new-instance v0, Lcom/android/server/powerstats/BatteryTrigger;

    .line 294
    .line 295
    invoke-direct {v0, p1, v2}, Lcom/android/server/powerstats/BatteryTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    .line 296
    .line 297
    .line 298
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    .line 299
    .line 300
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 301
    .line 302
    new-instance v0, Lcom/android/server/powerstats/TimerTrigger;

    .line 303
    .line 304
    invoke-direct {v0, p1, p0}, Lcom/android/server/powerstats/TimerTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    .line 305
    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_9
    const-string p0, "PowerStatsService"

    .line 309
    .line 310
    const-string p1, "Failed to start PowerStatsService loggers"

    .line 311
    .line 312
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    :cond_a
    :goto_7
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$LocalService;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 17
    .line 18
    const-class v1, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Lcom/android/server/powerstats/PowerStatsService$1;

    .line 24
    .line 25
    const-string/jumbo v1, "powerstats"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
