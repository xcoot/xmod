.class public final synthetic Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$1:I

    .line 9
    .line 10
    const-string/jumbo v1, "procstate-change"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$1:I

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 35
    .line 36
    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$1:I

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_1
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    throw p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
