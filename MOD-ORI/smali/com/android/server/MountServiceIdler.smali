.class public Lcom/android/server/MountServiceIdler;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MOUNT_JOB_ID:I

.field public static final sIdleService:Landroid/content/ComponentName;


# instance fields
.field public final mFinishCallback:Lcom/android/server/MountServiceIdler$1;

.field public mJobParams:Landroid/app/job/JobParameters;

.field public mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v1, Lcom/android/server/MountServiceIdler;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    .line 15
    .line 16
    const/16 v0, 0x328

    .line 17
    .line 18
    sput v0, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/MountServiceIdler$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/MountServiceIdler$1;-><init>(Lcom/android/server/MountServiceIdler;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Lcom/android/server/MountServiceIdler$1;

    .line 10
    .line 11
    return-void
.end method

.method public static offsetFromTodayMidnight(II)Ljava/util/Calendar;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0xb

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 15
    .line 16
    .line 17
    const/16 p1, 0xc

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 21
    .line 22
    .line 23
    const/16 p1, 0xd

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 26
    .line 27
    .line 28
    const/16 p1, 0xe

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x5

    .line 34
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static scheduleIdlePass(Landroid/content/Context;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "jobscheduler"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v0, v1}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const/4 v4, 0x4

    .line 21
    invoke-static {v0, v4}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-static {v0, v1}, Lcom/android/server/MountServiceIdler;->offsetFromTodayMidnight(II)Ljava/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    cmp-long v1, v8, v2

    .line 43
    .line 44
    if-lez v1, :cond_0

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    cmp-long v1, v1, v4

    .line 51
    .line 52
    if-gez v1, :cond_0

    .line 53
    .line 54
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    const-wide/16 v2, 0xa

    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    sub-long v1, v6, v1

    .line 68
    .line 69
    :goto_0
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    .line 70
    .line 71
    sget v4, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    .line 72
    .line 73
    sget-object v5, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    .line 74
    .line 75
    invoke-direct {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 98
    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    iput-object p1, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 9
    .line 10
    sget-object p1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Lcom/android/server/MountServiceIdler$1;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    .line 19
    .line 20
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    iget-object p0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Lcom/android/server/MountServiceIdler$1;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_1
    return v0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    sget-object p1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Lcom/android/server/MountServiceIdler$1;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Lcom/android/server/MountServiceIdler$1;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    .line 15
    .line 16
    monitor-exit p1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0

    .line 21
    :cond_0
    :goto_0
    return v0
.end method
