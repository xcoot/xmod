.class public final synthetic Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-direct {v0, v1, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "batterystats-worker"

    .line 10
    .line 11
    invoke-direct {p0, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x5

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method
