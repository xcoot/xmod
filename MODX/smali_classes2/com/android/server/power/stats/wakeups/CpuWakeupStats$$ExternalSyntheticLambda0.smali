.class public final synthetic Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/LongSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    .line 6
    .line 7
    return-wide v0
.end method
