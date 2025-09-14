.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/util/concurrent/Future;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/util/concurrent/Future;[ILandroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$1:Ljava/util/concurrent/Future;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$2:[I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$3:Landroid/os/ResultReceiver;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$1:Ljava/util/concurrent/Future;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$2:[I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$3:Landroid/os/ResultReceiver;

    .line 9
    .line 10
    sget-object v4, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v2

    .line 22
    const-string v4, "BatteryStatsService"

    .line 23
    .line 24
    const-string v5, "Sync failed"

    .line 25
    .line 26
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    :try_start_1
    array-length v2, v3

    .line 34
    new-array v6, v2, [Landroid/os/health/HealthStatsParceler;

    .line 35
    .line 36
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 37
    .line 38
    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    const/4 v8, 0x0

    .line 40
    move v9, v8

    .line 41
    :goto_1
    if-ge v9, v2, :cond_1

    .line 42
    .line 43
    :try_start_2
    aget v10, v3, v9

    .line 44
    .line 45
    invoke-virtual {v1, v10}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    aput-object v10, v6, v9

    .line 50
    .line 51
    add-int/2addr v9, v0

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v0, "uid_snapshots"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v8, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    goto :goto_4

    .line 76
    :catch_1
    move-exception p0

    .line 77
    goto :goto_3

    .line 78
    :goto_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 80
    :goto_3
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 81
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method
