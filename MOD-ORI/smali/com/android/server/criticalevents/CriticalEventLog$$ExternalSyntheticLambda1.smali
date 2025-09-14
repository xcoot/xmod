.class public final synthetic Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/criticalevents/CriticalEventLog;

.field public final synthetic f$1:Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/criticalevents/CriticalEventLog;Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/criticalevents/CriticalEventLog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/criticalevents/CriticalEventLog;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/criticalevents/CriticalEventLog$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/criticalevents/CriticalEventLog$ILogLoader;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/criticalevents/CriticalEventLog;->mLogFile:Ljava/io/File;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/criticalevents/CriticalEventLog$LogLoader;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const-string v2, "CriticalEventLog"

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const-string p0, "No log found, returning empty log proto."

    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string v1, "Error reading log from disk."

    .line 46
    .line 47
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    new-instance p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;-><init>()V

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object p0, p0, Lcom/android/server/criticalevents/nano/CriticalEventLogStorageProto;->events:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 56
    .line 57
    array-length v1, p0

    .line 58
    const/4 v2, 0x0

    .line 59
    :goto_1
    if-ge v2, v1, :cond_1

    .line 60
    .line 61
    aget-object v3, p0, v2

    .line 62
    .line 63
    iget-object v4, v0, Lcom/android/server/criticalevents/CriticalEventLog;->mEvents:Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;

    .line 64
    .line 65
    monitor-enter v4

    .line 66
    :try_start_1
    iget-object v5, v4, Lcom/android/server/criticalevents/CriticalEventLog$ThreadSafeRingBuffer;->mBuffer:Lcom/android/internal/util/RingBuffer;

    .line 67
    .line 68
    invoke-virtual {v5, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    monitor-exit v4

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v4

    .line 77
    throw p0

    .line 78
    :cond_1
    return-void
.end method
