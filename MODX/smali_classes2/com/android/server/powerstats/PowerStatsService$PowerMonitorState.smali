.class public final Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public energyUws:J

.field public final id:I

.field public final powerMonitor:Landroid/os/PowerMonitor;

.field public prevEnergyUws:J

.field public timestampMs:J


# direct methods
.method public constructor <init>(Landroid/os/PowerMonitor;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    .line 11
    .line 12
    return-void
.end method
