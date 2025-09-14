.class public final Lcom/android/server/usage/BroadcastResponseStatsLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MAX_LOG_SIZE:I


# instance fields
.field public final mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

.field public final mLock:Ljava/lang/Object;

.field public final mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x14

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x32

    .line 11
    .line 12
    :goto_0
    sput v0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->MAX_LOG_SIZE:I

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, v3}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda1;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sget v3, Lcom/android/server/usage/BroadcastResponseStatsLogger;->MAX_LOG_SIZE:I

    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-direct {v1, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda0;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda1;

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    invoke-direct {v2, v4}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda1;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 50
    .line 51
    return-void
.end method

.method public static getNotificationEventLog(IIJLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2, p3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    const/4 p3, 0x1

    .line 8
    if-eq p0, p3, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x2

    .line 11
    if-eq p0, p3, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "cancelled"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string/jumbo p0, "updated"

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const-string/jumbo p0, "posted"

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p2, p0, p4, p1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string/jumbo p1, "notification:%s; event=<%s>, pkg=%s, usr=%d"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method


# virtual methods
.method public final dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Broadcast events (most recent first):"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, [Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v2, :cond_1

    .line 24
    .line 25
    aget-object v3, v1, v2

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 44
    .line 45
    .line 46
    const-string v1, "Notification events (most recent first):"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, [Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    .line 61
    .line 62
    array-length v1, p0

    .line 63
    add-int/lit8 v1, v1, -0x1

    .line 64
    .line 65
    :goto_2
    if-ltz v1, :cond_3

    .line 66
    .line 67
    aget-object v2, p0, v1

    .line 68
    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 83
    .line 84
    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method
