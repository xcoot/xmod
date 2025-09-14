.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryVoltageMv:I

    .line 6
    .line 7
    return p0
.end method
