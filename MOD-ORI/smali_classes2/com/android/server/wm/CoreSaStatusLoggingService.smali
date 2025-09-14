.class public abstract Lcom/android/server/wm/CoreSaStatusLoggingService;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final IDLE_LOGGING_PERIOD_MILLIS:J

.field public static final sCoreSaStatusLoggers:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/wm/CoreSaStatusLoggingService;

    .line 2
    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sput-wide v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    .line 19
    .line 20
    return-void
.end method

.method public static schedule()V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/app/job/JobScheduler;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    .line 13
    .line 14
    const-string v2, "android"

    .line 15
    .line 16
    const-class v3, Lcom/android/server/wm/CoreSaStatusLoggingService;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    .line 26
    .line 27
    const v3, 0x18c2283f

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-wide v2, Lcom/android/server/wm/CoreSaStatusLoggingService;->IDLE_LOGGING_PERIOD_MILLIS:J

    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    const-string v1, "CoreSaStatusLoggingService"

    .line 58
    .line 59
    const-string v2, "Failed to schedule."

    .line 60
    .line 61
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method
