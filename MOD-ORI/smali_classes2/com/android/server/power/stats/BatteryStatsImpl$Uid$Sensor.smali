.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;
.super Landroid/os/BatteryStats$Uid$Sensor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandle:I

.field public mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Sensor;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getHandle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public final getSensorTime()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    return-object p0
.end method
