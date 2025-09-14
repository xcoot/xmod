.class public final Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    const-wide/16 v6, 0x7530

    .line 5
    .line 6
    const-string v3, "*usage.launchTime*"

    .line 7
    .line 8
    const-string v4, "Estimated launch times"

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p3

    .line 12
    move-object v2, p4

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 14
    .line 15
    .line 16
    iput p2, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final isForUser(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 15
    .line 16
    iget v2, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->mUserId:I

    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseSetArray;->addAll(ILandroid/util/ArraySet;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 25
    .line 26
    const/16 p1, 0x9

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_0
    :goto_0
    return-void
.end method
