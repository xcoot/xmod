.class public abstract Lcom/android/server/am/BroadcastLoopers;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sLoopers:Landroid/util/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    .line 8
    return-void
.end method

.method public static addMyLooper()V
    .locals 5

    .line 1
    const-string v0, "Found previously unknown looper "

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 9
    sget-object v2, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 18
    const-string v3, "BroadcastLoopers"

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit v2

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_2
    return-void
.end method

.method public static waitForCondition(Ljava/io/PrintWriter;Ljava/util/function/BiConsumer;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 7
    move-result v1

    .line 8
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 10
    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_1

    .line 16
    sget-object v4, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    .line 18
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroid/os/Looper;

    .line 24
    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5}, Landroid/os/MessageQueue;->isIdle()Z

    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 34
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    invoke-interface {p1, v4, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const-wide/16 v0, 0x0

    .line 49
    move-wide v3, v0

    .line 50
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 53
    move-result-wide v5

    .line 54
    cmp-long p1, v5, v0

    .line 56
    if-lez p1, :cond_3

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 61
    move-result-wide v5

    .line 62
    const-wide/16 v7, 0x3e8

    .line 64
    add-long/2addr v7, v3

    .line 65
    cmp-long p1, v5, v7

    .line 67
    if-ltz p1, :cond_2

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    const-string v3, "Waiting for "

    .line 73
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 79
    move-result-wide v3

    .line 80
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, " loopers to drain..."

    .line 85
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 98
    move-wide v3, v5

    .line 99
    :cond_2
    const-wide/16 v5, 0x64

    .line 101
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    const-string p1, "Loopers drained!"

    .line 107
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 113
    return-void

    .line 114
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    throw p0
.end method
