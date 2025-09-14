.class public final Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 4
    .line 5
    const/4 p3, 0x5

    .line 6
    const/4 p4, -0x1

    .line 7
    invoke-virtual {p0, p3, p2, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final triggerTemporaryQuotaBump(Ljava/lang/String;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 9
    .line 10
    iget v2, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->TEMPORARY_QUOTA_BUMP:I

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-gtz v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    invoke-virtual {v0, p1, v3, v4, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ltz v0, :cond_4

    .line 25
    .line 26
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 39
    .line 40
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    if-gtz v2, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v6, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    .line 68
    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    new-instance v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    .line 72
    .line 73
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v7, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 77
    .line 78
    invoke-virtual {v7, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_3
    iput v2, v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    .line 82
    .line 83
    iget-wide v1, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mMaxDuration:J

    .line 84
    .line 85
    add-long/2addr v4, v1

    .line 86
    iput-wide v4, v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    .line 87
    .line 88
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 92
    .line 93
    const/16 v0, 0xe

    .line 94
    .line 95
    const/4 v1, -0x1

    .line 96
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    throw p0

    .line 107
    :cond_4
    :goto_1
    return-void

    .line 108
    :catchall_1
    move-exception p0

    .line 109
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    throw p0
.end method
