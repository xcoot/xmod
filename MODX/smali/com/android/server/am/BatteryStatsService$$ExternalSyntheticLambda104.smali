.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 5
    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 8
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 12
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v2, "update-network-"

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const/4 v1, 0x6

    .line 30
    invoke-virtual {v0, v1, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)Ljava/util/concurrent/Future;

    .line 33
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 36
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    .line 38
    check-cast p0, Landroid/os/SemModemActivityInfo;

    .line 40
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 42
    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 45
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateSemModemActivityInfoLocked(Landroid/os/SemModemActivityInfo;)V

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
