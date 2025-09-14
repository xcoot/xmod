.class public final Lcom/android/server/power/stats/UsageBasedPowerEstimator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAveragePowerMahPerMs:D


# direct methods
.method public constructor <init>(D)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x414b774000000000L    # 3600000.0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    div-double/2addr p1, v0

    .line 10
    iput-wide p1, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 11
    .line 12
    return-void
.end method

.method public static calculateDuration(Landroid/os/BatteryStats$Timer;J)J
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-wide/16 p0, 0x0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    const-wide/16 v0, 0x3e8

    .line 12
    .line 13
    div-long/2addr p0, v0

    .line 14
    :goto_0
    return-wide p0
.end method
