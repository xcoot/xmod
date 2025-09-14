.class public Lcom/android/server/display/BrightnessIdleJob;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 4
    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-class v0, Landroid/app/job/JobScheduler;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 9
    const v1, 0x3bde38

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    .line 18
    new-instance v4, Landroid/content/ComponentName;

    .line 20
    const-class v5, Lcom/android/server/display/BrightnessIdleJob;

    .line 22
    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-direct {v3, v1, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 28
    const/4 p0, 0x1

    .line 29
    invoke-virtual {v3, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 36
    move-result-object p0

    .line 37
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 39
    const-wide/16 v4, 0x18

    .line 41
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 44
    move-result-wide v3

    .line 45
    invoke-virtual {p0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 52
    move-result-object p0

    .line 53
    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v2, p0}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_0

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 64
    const/4 v2, 0x0

    .line 65
    :cond_0
    if-nez v2, :cond_1

    .line 67
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const-string p0, "BrightnessTracker"

    .line 7
    const-string p1, "Scheduled write of brightness events"

    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 14
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 20
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal;->persistBrightnessTrackerState()V

    .line 23
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
