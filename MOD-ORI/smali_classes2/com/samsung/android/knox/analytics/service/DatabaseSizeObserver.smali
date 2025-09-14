.class public final Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COMPRESSED_RESULT_KEY:Ljava/lang/String; = "performCompressedEventsTransaction"

.field public static final DB_CLEAN_EVENT_COUNT:Ljava/lang/String; = "rev"

.field public static final DB_CLEAN_EVENT_EVENT_NAME:Ljava/lang/String; = "databaseCleaned"

.field public static final DB_CLEAN_EVENT_FEATURE:Ljava/lang/String; = "KNOX_ANALYTICS"

.field public static final DB_CLEAN_EVENT_SCHEMA_VERSION:I = 0x1

.field public static final DB_CLEAN_EVENT_SIZE_PARAMETER:Ljava/lang/String; = "rsz"

.field public static final DB_MAX_MAX_SIZE_BYTES:I = 0x500000

.field public static final FACTOR_ALERT:D = 0.9

.field public static final FACTOR_CLEANUP:D = 0.85

.field public static final HT_NAME:Ljava/lang/String; = "KnoxAnalyticsDatabaseSizeObserver"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] DatabaseSizeObserver"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

.field public mDbAlertSizeInBytes:J

.field public mDbMaxSizeInBytes:J

.field public mDbTargetSizeInBytes:J

.field public mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field public mFailure:I

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mHasAlertedUploader:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "DatabaseSizeObserver()"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->calculateDbMaxDbSize()V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final calculateDbMaxDbSize()V
    .locals 6

    .line 1
    const-wide/32 v0, 0x500000

    .line 2
    .line 3
    .line 4
    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    .line 5
    .line 6
    long-to-double v2, v0

    .line 7
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    mul-double/2addr v2, v4

    .line 13
    double-to-int v2, v2

    .line 14
    int-to-long v2, v2

    .line 15
    iput-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    .line 16
    .line 17
    long-to-double v0, v0

    .line 18
    const-wide v2, 0x3feb333333333333L    # 0.85

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    mul-double/2addr v0, v2

    .line 24
    double-to-int v0, v0

    .line 25
    int-to-long v0, v0

    .line 26
    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    .line 27
    .line 28
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "calculateDbMaxDbSize(): dbMaxSize = "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " , dbAlertSize = "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ", mDbTargetSizeInBytes = "

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final createDatabaseCleanEvent(JJ)V
    .locals 4

    .line 2
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 4
    const-string v2, "createDatabaseCleanEvent(lastDeletedSize=%d, lastDeletedEventsCount=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const/4 v1, 0x1

    const-string v2, "databaseCleaned"

    const-string v3, "KNOX_ANALYTICS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    const-string/jumbo v1, "rsz"

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 7
    const-string/jumbo p1, "rev"

    invoke-virtual {v0, p1, p3, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void

    .line 9
    :cond_1
    :goto_0
    const-string p0, "Invalid deleted values"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->getDeletedSizeBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->getDeletedEventsCount()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->createDatabaseCleanEvent(JJ)V

    return-void
.end method

.method public final getFailureCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 2
    .line 3
    return p0
.end method

.method public final increaseFailureCount()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 6
    .line 7
    return-void
.end method

.method public final resetFailureCount()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 3
    .line 4
    return-void
.end method

.method public final start()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "start()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/os/HandlerThread;

    .line 10
    .line 11
    const-string v1, "KnoxAnalyticsDatabaseSizeObserver"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;-><init>(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Landroid/os/Handler;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final startCleanDatabase()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "startCleanDatabase()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iget-wide v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->callDatabaseClean(Landroid/content/Context;J)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final startCompression()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getEventCount(Landroid/content/Context;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-lez v0, :cond_5

    .line 13
    .line 14
    iget v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    if-le v0, v2, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->queryEventChunk(Landroid/content/Context;)Lcom/samsung/android/knox/analytics/model/EventList;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/model/EventList;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-gtz v2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v2, v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->performCompressedEventsTransaction(Landroid/content/Context;Lcom/samsung/android/knox/analytics/model/EventList;)Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const-string/jumbo v2, "performCompressedEventsTransaction"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iput v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 54
    .line 55
    sget-object p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    const-string/jumbo v0, "startCompression(): Data was compressed successfully."

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    const-string/jumbo v1, "startCompression(): Some error occurred when adding compressed data."

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->increaseFailureCount()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    :goto_1
    sget-object p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string/jumbo v0, "startCompression(): There is no data in Events table"

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    :goto_2
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    const-string/jumbo v2, "startCompression(): Database is full and there is no sufficient data to compress"

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mFailure:I

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->startCleanDatabase()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "stop()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 32
    .line 33
    .line 34
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 35
    .line 36
    return-void
.end method
