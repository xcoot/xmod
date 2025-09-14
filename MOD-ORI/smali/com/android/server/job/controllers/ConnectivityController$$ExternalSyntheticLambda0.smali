.class public final synthetic Lcom/android/server/job/controllers/ConnectivityController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-ge v2, v5, :cond_2

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 25
    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/ConnectivityController;->updateTransportAffinitySatisfaction(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    :cond_1
    iget-boolean v5, v5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    .line 37
    .line 38
    or-int/2addr v4, v5

    .line 39
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    if-eqz v3, :cond_3

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 47
    .line 48
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    const/high16 v3, 0x10000000

    .line 58
    .line 59
    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IJZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateAllTrackedJobsLocked(Z)V

    .line 63
    .line 64
    .line 65
    :cond_3
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method
