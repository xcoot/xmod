.class public final Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method public constructor <init>(Landroid/app/job/JobScheduler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "selinux_audit_cap"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    sget-object v2, Lcom/android/server/selinux/SelinuxAuditLogsService;->QUOTA_LIMITER:Lcom/android/server/selinux/QuotaLimiter;

    .line 15
    .line 16
    const v3, 0xc350

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v2, Lcom/android/server/selinux/QuotaLimiter;->mMaxPermits:I

    .line 24
    .line 25
    :cond_0
    const-string/jumbo v1, "selinux_enable_audit_job"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 46
    .line 47
    const p1, 0x182771a

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo p1, "selinux_audit_job_frequency_hours"

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method public final schedule()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-string/jumbo v1, "selinux_audit_job_frequency_hours"

    .line 4
    .line 5
    .line 6
    const/16 v2, 0x18

    .line 7
    .line 8
    const-string v3, "adservices"

    .line 9
    .line 10
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-long v1, v1

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 20
    .line 21
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    .line 22
    .line 23
    sget-object v3, Lcom/android/server/selinux/SelinuxAuditLogsService;->SELINUX_AUDIT_JOB_COMPONENT:Landroid/content/ComponentName;

    .line 24
    .line 25
    const v4, 0x182771a

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    const-string v0, "SelinuxAuditLogs"

    .line 53
    .line 54
    if-nez p0, :cond_0

    .line 55
    .line 56
    const-string p0, "SelinuxAuditLogsService could not be scheduled."

    .line 57
    .line 58
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string p0, "SelinuxAuditLogsService scheduled successfully."

    .line 63
    .line 64
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method
