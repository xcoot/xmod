.class public Lcom/android/server/pm/DynamicCodeLoggingService;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AUDIT_WATCHING_PERIOD_MILLIS:J

.field public static final EXECUTE_NATIVE_AUDIT_PATTERN:Ljava/util/regex/Pattern;

.field public static final IDLE_LOGGING_PERIOD_MILLIS:J

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public volatile mAuditWatchingStopRequested:Z

.field public volatile mIdleLoggingStopRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/pm/DynamicCodeLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    .line 18
    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    const-wide/16 v1, 0x2

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sput-wide v0, Lcom/android/server/pm/DynamicCodeLoggingService;->AUDIT_WATCHING_PERIOD_MILLIS:J

    .line 28
    .line 29
    const-string v0, ".*\\bavc: +granted +\\{ execute(?:_no_trans|) \\} .*\\bpath=(?:\"([^\" ]*)\"|([0-9A-F]+)) .*\\bscontext=u:r:untrusted_app(?:_25|_27)?:.*\\btcontext=u:object_r:app_data_file:.*\\btclass=file\\b.*"

    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/server/pm/DynamicCodeLoggingService;->EXECUTE_NATIVE_AUDIT_PATTERN:Ljava/util/regex/Pattern;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    .line 8
    .line 9
    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v1, Lcom/android/server/pm/DynamicCodeLoggingService;

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
    const-string v1, "jobscheduler"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 21
    .line 22
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 23
    .line 24
    const v2, 0x1ef9cc

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-wide v3, Lcom/android/server/pm/DynamicCodeLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 50
    .line 51
    .line 52
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 53
    .line 54
    const v3, 0xc1bb70d

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-wide v1, Lcom/android/server/pm/DynamicCodeLoggingService;->AUDIT_WATCHING_PERIOD_MILLIS:J

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x1ef9cc

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const v1, 0xc1bb70d

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;-><init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/DynamicCodeLoggingService$IdleLoggingThread;-><init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    .line 40
    .line 41
    return v2
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x1ef9cc

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const v0, 0xc1bb70d

    .line 12
    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mAuditWatchingStopRequested:Z

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService;->mIdleLoggingStopRequested:Z

    .line 22
    .line 23
    return v1
.end method
