.class public Lcom/android/server/camera/CameraStatsJobService;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sCameraStatsJobServiceName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    const-class v1, Lcom/android/server/camera/CameraStatsJobService;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sput-object v0, Lcom/android/server/camera/CameraStatsJobService;->sCameraStatsJobServiceName:Landroid/content/ComponentName;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 4
    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "jobscheduler"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const-string p0, "CameraStatsJobService"

    .line 14
    const-string v0, "Can\'t collect camera usage stats - no Job Scheduler"

    .line 16
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    .line 22
    const v1, 0xca3e7a

    .line 25
    sget-object v2, Lcom/android/server/camera/CameraStatsJobService;->sCameraStatsJobServiceName:Landroid/content/ComponentName;

    .line 27
    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 30
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 32
    const-wide/16 v2, 0x1

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 54
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    const-class p0, Lcom/android/server/camera/CameraServiceProxy;

    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/camera/CameraServiceProxy;

    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 12
    const-string p0, "CameraStatsJobService"

    .line 14
    const-string v0, "Can\'t collect camera usage stats - no camera service proxy found"

    .line 16
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return p1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V

    .line 23
    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
