.class public Lcom/android/server/people/data/DataMaintenanceService;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final JOB_RUN_INTERVAL:J


# instance fields
.field public mSignal:Landroid/os/CancellationSignal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x18

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/people/data/DataMaintenanceService;->JOB_RUN_INTERVAL:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;I)V
    .locals 3

    .line 1
    const v0, 0xc315bd7

    .line 2
    .line 3
    .line 4
    add-int/2addr p1, v0

    .line 5
    const-class v0, Landroid/app/job/JobScheduler;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Landroid/content/ComponentName;

    .line 20
    .line 21
    const-class v2, Lcom/android/server/people/data/DataMaintenanceService;

    .line 22
    .line 23
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    .line 27
    .line 28
    invoke-direct {p0, p1, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-wide v1, Lcom/android/server/people/data/DataMaintenanceService;->JOB_RUN_INTERVAL:J

    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xc315bd7

    .line 6
    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    new-instance v1, Landroid/os/CancellationSignal;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/Thread;

    .line 17
    .line 18
    new-instance v2, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataMaintenanceService;ILandroid/app/job/JobParameters;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method
