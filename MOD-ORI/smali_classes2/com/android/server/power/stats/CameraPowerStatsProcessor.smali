.class public final Lcom/android/server/power/stats/CameraPowerStatsProcessor;
.super Lcom/android/server/power/stats/BinaryStatePowerStatsProcessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 0

    .line 1
    iget p0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2
    .line 3
    const/high16 p1, 0x200000

    .line 4
    .line 5
    and-int/2addr p0, p1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method
