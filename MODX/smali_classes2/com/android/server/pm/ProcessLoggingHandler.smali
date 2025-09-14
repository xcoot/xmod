.class public final Lcom/android/server/pm/ProcessLoggingHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mLoggingInfo:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    new-instance v0, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    .line 25
    .line 26
    return-void
.end method

.method public static logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "startTimestamp"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-string/jumbo v2, "processName"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string/jumbo v2, "uid"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const-string/jumbo v4, "seinfo"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    const-string/jumbo v4, "pid"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    move-object v8, p1

    .line 49
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const p1, 0x33455

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p1

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    const-string v2, "%02x"

    .line 13
    .line 14
    aget-byte v3, p1, v1

    .line 15
    .line 16
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string p1, "Failed to count APK hash"

    .line 36
    .line 37
    :goto_1
    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_3

    .line 50
    :cond_2
    iput-object p1, p0, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    .line 56
    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    check-cast v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/os/Bundle;

    .line 77
    .line 78
    invoke-static {v0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    return-void

    .line 83
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p1
.end method
