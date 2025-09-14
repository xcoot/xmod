.class public final Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final rxConsumptionMah:D

.field public final txConsumptionMah:D

.field public final txToTotalRatio:D


# direct methods
.method public constructor <init>(DJDJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->rxConsumptionMah:D

    .line 5
    .line 6
    iput-wide p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->txConsumptionMah:D

    .line 7
    .line 8
    add-long/2addr p3, p7

    .line 9
    const-wide/16 p1, 0x0

    .line 10
    .line 11
    cmp-long p1, p3, p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-wide/16 p1, 0x0

    .line 16
    .line 17
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->txToTotalRatio:D

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    long-to-double p1, p7

    .line 21
    long-to-double p3, p3

    .line 22
    div-double/2addr p1, p3

    .line 23
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$RxTxConsumption;->txToTotalRatio:D

    .line 24
    .line 25
    :goto_0
    return-void
.end method
