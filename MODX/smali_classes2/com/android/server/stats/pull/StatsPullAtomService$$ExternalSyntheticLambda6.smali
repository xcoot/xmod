.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final binderDied$com$android$server$stats$pull$StatsPullAtomService$$ExternalSyntheticLambda7()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0

    .line 19
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;->binderDied$com$android$server$stats$pull$StatsPullAtomService$$ExternalSyntheticLambda7()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    const/4 v1, 0x0

    .line 29
    :try_start_1
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    throw p0

    .line 36
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v0

    .line 41
    const/4 v1, 0x0

    .line 42
    :try_start_2
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_2
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 48
    throw p0

    .line 49
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    const/4 v1, 0x0

    .line 55
    :try_start_3
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_3
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 61
    throw p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
