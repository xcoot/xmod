.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/LongSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const-wide/16 v3, 0x3e8

    .line 19
    .line 20
    mul-long/2addr v1, v3

    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0

    .line 27
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    const-wide/16 v3, 0x3e8

    .line 38
    .line 39
    mul-long/2addr v1, v3

    .line 40
    const/4 p0, 0x0

    .line 41
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    return-wide v0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
