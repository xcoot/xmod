.class public final Lcom/android/server/LooperStatsService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mIgnoreBatteryStatus:Z

.field public final mStats:Lcom/android/internal/os/LooperStats;

.field public mTrackScreenInteractive:Z


# direct methods
.method public static -$$Nest$minitFromSettings(Lcom/android/server/LooperStatsService;)V
    .locals 4

    .line 1
    const-string v0, "LooperStatsService"

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Landroid/util/KeyValueListParser;

    .line 8
    const/16 v2, 0x2c

    .line 10
    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object v2

    .line 19
    const-string/jumbo v3, "looper_stats"

    .line 22
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v2

    .line 31
    const-string v3, "Bad looper_stats settings"

    .line 33
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :goto_0
    const-string/jumbo v2, "sampling_interval"

    .line 39
    const/16 v3, 0x3e8

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 44
    move-result v2

    .line 45
    if-lez v2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/internal/os/LooperStats;->setSamplingInterval(I)V

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    const-string v3, "Ignored invalid sampling interval (value must be positive): "

    .line 55
    invoke-static {v2, v3, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_1
    const-string/jumbo v0, "track_screen_state"

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, v0, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 65
    move-result v0

    .line 66
    iget-boolean v3, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    .line 68
    if-eq v3, v0, :cond_1

    .line 70
    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    .line 72
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 74
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 77
    :cond_1
    const-string/jumbo v0, "ignore_battery_status"

    .line 80
    invoke-virtual {v1, v0, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 83
    move-result v0

    .line 84
    iget-boolean v2, p0, Lcom/android/server/LooperStatsService;->mIgnoreBatteryStatus:Z

    .line 86
    if-eq v2, v0, :cond_2

    .line 88
    iget-object v2, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 90
    invoke-virtual {v2, v0}, Lcom/android/internal/os/LooperStats;->setIgnoreBatteryStatus(Z)V

    .line 93
    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mIgnoreBatteryStatus:Z

    .line 95
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 97
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 100
    :cond_2
    const-string/jumbo v0, "enabled"

    .line 103
    const/4 v2, 0x1

    .line 104
    invoke-virtual {v1, v0, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 107
    move-result v0

    .line 108
    const-string/jumbo v1, "debug.sys.looper_stats_enabled"

    .line 111
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 114
    move-result v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/server/LooperStatsService;->setEnabled(Z)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mTrackScreenInteractive:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/server/LooperStatsService;->mIgnoreBatteryStatus:Z

    .line 11
    iput-object p1, p0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 15
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget-object v2, v0, Lcom/android/server/LooperStatsService;->mContext:Landroid/content/Context;

    .line 7
    const-string v3, "LooperStatsService"

    .line 9
    invoke-static {v2, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    .line 19
    move-result-object v2

    .line 20
    const-string v3, "Start time: "

    .line 22
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    iget-object v3, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 27
    invoke-virtual {v3}, Lcom/android/internal/os/LooperStats;->getStartTimeMillis()J

    .line 30
    move-result-wide v3

    .line 31
    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    .line 34
    invoke-static {v5, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 41
    const-string v3, "On battery time (ms): "

    .line 43
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget-object v3, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 48
    invoke-virtual {v3}, Lcom/android/internal/os/LooperStats;->getBatteryTimeMillis()J

    .line 51
    move-result-wide v3

    .line 52
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 55
    iget-object v0, v0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 57
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    .line 60
    move-result-object v0

    .line 61
    new-instance v3, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;

    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-direct {v3, v4}, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 67
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 70
    move-result-object v3

    .line 71
    new-instance v4, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;

    .line 73
    const/4 v5, 0x1

    .line 74
    invoke-direct {v4, v5}, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 77
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 80
    move-result-object v3

    .line 81
    new-instance v4, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;

    .line 83
    const/4 v5, 0x2

    .line 84
    invoke-direct {v4, v5}, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 87
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 90
    move-result-object v3

    .line 91
    new-instance v4, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;

    .line 93
    const/4 v5, 0x3

    .line 94
    invoke-direct {v4, v5}, Lcom/android/server/LooperStatsService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 97
    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v0, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 104
    const-string/jumbo v17, "max_delay_millis"

    .line 107
    const-string/jumbo v18, "exception_count"

    .line 110
    const-string/jumbo v4, "work_source_uid"

    .line 113
    const-string/jumbo v5, "thread_name"

    .line 116
    const-string/jumbo v6, "handler_class"

    .line 119
    const-string/jumbo v7, "message_name"

    .line 122
    const-string/jumbo v8, "is_interactive"

    .line 125
    const-string/jumbo v9, "message_count"

    .line 128
    const-string/jumbo v10, "recorded_message_count"

    .line 131
    const-string/jumbo v11, "total_latency_micros"

    .line 134
    const-string/jumbo v12, "max_latency_micros"

    .line 137
    const-string/jumbo v13, "total_cpu_micros"

    .line 140
    const-string/jumbo v14, "max_cpu_micros"

    .line 143
    const-string/jumbo v15, "recorded_delay_message_count"

    .line 146
    const-string/jumbo v16, "total_delay_millis"

    .line 149
    filled-new-array/range {v4 .. v18}, [Ljava/lang/String;

    .line 152
    move-result-object v3

    .line 153
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 156
    move-result-object v3

    .line 157
    const-string v4, ","

    .line 159
    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object v0

    .line 170
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_2

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    move-result-object v3

    .line 180
    check-cast v3, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 182
    iget-object v4, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    .line 184
    const-string v5, "__DEBUG_"

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_1

    .line 192
    goto :goto_0

    .line 193
    :cond_1
    iget v4, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    .line 195
    invoke-virtual {v2, v4}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    .line 198
    move-result-object v5

    .line 199
    iget-object v6, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    .line 201
    iget-object v7, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    .line 203
    iget-object v8, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    .line 205
    iget-boolean v4, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    .line 207
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 210
    move-result-object v9

    .line 211
    iget-wide v10, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    .line 213
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 216
    move-result-object v10

    .line 217
    iget-wide v11, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    .line 219
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 222
    move-result-object v11

    .line 223
    iget-wide v12, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    .line 225
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    move-result-object v12

    .line 229
    iget-wide v13, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    .line 231
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 234
    move-result-object v13

    .line 235
    iget-wide v14, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    .line 237
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    move-result-object v14

    .line 241
    move-object/from16 p0, v0

    .line 243
    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    .line 245
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 248
    move-result-object v15

    .line 249
    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    .line 251
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 254
    move-result-object v16

    .line 255
    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 260
    move-result-object v17

    .line 261
    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    .line 263
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    move-result-object v18

    .line 267
    iget-wide v0, v3, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    .line 269
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 272
    move-result-object v19

    .line 273
    filled-new-array/range {v5 .. v19}, [Ljava/lang/Object;

    .line 276
    move-result-object v0

    .line 277
    const-string v1, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n"

    .line 279
    move-object/from16 v3, p2

    .line 281
    invoke-virtual {v3, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 284
    move-object/from16 v0, p0

    .line 286
    move-object v1, v3

    .line 287
    goto :goto_0

    .line 288
    :cond_2
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/LooperStatsService$LooperShellCommand;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/LooperStatsService$LooperShellCommand;-><init>(Lcom/android/server/LooperStatsService;)V

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    .line 3
    if-eq v0, p1, :cond_1

    .line 5
    iput-boolean p1, p0, Lcom/android/server/LooperStatsService;->mEnabled:Z

    .line 7
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 9
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 12
    iget-object v0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/internal/os/LooperStats;->setAddDebugEntries(Z)V

    .line 17
    if-eqz p1, :cond_0

    .line 19
    iget-object p0, p0, Lcom/android/server/LooperStatsService;->mStats:Lcom/android/internal/os/LooperStats;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    invoke-static {p0}, Landroid/os/Looper;->setObserver(Landroid/os/Looper$Observer;)V

    .line 26
    :cond_1
    return-void
.end method
