.class public Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static isStarted:Z = false

.field public static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static cancelJob()V
    .locals 4

    .line 1
    const-string v0, "dynamicfeature_CheckUpdateJobService"

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->isStarted:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->sContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "jobscheduler"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 17
    .line 18
    const/16 v2, 0x2a18

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    sput-boolean v1, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->isStarted:Z

    .line 25
    .line 26
    const-string v1, "Cancel job scheduler "

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "JobScheduler : "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public static scheduleDynamicFeatureScheduler(Landroid/content/Context;Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "start job scheduler : "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "next job is : "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "start job scheduler request  ======="

    .line 8
    .line 9
    .line 10
    const-string v3, "dynamicfeature_CheckUpdateJobService"

    .line 11
    .line 12
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    sget-boolean v2, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->isStarted:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-string p0, "DynamicFeatureService is not started"

    .line 23
    .line 24
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "DynamicFeatureService is working : "

    .line 31
    .line 32
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroid/content/ComponentName;

    .line 46
    .line 47
    const-string v2, "com.samsung.android.server.dynamicfeature.CheckUpdateJobService"

    .line 48
    .line 49
    invoke-direct {p1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v2, "start job scheduler begin!  ==========  "

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :try_start_0
    const-string v2, "jobscheduler"

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/app/job/JobScheduler;

    .line 65
    .line 66
    sput-object p0, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->sContext:Landroid/content/Context;

    .line 67
    .line 68
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    .line 69
    .line 70
    const/16 v4, 0x2a18

    .line 71
    .line 72
    invoke-direct {p0, v4, p1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 76
    .line 77
    iget-wide v4, p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMin:J

    .line 78
    .line 79
    const v6, 0xea60

    .line 80
    .line 81
    .line 82
    int-to-long v7, v6

    .line 83
    mul-long/2addr v4, v7

    .line 84
    iget p1, p1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->flexMill:I

    .line 85
    .line 86
    mul-int/2addr p1, v6

    .line 87
    int-to-long v7, p1

    .line 88
    invoke-virtual {p0, v4, v5, v7, v8}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-wide/16 v4, 0x0

    .line 98
    .line 99
    invoke-virtual {p0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v2, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-ne p0, p1, :cond_2

    .line 112
    .line 113
    sput-boolean p1, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->isStarted:Z

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception p0

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 124
    .line 125
    iget-wide v1, v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMin:J

    .line 126
    .line 127
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, " flex : "

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 136
    .line 137
    iget v1, v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->flexMill:I

    .line 138
    .line 139
    mul-int/2addr v1, v6

    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v0, "JobScheduler : "

    .line 169
    .line 170
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {p0, p1, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_2
    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 1
    const-string v0, "dynamicfeature_CheckUpdateJobService"

    .line 2
    .line 3
    const-string/jumbo v1, "onStartJob for update ==================== "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    :try_start_0
    const-class v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p0, "DynamicFeatureService is not started"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateFeatureViaServer()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo p0, "onStartJob finished ==================== "

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v1, "onStartJob : "

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    const/4 p0, 0x1

    .line 53
    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const-string p0, "dynamicfeature_CheckUpdateJobService"

    .line 2
    .line 3
    const-string/jumbo p1, "onStopJob for update ====================="

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method
