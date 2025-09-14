.class public final Lcom/android/server/SKLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mLogger:Ljava/util/logging/Logger;

.field public static final mSKLogger:Lcom/android/server/SKLogger;

.field public static mSKTxt:Lcom/android/server/SKLogger$SKHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/SKLogger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;

    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized getLogger()Lcom/android/server/SKLogger;
    .locals 7

    .line 1
    const-class v0, Lcom/android/server/SKLogger;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_1
    const-string v2, "SKLogger"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sput-object v2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    array-length v4, v2

    .line 28
    :goto_0
    if-ge v3, v4, :cond_0

    .line 29
    .line 30
    aget-object v5, v2, v3

    .line 31
    .line 32
    sget-object v6, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    .line 33
    .line 34
    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    :try_start_2
    new-instance v2, Lcom/android/server/SKLogger$SKHandler;

    .line 43
    .line 44
    const/16 v3, 0x5000

    .line 45
    .line 46
    int-to-long v3, v3

    .line 47
    invoke-direct {v2, v3, v4}, Lcom/android/server/SKLogger$SKHandler;-><init>(J)V

    .line 48
    .line 49
    .line 50
    sput-object v2, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    :try_start_3
    new-instance v2, Lcom/android/server/SKLogger$SKFormatter;

    .line 53
    .line 54
    invoke-direct {v2}, Lcom/android/server/SKLogger$SKFormatter;-><init>()V

    .line 55
    .line 56
    .line 57
    sget-object v3, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    .line 63
    .line 64
    sget-object v3, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    monitor-exit v0

    .line 71
    return-object v1

    .line 72
    :catch_1
    monitor-exit v0

    .line 73
    return-object v1

    .line 74
    :cond_1
    :goto_1
    :try_start_4
    sget-object v1, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-object v1

    .line 78
    :goto_2
    monitor-exit v0

    .line 79
    throw v1
.end method

.method public static logAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3
    const-string v1, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    const-string v1, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    sget-object p1, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;

    monitor-enter p1

    .line 8
    :try_start_0
    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 9
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static logAll(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 15
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 17
    const-string v1, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    const-string v1, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string v1, " ServiceKeeper "

    .line 20
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "\n"

    .line 22
    invoke-static {v0, p0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 24
    const-string v0, ""

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_1

    .line 25
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 28
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 32
    sget-object p1, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;

    monitor-enter p1

    .line 33
    :try_start_0
    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 34
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
