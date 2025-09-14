.class public Lcom/android/server/BinderCallsStatsService$Internal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public final mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 6
    new-instance v0, Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 8
    invoke-direct {v0, p1, p2}, Lcom/android/server/CustomizedBinderCallsStatsInternal;-><init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V

    .line 11
    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 13
    return-void
.end method


# virtual methods
.method public reportCpuUsage(I)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 3
    iget-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v0, v0, v2

    .line 9
    const-string v1, "CustomizedBinderCallsStatsInternal"

    .line 11
    if-lez v0, :cond_0

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v2

    .line 17
    iget-wide v4, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    .line 19
    sub-long/2addr v2, v4

    .line 20
    const-wide/32 v4, 0xd6d8

    .line 23
    cmp-long v0, v2, v4

    .line 25
    if-gez v0, :cond_0

    .line 27
    const-string p0, "1 minute has NOT pass since last binder stats."

    .line 29
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v2, "reportCpuUsage() : "

    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "%"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;

    .line 62
    invoke-direct {v1, p0, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :goto_0
    return-void
.end method

.method public reportProcessDied(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 3
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/BinderCallsStats;->reportProcessDied(IILjava/lang/String;)V

    .line 8
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 3
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->writeToFile()V

    .line 8
    return-void
.end method
