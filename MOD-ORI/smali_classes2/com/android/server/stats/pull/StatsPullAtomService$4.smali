.class public final Lcom/android/server/stats/pull/StatsPullAtomService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mestimateAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    const-string v1, "StatsPullAtomService"

    .line 9
    .line 10
    const-string v2, "AppOps sampling ratio estimation failed: "

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 23
    .line 24
    const/16 v2, 0xa

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    :goto_0
    return-void

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    throw p0
.end method
