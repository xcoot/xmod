.class public final Lcom/android/server/power/stats/PowerStatsStore$DefaultSectionReader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;


# instance fields
.field public final mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore$DefaultSectionReader;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig;

    .line 5
    .line 6
    return-void
.end method
