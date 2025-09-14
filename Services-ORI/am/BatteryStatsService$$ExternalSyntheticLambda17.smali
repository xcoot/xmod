.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IJ[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$1:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$3:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$1:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$2:J

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;->f$3:[I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 10
    .line 11
    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->noteWakingActivity(J[II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
