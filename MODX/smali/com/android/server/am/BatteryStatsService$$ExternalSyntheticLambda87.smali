.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 6
    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 3
    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$1:I

    .line 5
    iget p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$2:I

    .line 7
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 15
    move-result v1

    .line 16
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    :cond_0
    monitor-exit v2

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method
