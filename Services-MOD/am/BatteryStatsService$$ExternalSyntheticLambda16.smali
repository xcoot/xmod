.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v0, Lcom/android/server/power/stats/GnssPowerStatsProcessor;

    .line 15
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 17
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 19
    invoke-direct {v0, v1, p0}, Lcom/android/server/power/stats/GnssPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    .line 22
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/android/server/power/stats/CameraPowerStatsProcessor;

    .line 25
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 27
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 29
    const-string/jumbo v2, "camera.avg"

    .line 32
    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 35
    move-result-wide v1

    .line 36
    const/4 v3, 0x3

    .line 37
    invoke-direct {v0, v3, p0, v1, v2}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;-><init>(ILcom/android/server/power/stats/PowerStatsUidResolver;D)V

    .line 40
    return-object v0

    .line 41
    :pswitch_1
    new-instance v0, Lcom/android/server/power/stats/FlashlightPowerStatsProcessor;

    .line 43
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 45
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 47
    const-string/jumbo v2, "camera.flashlight"

    .line 50
    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 53
    move-result-wide v1

    .line 54
    const/4 v3, 0x6

    .line 55
    invoke-direct {v0, v3, p0, v1, v2}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;-><init>(ILcom/android/server/power/stats/PowerStatsUidResolver;D)V

    .line 58
    return-object v0

    .line 59
    :pswitch_2
    new-instance v0, Lcom/android/server/power/stats/VideoPowerStatsProcessor;

    .line 61
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 63
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 65
    const-string/jumbo v2, "video"

    .line 68
    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 71
    move-result-wide v1

    .line 72
    const/4 v3, 0x5

    .line 73
    invoke-direct {v0, v3, p0, v1, v2}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;-><init>(ILcom/android/server/power/stats/PowerStatsUidResolver;D)V

    .line 76
    return-object v0

    .line 77
    :pswitch_3
    new-instance v0, Lcom/android/server/power/stats/AudioPowerStatsProcessor;

    .line 79
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 81
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 83
    const-string v2, "audio"

    .line 85
    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 88
    move-result-wide v1

    .line 89
    const/4 v3, 0x4

    .line 90
    invoke-direct {v0, v3, p0, v1, v2}, Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;-><init>(ILcom/android/server/power/stats/PowerStatsUidResolver;D)V

    .line 93
    return-object v0

    .line 94
    :pswitch_4
    new-instance v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;

    .line 96
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 98
    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 101
    return-object v0

    .line 102
    :pswitch_5
    new-instance v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;

    .line 104
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 106
    invoke-direct {v0, p0}, Lcom/android/server/power/stats/WifiPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 109
    return-object v0

    .line 110
    :pswitch_6
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    new-instance v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;

    .line 117
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 119
    invoke-direct {v0, p0}, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 122
    return-object v0

    .line 123
    :pswitch_7
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    new-instance v0, Lcom/android/server/power/stats/CpuPowerStatsProcessor;

    .line 130
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 132
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 134
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/CpuPowerStatsProcessor;-><init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V

    .line 137
    return-object v0

    .line 138
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 140
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->getStartTime()J

    .line 145
    move-result-wide v0

    .line 146
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    move-result-object p0

    .line 150
    return-object p0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
