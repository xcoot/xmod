.class public Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static sTimeLastRanMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 4
    return-void
.end method

.method public static scheduleBinaryMeasurements(Landroid/content/Context;)V
    .locals 9

    .line 1
    const-string v0, "TransparencyService"

    .line 3
    const-string v1, "Scheduling binary content-digest computation job"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const-class v1, Landroid/app/job/JobScheduler;

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 16
    if-nez v1, :cond_0

    .line 18
    const-string p0, "Failed to obtain an instance of JobScheduler."

    .line 20
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 24
    :cond_0
    const v2, 0x67be554e

    .line 27
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_1

    .line 33
    const-string p0, "A measurement job has already been scheduled."

    .line 35
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 39
    :cond_1
    sget-wide v3, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->sTimeLastRanMs:J

    .line 41
    const-wide/16 v5, 0x0

    .line 43
    cmp-long v3, v3, v5

    .line 45
    if-eqz v3, :cond_2

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    move-result-wide v3

    .line 51
    sget-wide v7, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->sTimeLastRanMs:J

    .line 53
    sub-long/2addr v3, v7

    .line 54
    const-wide/32 v7, 0x5265c00

    .line 57
    sub-long v3, v7, v3

    .line 59
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 62
    move-result-wide v3

    .line 63
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 66
    move-result-wide v5

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    const-string v4, "Scheduling the next measurement to be done at least "

    .line 71
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v4, "ms from now."

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    .line 92
    new-instance v4, Landroid/content/ComponentName;

    .line 94
    const-class v7, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;

    .line 96
    invoke-direct {v4, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    invoke-direct {v3, v2, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 102
    const/4 p0, 0x1

    .line 103
    invoke-virtual {v3, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3, p0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 122
    move-result v1

    .line 123
    if-eq v1, p0, :cond_3

    .line 125
    const-string p0, "Failed to schedule job to measure binaries."

    .line 127
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 131
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object p0

    .line 135
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 138
    move-result-object p0

    .line 139
    const-string v1, "Job %d to measure binaries was scheduled successfully."

    .line 141
    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    move-result-object p0

    .line 145
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    const-string v0, "TransparencyService"

    .line 3
    const-string v1, "Job to update binary measurements started."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 11
    move-result v0

    .line 12
    const v1, 0x67be554e

    .line 15
    if-eq v0, v1, :cond_0

    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;

    .line 25
    invoke-direct {v1, p0, p1}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;Landroid/app/job/JobParameters;)V

    .line 28
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 35
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
