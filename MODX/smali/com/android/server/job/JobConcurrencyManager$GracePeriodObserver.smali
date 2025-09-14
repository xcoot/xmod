.class Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;
.super Landroid/app/UserSwitchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentUserId:I

.field mGracePeriod:I

.field final mGracePeriodExpiration:Landroid/util/SparseLongArray;

.field public final mLock:Ljava/lang/Object;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseLongArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mLock:Ljava/lang/Object;

    .line 18
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 20
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 26
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mCurrentUserId:I

    .line 32
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 34
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 40
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p1

    .line 46
    const v0, 0x10e00bf

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 52
    move-result p1

    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriod:I

    .line 60
    return-void
.end method


# virtual methods
.method public isWithinGracePeriodForUser(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mCurrentUserId:I

    .line 6
    if-eq p1, v1, :cond_1

    .line 8
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v1

    .line 17
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    .line 19
    const-wide v3, 0x7fffffffffffffffL

    .line 24
    invoke-virtual {p0, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 27
    move-result-wide p0

    .line 28
    cmp-long p0, v1, p0

    .line 30
    if-gez p0, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 38
    :goto_1
    monitor-exit v0

    .line 39
    return p0

    .line 40
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final onUserSwitchComplete(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriod:I

    .line 12
    int-to-long v2, v2

    .line 13
    add-long/2addr v0, v2

    .line 14
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mCurrentUserId:I

    .line 19
    const/16 v4, -0x2710

    .line 21
    if-eq v3, v4, :cond_0

    .line 23
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 25
    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    .line 33
    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mCurrentUserId:I

    .line 35
    invoke-virtual {v3, v4, v0, v1}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    .line 43
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 46
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mCurrentUserId:I

    .line 48
    monitor-exit v2

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method
