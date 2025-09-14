.class public final Lcom/android/server/ZramWriteback;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sZramWriteback:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    const-class v1, Lcom/android/server/ZramWriteback;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sput-object v0, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

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

.method public static getWrittenPageCount()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "/sys/block/zram%d/bd_stat"

    .line 12
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 18
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    const-string v2, ""

    .line 23
    const/16 v3, 0x80

    .line 25
    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const-string v2, "\\s+"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x2

    .line 40
    aget-object v1, v1, v2

    .line 42
    const/16 v2, 0xa

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 47
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return v0

    .line 49
    :catch_0
    const-string v1, "Failed to read writeback stats from "

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    const-string v1, "ZramWriteback"

    .line 57
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, -0x1

    .line 61
    return v0
.end method

.method public static markPagesAsIdle()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "/sys/block/zram%d/idle"

    .line 12
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 18
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    const-string v2, "all"

    .line 23
    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    const-string v1, "Failed to write to "

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "ZramWriteback"

    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void
.end method

.method public static scheduleZramWriteback(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "ro.zram.mark_idle_delay_mins"

    .line 4
    const/16 v1, 0x14

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 10
    const-string/jumbo v1, "ro.zram.first_wb_delay_mins"

    .line 13
    const/16 v2, 0xb4

    .line 15
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 18
    move-result v1

    .line 19
    const-string/jumbo v2, "zram.force_writeback"

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    move-result v2

    .line 27
    const-string/jumbo v3, "jobscheduler"

    .line 30
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 36
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    .line 38
    sget-object v4, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    .line 40
    const/16 v5, 0x32b

    .line 42
    invoke-direct {v3, v5, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 45
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 47
    int-to-long v6, v0

    .line 48
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 51
    move-result-wide v6

    .line 52
    invoke-virtual {v3, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 63
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    .line 65
    const/16 v3, 0x32c

    .line 67
    invoke-direct {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 70
    int-to-long v3, v1

    .line 71
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 74
    move-result-wide v3

    .line 75
    invoke-virtual {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 78
    move-result-object v0

    .line 79
    xor-int/lit8 v1, v2, 0x1

    .line 81
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 92
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 1
    const-string v0, "ZramWriteback"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 6
    const-string v3, "/sys/block/zram%d/backing_dev"

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v4

    .line 12
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 15
    move-result-object v4

    .line 16
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v3, ""

    .line 25
    const/16 v4, 0x80

    .line 27
    invoke-static {v2, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string/jumbo v3, "none"

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    if-nez v2, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 47
    move-result v0

    .line 48
    const/16 v2, 0x32b

    .line 50
    if-ne v0, v2, :cond_0

    .line 52
    invoke-static {}, Lcom/android/server/ZramWriteback;->markPagesAsIdle()V

    .line 55
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 58
    return v1

    .line 59
    :cond_0
    new-instance v0, Lcom/android/server/ZramWriteback$1;

    .line 61
    invoke-direct {v0, p0, p1}, Lcom/android/server/ZramWriteback$1;-><init>(Lcom/android/server/ZramWriteback;Landroid/app/job/JobParameters;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :cond_1
    :try_start_1
    const-string v2, "Writeback device is not set"

    .line 71
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    const-string v2, "Writeback is not enabled on zram"

    .line 77
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 83
    return v1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
