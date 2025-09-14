.class public final synthetic Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AnrHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/os/TimeoutRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AnrHelper;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/os/TimeoutRecord;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$1:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/os/TimeoutRecord;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AnrHelper;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 11
    .line 12
    sget-object v2, Lcom/android/server/am/StackTracesDumpHelper;->ANR_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    const-string v2, "ActivityManager"

    .line 15
    .line 16
    const-string v3, "Aborted stack trace dump (current primary pid="

    .line 17
    .line 18
    const-string v4, "Collecting stacks for pid "

    .line 19
    .line 20
    const-string/jumbo v5, "created ANR temporary file:"

    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v6, "temp_anr_"

    .line 33
    .line 34
    .line 35
    const-string v7, ".txt"

    .line 36
    .line 37
    new-instance v8, Ljava/io/File;

    .line 38
    .line 39
    const-string v9, "/data/anr"

    .line 40
    .line 41
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, " into temporary file "

    .line 76
    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidStarted(I)V

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    sget v5, Lcom/android/server/am/StackTracesDumpHelper;->TEMP_DUMP_TIME_LIMIT:I

    .line 104
    .line 105
    int-to-long v7, v5

    .line 106
    invoke-static {v0, v4, v7, v8}, Lcom/android/server/am/StackTracesDumpHelper;->dumpJavaTracesTombstoned(ILjava/lang/String;J)J

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpingPidEnded()V

    .line 113
    .line 114
    .line 115
    :cond_2
    cmp-long v4, v7, v4

    .line 116
    .line 117
    if-gtz v4, :cond_3

    .line 118
    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v3, "); deadline exceeded."

    .line 128
    .line 129
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileTimedOut()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .line 143
    .line 144
    :cond_3
    if-eqz v1, :cond_6

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_0
    move-exception v3

    .line 151
    :try_start_3
    const-string v4, "Exception creating temporary ANR dump file:"

    .line 152
    .line 153
    invoke-static {v2, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    if-eqz v1, :cond_4

    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileCreationFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    .line 160
    .line 161
    :cond_4
    if-eqz v1, :cond_5

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    .line 164
    .line 165
    .line 166
    :cond_5
    const/4 v6, 0x0

    .line 167
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mTempDumpedPids:Ljava/util/Set;

    .line 168
    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    return-object v6

    .line 177
    :goto_2
    if-eqz v1, :cond_7

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->dumpStackTracesTempFileEnded()V

    .line 180
    .line 181
    .line 182
    :cond_7
    throw p0
.end method
