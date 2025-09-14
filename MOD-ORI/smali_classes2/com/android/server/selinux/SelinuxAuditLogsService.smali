.class public Lcom/android/server/selinux/SelinuxAuditLogsService;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AUDITD_TAG_CODE:I

.field public static final EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

.field public static final LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

.field public static final QUOTA_LIMITER:Lcom/android/server/selinux/QuotaLimiter;

.field public static final SELINUX_AUDIT_JOB_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "auditd"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    .line 8
    .line 9
    new-instance v0, Landroid/content/ComponentName;

    .line 10
    .line 11
    const-class v1, Lcom/android/server/selinux/SelinuxAuditLogsService;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "android"

    .line 18
    .line 19
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->SELINUX_AUDIT_JOB_COMPONENT:Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    const-wide/16 v0, 0xa

    .line 31
    .line 32
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/android/server/selinux/QuotaLimiter;

    .line 37
    .line 38
    const v2, 0xc350

    .line 39
    .line 40
    .line 41
    const-string v3, "adservices"

    .line 42
    .line 43
    const-string/jumbo v4, "selinux_audit_cap"

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    .line 51
    .line 52
    const-wide/16 v4, 0x1

    .line 53
    .line 54
    invoke-static {v4, v5}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/selinux/QuotaLimiter;-><init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;I)V

    .line 59
    .line 60
    .line 61
    sput-object v1, Lcom/android/server/selinux/SelinuxAuditLogsService;->QUOTA_LIMITER:Lcom/android/server/selinux/QuotaLimiter;

    .line 62
    .line 63
    new-instance v2, Lcom/android/server/selinux/SelinuxAuditLogsJob;

    .line 64
    .line 65
    new-instance v3, Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    .line 66
    .line 67
    new-instance v4, Lcom/android/server/selinux/RateLimiter;

    .line 68
    .line 69
    invoke-direct {v4, v0}, Lcom/android/server/selinux/RateLimiter;-><init>(Ljava/time/Duration;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v3, v4, v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;-><init>(Lcom/android/server/selinux/RateLimiter;Lcom/android/server/selinux/QuotaLimiter;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v3}, Lcom/android/server/selinux/SelinuxAuditLogsJob;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)V

    .line 76
    .line 77
    .line 78
    sput-object v2, Lcom/android/server/selinux/SelinuxAuditLogsService;->LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

    .line 79
    .line 80
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

.method public static schedule(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SelinuxAuditLogs"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "SelinuxAuditLogsService not enabled"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    const-string p0, "auditd is not a registered tag on this system"

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    .line 27
    .line 28
    const-class v1, Landroid/app/job/JobScheduler;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 35
    .line 36
    const-string v2, "SelinuxAuditLogsNamespace"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;-><init>(Landroid/app/job/JobScheduler;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    .line 46
    .line 47
    .line 48
    const-string v1, "adservices"

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 55
    .line 56
    .line 57
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
    const v1, 0x182771a

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "SelinuxAuditLogs"

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const-string p0, "The job id does not match the expected selinux job id."

    .line 14
    .line 15
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    invoke-static {}, Lcom/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string p0, "Selinux audit job disabled."

    .line 26
    .line 27
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    sget-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService;Landroid/app/job/JobParameters;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p1, 0x182771a

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eq p0, p1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    sget-object p0, Lcom/android/server/selinux/SelinuxAuditLogsService;->LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsJob;->mAuditLogsCollector:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :cond_1
    return v0
.end method
