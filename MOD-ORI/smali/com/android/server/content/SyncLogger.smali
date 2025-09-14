.class public Lcom/android/server/content/SyncLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/content/SyncLogger;


# direct methods
.method public static declared-synchronized getInstance()Lcom/android/server/content/SyncLogger;
    .locals 4

    .line 1
    const-class v0, Lcom/android/server/content/SyncLogger;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    const-string/jumbo v1, "debug.synclog"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string v2, "1"

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const-string v2, "SyncLogger"

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_0
    const-string v2, "0"

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    new-instance v1, Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance v1, Lcom/android/server/content/SyncLogger;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    .line 61
    .line 62
    :cond_2
    :goto_1
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-object v1

    .line 66
    :goto_2
    monitor-exit v0

    .line 67
    throw v1
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public purgeOldLogs()V
    .locals 0

    .line 1
    return-void
.end method
