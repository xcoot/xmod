.class public final Lcom/android/server/ZramWriteback$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ZramWriteback;

.field public final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/android/server/ZramWriteback;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ZramWriteback$1;->this$0:Lcom/android/server/ZramWriteback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/ZramWriteback$1;->val$params:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    const-string p1, "ZramWriteback_WritebackIdlePages"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/ZramWriteback$1;->this$0:Lcom/android/server/ZramWriteback;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    .line 4
    .line 5
    const-string v1, "ZramWriteback"

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/ZramWriteback;->getWrittenPageCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "/sys/block/zram%d/writeback"

    .line 24
    .line 25
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 30
    .line 31
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v5, "idle"

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    const-string v4, "Failed to write to "

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-static {}, Lcom/android/server/ZramWriteback;->markPagesAsIdle()V

    .line 51
    .line 52
    .line 53
    const/4 v3, -0x1

    .line 54
    if-eq v0, v3, :cond_0

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v4, "Total pages written to disk is "

    .line 59
    .line 60
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/android/server/ZramWriteback;->getWrittenPageCount()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    sub-int/2addr v4, v0

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/server/ZramWriteback$1;->this$0:Lcom/android/server/ZramWriteback;

    .line 79
    .line 80
    const-string/jumbo v1, "ro.zram.periodic_wb_delay_hours"

    .line 81
    .line 82
    .line 83
    const/16 v3, 0x18

    .line 84
    .line 85
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const-string/jumbo v3, "zram.force_writeback"

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const-string/jumbo v4, "jobscheduler"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 104
    .line 105
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    .line 106
    .line 107
    const/16 v5, 0x32c

    .line 108
    .line 109
    sget-object v6, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    .line 110
    .line 111
    invoke-direct {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 112
    .line 113
    .line 114
    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 115
    .line 116
    int-to-long v6, v1

    .line 117
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v5

    .line 121
    invoke-virtual {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    xor-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/server/ZramWriteback$1;->this$0:Lcom/android/server/ZramWriteback;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/ZramWriteback$1;->val$params:Landroid/app/job/JobParameters;

    .line 141
    .line 142
    invoke-virtual {v0, p0, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 143
    .line 144
    .line 145
    return-void
.end method
