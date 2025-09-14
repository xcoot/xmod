.class public final Lcom/android/server/criticalevents/CriticalEventLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final FILENAME:Ljava/lang/String; = "critical_event_log.pb"

.field public static sInstance:Lcom/android/server/criticalevents/CriticalEventLog;


# instance fields
.field public final mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSaveAttemptMs:J

.field public final mLoadAndSaveImmediately:Z

.field public final mLogFile:Ljava/io/File;

.field public final mMinTimeBetweenSavesMs:J

.field public final mSaveRunnable:Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

.field public final mWindowMs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJZLcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLastSaveAttemptMs:J

    .line 8
    new-instance v0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/criticalevents/CriticalEventLog;)V

    .line 13
    iput-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mSaveRunnable:Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

    .line 15
    const-string/jumbo v0, "critical_event_log.pb"

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    .line 32
    iput p3, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mWindowMs:I

    .line 34
    iput-wide p4, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mMinTimeBetweenSavesMs:J

    .line 36
    iput-boolean p6, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLoadAndSaveImmediately:Z

    .line 38
    new-instance p1, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    .line 40
    const-class p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 42
    invoke-direct {p1, p3, p2}, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 45
    iput-object p1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    .line 47
    const-string p1, "CriticalEventLogIO"

    .line 49
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Landroid/os/Handler;

    .line 55
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    iput-object p2, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance p1, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;

    .line 66
    invoke-direct {p1, p0, p7}, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/criticalevents/CriticalEventLog;Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V

    .line 69
    if-nez p6, :cond_0

    .line 71
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;->run()V

    .line 78
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/criticalevents/CriticalEventLog;
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->sInstance:Lcom/android/server/criticalevents/CriticalEventLog;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/criticalevents/CriticalEventLog;

    .line 7
    const-wide/16 v1, 0x5

    .line 9
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    .line 16
    move-result-wide v1

    .line 17
    long-to-int v4, v1

    .line 18
    const-wide/16 v1, 0x2

    .line 20
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    .line 27
    move-result-wide v5

    .line 28
    new-instance v8, Lcom/android/server/criticalevents/CriticalEventLog$LogLoader;

    .line 30
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v3, 0x14

    .line 35
    const/4 v7, 0x0

    .line 36
    const-string v2, "/data/misc/critical-events"

    .line 38
    move-object v1, v0

    .line 39
    invoke-direct/range {v1 .. v8}, Lcom/android/server/criticalevents/CriticalEventLog;-><init>(Ljava/lang/String;IIJZLcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V

    .line 42
    sput-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->sInstance:Lcom/android/server/criticalevents/CriticalEventLog;

    .line 44
    :cond_0
    sget-object v0, Lcom/android/server/criticalevents/CriticalEventLog;->sInstance:Lcom/android/server/criticalevents/CriticalEventLog;

    .line 46
    return-object v0
.end method


# virtual methods
.method public appendAndSave(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    .line 6
    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    .line 10
    iget-boolean p1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLoadAndSaveImmediately:Z

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->saveLogToFileNow()V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mHandler:Landroid/os/Handler;

    .line 20
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mSaveRunnable:Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mSaveRunnable:Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda0;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->saveDelayMs()J

    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_2

    .line 41
    const-string p0, "CriticalEventLog"

    .line 43
    const-string p1, "Error scheduling save"

    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_2
    :goto_0
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0

    .line 51
    throw p0
.end method

.method public getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    .line 3
    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->timestampMs:J

    .line 12
    iget v3, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mWindowMs:I

    .line 14
    iput v3, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->windowMs:I

    .line 16
    iget-object p0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    .line 18
    iget v4, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mCapacity:I

    .line 20
    iput v4, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->capacity:I

    .line 22
    int-to-long v3, v3

    .line 23
    sub-long/2addr v1, v3

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v3, p0, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    .line 27
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 30
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    .line 32
    check-cast v3, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 34
    const/4 p0, 0x0

    .line 35
    move v4, p0

    .line 36
    :goto_0
    array-length v5, v3

    .line 37
    if-ge v4, v5, :cond_1

    .line 39
    aget-object v5, v3, v4

    .line 41
    iget-wide v5, v5, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 43
    cmp-long v5, v5, v1

    .line 45
    if-ltz v5, :cond_0

    .line 47
    array-length v1, v3

    .line 48
    invoke-static {v3, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-array v1, p0, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 60
    :goto_1
    new-instance v2, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;

    .line 62
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, v2, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessClassEnum:I

    .line 67
    iput-object p2, v2, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessName:Ljava/lang/String;

    .line 69
    iput p3, v2, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceUid:I

    .line 71
    :goto_2
    array-length p1, v1

    .line 72
    if-ge p0, p1, :cond_5

    .line 74
    aget-object p1, v1, p0

    .line 76
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasAnr()Z

    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 85
    move-result-object p2

    .line 86
    iget p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 88
    iget-object v3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    .line 90
    iget p2, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 92
    invoke-virtual {v2, p3, p2, v3}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(IILjava/lang/String;)Z

    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_4

    .line 98
    new-instance p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 100
    invoke-direct {p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    .line 103
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 106
    move-result-object p3

    .line 107
    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 109
    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 111
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 114
    move-result-object p3

    .line 115
    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 117
    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 119
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 122
    move-result-object p3

    .line 123
    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 125
    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 127
    new-instance p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 129
    invoke-direct {p3}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 132
    iget-wide v3, p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 134
    iput-wide v3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 136
    invoke-virtual {p3, p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 139
    :goto_3
    move-object p1, p3

    .line 140
    goto/16 :goto_4

    .line 142
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasJavaCrash()Z

    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_3

    .line 148
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 151
    move-result-object p2

    .line 152
    iget p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 154
    iget-object v3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    .line 156
    iget p2, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 158
    invoke-virtual {v2, p3, p2, v3}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(IILjava/lang/String;)Z

    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_4

    .line 164
    new-instance p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 166
    invoke-direct {p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    .line 169
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 172
    move-result-object p3

    .line 173
    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 175
    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 177
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 180
    move-result-object p3

    .line 181
    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 183
    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 185
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    .line 188
    move-result-object p3

    .line 189
    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 191
    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 193
    new-instance p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 195
    invoke-direct {p3}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 198
    iget-wide v3, p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 200
    iput-wide v3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 202
    invoke-virtual {p3, p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 205
    goto :goto_3

    .line 206
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasNativeCrash()Z

    .line 209
    move-result p2

    .line 210
    if-eqz p2, :cond_4

    .line 212
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 215
    move-result-object p2

    .line 216
    iget p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 218
    iget-object v3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    .line 220
    iget p2, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 222
    invoke-virtual {v2, p3, p2, v3}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(IILjava/lang/String;)Z

    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_4

    .line 228
    new-instance p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 230
    invoke-direct {p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    .line 233
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 236
    move-result-object p3

    .line 237
    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 239
    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 241
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 244
    move-result-object p3

    .line 245
    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 247
    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 249
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    .line 252
    move-result-object p3

    .line 253
    iget p3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 255
    iput p3, p2, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 257
    new-instance p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 259
    invoke-direct {p3}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 262
    iget-wide v3, p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 264
    iput-wide v3, p3, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 266
    invoke-virtual {p3, p2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 269
    goto/16 :goto_3

    .line 271
    :cond_4
    :goto_4
    aput-object p1, v1, p0

    .line 273
    add-int/lit8 p0, p0, 0x1

    .line 275
    goto/16 :goto_2

    .line 277
    :cond_5
    iput-object v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 279
    return-object v0

    .line 280
    :catchall_0
    move-exception p1

    .line 281
    monitor-exit p0

    .line 282
    throw p1
.end method

.method public getWallTimeMillis()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/CriticalEventLog;->appendAndSave(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    .line 10
    return-void
.end method

.method public saveDelayMs()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLastSaveAttemptMs:J

    .line 7
    iget-wide v4, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mMinTimeBetweenSavesMs:J

    .line 9
    add-long/2addr v2, v4

    .line 10
    sub-long/2addr v2, v0

    .line 11
    const-wide/16 v0, 0x0

    .line 13
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public saveLogToFileNow()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/criticalevents/CriticalEventLog;->getWallTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLastSaveAttemptMs:J

    .line 7
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    move-result v1

    .line 17
    const-string v2, "CriticalEventLog"

    .line 19
    if-nez v1, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "Error creating log directory: "

    .line 31
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    const-string v0, "Error creating log file"

    .line 66
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    return-void

    .line 70
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    .line 72
    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    .line 77
    monitor-enter v1

    .line 78
    :try_start_1
    iget-object v3, v1, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    .line 80
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 83
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 84
    monitor-exit v1

    .line 85
    check-cast v3, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 87
    iput-object v3, v0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 89
    invoke-static {v0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 92
    move-result-object v0

    .line 93
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    .line 95
    iget-object p0, p0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-direct {v1, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 107
    goto :goto_3

    .line 108
    :catch_1
    move-exception p0

    .line 109
    goto :goto_2

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 114
    goto :goto_1

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    :goto_1
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 120
    :goto_2
    const-string v0, "Error saving log to disk."

    .line 122
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :goto_3
    return-void

    .line 126
    :catchall_2
    move-exception p0

    .line 127
    monitor-exit v1

    .line 128
    throw p0
.end method
