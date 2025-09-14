.class public final Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INTERVAL_LENGTH:[J

.field public static final sConfigStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

.field public static final sDateFormat:Ljava/text/SimpleDateFormat;

.field public static final sEventStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

.field public static final sLoggingFormat:Ljava/text/SimpleDateFormat;

.field public static final sUsageStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;


# instance fields
.field public final mBufferLogs:Ljava/util/List;

.field public final mCachedEarlyEvents:Landroid/util/SparseArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field public final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field public final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field public final mDateFormat:Ljava/text/SimpleDateFormat;

.field public mDumpInitEndTime:J

.field public mDumpInitLastTimeSaved:J

.field public mLastBackgroundedPackage:Ljava/lang/String;

.field public final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field public final mLogPrefix:Ljava/lang/String;

.field public mRealTimeSnapshot:J

.field public mStatsChanged:Z

.field public mSystemTimeSnapshot:J

.field public final mUserId:I

.field public final track:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [J

    .line 23
    .line 24
    fill-array-data v0, :array_0

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    .line 28
    .line 29
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>(I)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    .line 36
    .line 37
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>(I)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    .line 44
    .line 45
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-direct {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>(I)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UserUsageStatsService$1;

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 30
    .line 31
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    new-instance p1, Lcom/android/server/usage/UnixCalendar;

    .line 41
    .line 42
    invoke-direct {p1}, Lcom/android/server/usage/UnixCalendar;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 46
    .line 47
    new-instance p1, Lcom/android/server/usage/UsageStatsDatabase;

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    invoke-direct {p1, p3, v0}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;I)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 54
    .line 55
    const/4 p1, 0x4

    .line 56
    new-array p1, p1, [Lcom/android/server/usage/IntervalStats;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 59
    .line 60
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p3, "User["

    .line 65
    .line 66
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p3, "] "

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 86
    .line 87
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 90
    .line 91
    .line 92
    move-result-wide p1

    .line 93
    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide p1

    .line 99
    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    .line 100
    .line 101
    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, "UNKNOWN_TYPE_"

    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    const-string p0, "APP_COMPONENT_USED"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_2
    const-string p0, "LOCUS_ID_SET"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_3
    const-string p0, "USER_STOPPED"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_4
    const-string p0, "USER_UNLOCKED"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_5
    const-string p0, "DEVICE_STARTUP"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_6
    const-string p0, "DEVICE_SHUTDOWN"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_7
    const-string p0, "ACTIVITY_STOPPED"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_8
    const-string p0, "ROLLOVER_FOREGROUND_SERVICE"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_9
    const-string p0, "CONTINUING_FOREGROUND_SERVICE"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_a
    const-string p0, "FOREGROUND_SERVICE_STOP"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_b
    const-string p0, "FOREGROUND_SERVICE_START"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_c
    const-string p0, "KEYGUARD_HIDDEN"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_d
    const-string p0, "KEYGUARD_SHOWN"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_e
    const-string p0, "SCREEN_NON_INTERACTIVE"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_f
    const-string p0, "SCREEN_INTERACTIVE"

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_10
    const-string p0, "SLICE_PINNED"

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_11
    const-string p0, "SLICE_PINNED_PRIV"

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_12
    const-string p0, "NOTIFICATION_INTERRUPTION"

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_13
    const-string p0, "STANDBY_BUCKET_CHANGED"

    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_14
    const-string p0, "NOTIFICATION_SEEN"

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_15
    const-string p0, "CHOOSER_ACTION"

    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_16
    const-string p0, "SHORTCUT_INVOCATION"

    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_17
    const-string p0, "USER_INTERACTION"

    .line 78
    .line 79
    return-object p0

    .line 80
    :pswitch_18
    const-string p0, "SYSTEM_INTERACTION"

    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_19
    const-string p0, "CONFIGURATION_CHANGE"

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_1a
    const-string p0, "CONTINUE_PREVIOUS_DAY"

    .line 87
    .line 88
    return-object p0

    .line 89
    :pswitch_1b
    const-string p0, "END_OF_DAY"

    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_1c
    const-string p0, "ACTIVITY_PAUSED"

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_1d
    const-string p0, "ACTIVITY_RESUMED"

    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_1e
    const-string p0, "NONE"

    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static formatDateTime(JZ)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "\""

    .line 6
    .line 7
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static formatElapsedTime(JZ)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "\""

    .line 6
    .line 7
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0x3e8

    .line 11
    .line 12
    div-long/2addr p0, v1

    .line 13
    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static intervalToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const-string p0, "?"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string/jumbo p0, "yearly"

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const-string/jumbo p0, "monthly"

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    const-string/jumbo p0, "weekly"

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const-string p0, "daily"

    .line 28
    .line 29
    return-object p0
.end method

.method public static printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V
    .locals 2

    .line 1
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 2
    .line 3
    invoke-static {v0, v1, p2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string/jumbo v0, "time"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 11
    .line 12
    .line 13
    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 14
    .line 15
    invoke-static {p2}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string/jumbo v0, "type"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 23
    .line 24
    .line 25
    const-string/jumbo p2, "package"

    .line 26
    .line 27
    .line 28
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 31
    .line 32
    .line 33
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    const-string v0, "class"

    .line 38
    .line 39
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const-string v0, "config"

    .line 47
    .line 48
    invoke-static {p2}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    const-string/jumbo v0, "shortcutId"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 63
    .line 64
    .line 65
    :cond_2
    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 66
    .line 67
    const/16 v0, 0xb

    .line 68
    .line 69
    if-ne p2, v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getAppStandbyBucket()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const-string/jumbo v0, "standbyBucket"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getStandbyReason()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    invoke-static {p2}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const-string/jumbo v0, "reason"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const/4 v0, 0x1

    .line 101
    if-eq p2, v0, :cond_4

    .line 102
    .line 103
    const/4 v0, 0x2

    .line 104
    if-eq p2, v0, :cond_4

    .line 105
    .line 106
    const/16 v0, 0x17

    .line 107
    .line 108
    if-ne p2, v0, :cond_5

    .line 109
    .line 110
    :cond_4
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    const-string v0, "instanceId"

    .line 119
    .line 120
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    if-eqz p2, :cond_6

    .line 128
    .line 129
    const-string/jumbo p2, "taskRootPackage"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 137
    .line 138
    .line 139
    :cond_6
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-eqz p2, :cond_7

    .line 144
    .line 145
    const-string/jumbo p2, "taskRootClass"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 153
    .line 154
    .line 155
    :cond_7
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 156
    .line 157
    if-eqz p2, :cond_8

    .line 158
    .line 159
    const-string v0, "channelId"

    .line 160
    .line 161
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 162
    .line 163
    .line 164
    :cond_8
    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 165
    .line 166
    const/4 v0, 0x7

    .line 167
    if-ne p2, v0, :cond_9

    .line 168
    .line 169
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 170
    .line 171
    if-eqz p2, :cond_9

    .line 172
    .line 173
    invoke-virtual {p2}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_9
    const-string p2, "flags"

    .line 181
    .line 182
    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 183
    .line 184
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public static printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V
    .locals 5

    .line 1
    iget v0, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 8
    .line 9
    cmp-long v0, v3, v1

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, ": "

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p1, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo p1, "x for "

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 33
    .line 34
    invoke-static {v3, v4, p3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    .line 42
    .line 43
    cmp-long p1, v3, v1

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    const-string p1, " (now running, started at "

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-wide p1, p2, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    .line 53
    .line 54
    invoke-static {p1, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    const-string p1, ")"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public static validRange(JJJ)Z
    .locals 0

    .line 1
    cmp-long p0, p2, p0

    .line 2
    .line 3
    if-gtz p0, :cond_0

    .line 4
    .line 5
    cmp-long p0, p2, p4

    .line 6
    .line 7
    if-gez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method


# virtual methods
.method public final addBufferLog(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    new-instance v4, Ljava/util/Date;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    .line 42
    .line 43
    check-cast p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/16 v1, 0x14

    .line 50
    .line 51
    if-le p1, v1, :cond_0

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    .line 54
    .line 55
    check-cast p0, Ljava/util/ArrayList;

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public final checkAndGetTimeLocked()J
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v7

    .line 7
    sget-boolean v1, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-wide v7

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v9

    .line 16
    iget-wide v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 17
    .line 18
    sub-long v1, v9, v1

    .line 19
    .line 20
    iget-wide v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    .line 21
    .line 22
    add-long v11, v1, v3

    .line 23
    .line 24
    sub-long v1, v7, v11

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    const-wide/16 v5, 0x7d0

    .line 31
    .line 32
    cmp-long v3, v3, v5

    .line 33
    .line 34
    if-lez v3, :cond_5

    .line 35
    .line 36
    const-string v3, "UsageStatsService"

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v5, "Time changed in by "

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-wide/16 v5, 0x3e8

    .line 54
    .line 55
    div-long v5, v1, v5

    .line 56
    .line 57
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v5, " seconds"

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->clear()V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 81
    .line 82
    iget-object v4, v3, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v4

    .line 85
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v6, "Time changed by "

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v2, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 96
    .line 97
    .line 98
    const-string v6, "."

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v6, v3, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 104
    .line 105
    array-length v13, v6

    .line 106
    move-wide/from16 v16, v9

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    const/4 v14, 0x0

    .line 110
    const/4 v15, 0x0

    .line 111
    :goto_0
    if-ge v15, v13, :cond_4

    .line 112
    .line 113
    aget-object v10, v6, v15

    .line 114
    .line 115
    move-object/from16 v18, v6

    .line 116
    .line 117
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    move/from16 v19, v13

    .line 122
    .line 123
    const/4 v13, 0x0

    .line 124
    :goto_1
    if-ge v13, v6, :cond_3

    .line 125
    .line 126
    invoke-virtual {v10, v13}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v20

    .line 130
    check-cast v20, Landroid/util/AtomicFile;

    .line 131
    .line 132
    invoke-virtual {v10, v13}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 133
    .line 134
    .line 135
    move-result-wide v21

    .line 136
    add-long v21, v21, v1

    .line 137
    .line 138
    const-wide/16 v23, 0x0

    .line 139
    .line 140
    cmp-long v23, v21, v23

    .line 141
    .line 142
    if-gez v23, :cond_1

    .line 143
    .line 144
    add-int/lit8 v14, v14, 0x1

    .line 145
    .line 146
    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    move/from16 v23, v6

    .line 150
    .line 151
    move-wide/from16 v24, v11

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    goto/16 :goto_3

    .line 156
    .line 157
    :cond_1
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 158
    .line 159
    .line 160
    move-result-object v23

    .line 161
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    :catch_0
    move/from16 v23, v6

    .line 165
    .line 166
    :try_start_2
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 171
    .line 172
    .line 173
    move-result-object v21

    .line 174
    move/from16 v22, v14

    .line 175
    .line 176
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    move-wide/from16 v24, v11

    .line 181
    .line 182
    const-string v11, "-c"

    .line 183
    .line 184
    invoke-virtual {v14, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    if-eqz v11, :cond_2

    .line 189
    .line 190
    new-instance v11, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v6, "-c"

    .line 199
    .line 200
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    :cond_2
    new-instance v11, Ljava/io/File;

    .line 208
    .line 209
    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-direct {v11, v12, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    add-int/lit8 v9, v9, 0x1

    .line 221
    .line 222
    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {v6, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 227
    .line 228
    .line 229
    move/from16 v14, v22

    .line 230
    .line 231
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 232
    .line 233
    move/from16 v6, v23

    .line 234
    .line 235
    move-wide/from16 v11, v24

    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_3
    move-wide/from16 v24, v11

    .line 239
    .line 240
    move/from16 v22, v14

    .line 241
    .line 242
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->clear()V

    .line 243
    .line 244
    .line 245
    add-int/lit8 v15, v15, 0x1

    .line 246
    .line 247
    move-object/from16 v6, v18

    .line 248
    .line 249
    move/from16 v13, v19

    .line 250
    .line 251
    move/from16 v14, v22

    .line 252
    .line 253
    move-wide/from16 v11, v24

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_4
    move-wide/from16 v24, v11

    .line 258
    .line 259
    const-string v6, " files deleted: "

    .line 260
    .line 261
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v6, " files moved: "

    .line 268
    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v6, "UsageStatsDatabase"

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 285
    .line 286
    .line 287
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    invoke-virtual {v0, v7, v8}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 289
    .line 290
    .line 291
    const-string v3, "UsageStatsService"

    .line 292
    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string/jumbo v5, "onTimeChanged_ diff="

    .line 296
    .line 297
    .line 298
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    .line 312
    .line 313
    new-instance v10, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;

    .line 314
    .line 315
    move-object v1, v10

    .line 316
    move-object/from16 v2, p0

    .line 317
    .line 318
    move-wide v3, v7

    .line 319
    move-wide/from16 v5, v24

    .line 320
    .line 321
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJ)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 325
    .line 326
    .line 327
    move-wide/from16 v1, v16

    .line 328
    .line 329
    iput-wide v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 330
    .line 331
    iput-wide v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    .line 332
    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v4, "Time changed. actualSystemTime:"

    .line 344
    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v4, " expectedSystemTime:"

    .line 352
    .line 353
    const-string v5, " actualRealtime:"

    .line 354
    .line 355
    move-wide/from16 v9, v24

    .line 356
    .line 357
    invoke-static {v3, v4, v9, v10, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->addBufferLog(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto :goto_4

    .line 371
    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 372
    throw v0

    .line 373
    :cond_5
    :goto_4
    return-wide v7
.end method

.method public final checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aget-object v2, v2, v3

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, -0x1

    .line 16
    move v6, v3

    .line 17
    :goto_0
    add-int/lit8 v7, v4, -0x1

    .line 18
    .line 19
    if-ge v6, v7, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    check-cast v7, Landroid/util/AtomicFile;

    .line 26
    .line 27
    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const-string v8, "-c"

    .line 36
    .line 37
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    move v5, v6

    .line 44
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    if-ne v5, v7, :cond_2

    .line 53
    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_2
    move v4, v5

    .line 58
    :goto_1
    if-ge v4, v7, :cond_3

    .line 59
    .line 60
    :try_start_1
    new-instance v10, Lcom/android/server/usage/IntervalStats;

    .line 61
    .line 62
    invoke-direct {v10}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Landroid/util/AtomicFile;

    .line 70
    .line 71
    invoke-virtual {v0, v6, v10, v3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    .line 72
    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    move-object v8, p0

    .line 78
    move-object v9, p1

    .line 79
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p0

    .line 86
    :try_start_2
    const-string p1, "UsageStatsDatabase"

    .line 87
    .line 88
    const-string v0, "Failed to check-in"

    .line 89
    .line 90
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    monitor-exit v1

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    :goto_2
    if-ge v5, v7, :cond_5

    .line 96
    .line 97
    invoke-virtual {v2, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Landroid/util/AtomicFile;

    .line 102
    .line 103
    new-instance p1, Ljava/io/File;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v3, "-c"

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_4

    .line 142
    .line 143
    const-string p1, "UsageStatsDatabase"

    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v2, "Failed to mark file "

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p0, " as checked-in"

    .line 167
    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    monitor-exit v1

    .line 179
    goto :goto_3

    .line 180
    :cond_4
    new-instance p0, Landroid/util/AtomicFile;

    .line 181
    .line 182
    invoke-direct {p0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v5, p0}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    add-int/lit8 v5, v5, 0x1

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_5
    monitor-exit v1

    .line 192
    :goto_3
    return-void

    .line 193
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    throw p0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    xor-int/lit8 v11, v10, 0x1

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v12

    .line 13
    const/4 v1, -0x1

    .line 14
    int-to-long v1, v1

    .line 15
    const-wide/32 v3, 0x5265c00

    .line 16
    .line 17
    .line 18
    mul-long/2addr v1, v3

    .line 19
    add-long v14, v1, v12

    .line 20
    .line 21
    new-instance v7, Lcom/android/server/usage/UserUsageStatsService$6;

    .line 22
    .line 23
    move-object v1, v7

    .line 24
    move-wide v2, v14

    .line 25
    move-wide v4, v12

    .line 26
    move-object/from16 v6, p2

    .line 27
    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(JJLjava/util/List;)V

    .line 29
    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    move-object/from16 v1, p0

    .line 34
    .line 35
    move-wide v3, v14

    .line 36
    move-wide v5, v12

    .line 37
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v1, "Last 24 hour events ("

    .line 42
    .line 43
    invoke-virtual {v9, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eqz v11, :cond_0

    .line 47
    .line 48
    const-string/jumbo v8, "timeRange"

    .line 49
    .line 50
    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "\""

    .line 54
    .line 55
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const v16, 0x20015

    .line 61
    .line 62
    .line 63
    move-wide v2, v14

    .line 64
    move-wide v4, v12

    .line 65
    move-object v12, v6

    .line 66
    move/from16 v6, v16

    .line 67
    .line 68
    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, "\""

    .line 76
    .line 77
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v9, v8, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const-string v1, "beginTime"

    .line 89
    .line 90
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v9, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 95
    .line 96
    .line 97
    const-string v1, "endTime"

    .line 98
    .line 99
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v9, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 104
    .line 105
    .line 106
    :goto_0
    const-string v1, ")"

    .line 107
    .line 108
    invoke-virtual {v9, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    if-eqz v7, :cond_2

    .line 112
    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 114
    .line 115
    .line 116
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_1

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    .line 131
    .line 132
    invoke-static {v9, v2, v11}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 137
    .line 138
    .line 139
    :cond_2
    const-string v1, "mDumpInitLastTimeSaved"

    .line 140
    .line 141
    iget-wide v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitLastTimeSaved:J

    .line 142
    .line 143
    invoke-static {v2, v3, v11}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v9, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 148
    .line 149
    .line 150
    const-string v1, "mDumpInitEndTime"

    .line 151
    .line 152
    iget-wide v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitEndTime:J

    .line 153
    .line 154
    invoke-static {v2, v3, v11}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v9, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 159
    .line 160
    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 162
    .line 163
    .line 164
    const-string v1, " UsageStats RollOver history :"

    .line 165
    .line 166
    invoke-virtual {v9, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    .line 170
    .line 171
    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mBufferLogs:Ljava/util/List;

    .line 173
    .line 174
    check-cast v2, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_3

    .line 185
    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Ljava/lang/String;

    .line 191
    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v5, "    "

    .line 198
    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v9, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    goto :goto_4

    .line 215
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    const/4 v1, 0x0

    .line 217
    move v7, v1

    .line 218
    :goto_3
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 219
    .line 220
    array-length v1, v1

    .line 221
    if-ge v7, v1, :cond_4

    .line 222
    .line 223
    const-string v1, "In-memory "

    .line 224
    .line 225
    invoke-virtual {v9, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v7}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v9, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const-string v1, " stats"

    .line 236
    .line 237
    invoke-virtual {v9, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 241
    .line 242
    aget-object v3, v1, v7

    .line 243
    .line 244
    const/4 v5, 0x1

    .line 245
    move-object/from16 v1, p0

    .line 246
    .line 247
    move-object/from16 v2, p1

    .line 248
    .line 249
    move v4, v11

    .line 250
    move-object/from16 v6, p2

    .line 251
    .line 252
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    .line 253
    .line 254
    .line 255
    add-int/lit8 v7, v7, 0x1

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_5

    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 265
    .line 266
    invoke-virtual {v0, v9, v10}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 267
    .line 268
    .line 269
    :cond_5
    return-void

    .line 270
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    throw v0
.end method

.method public final dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    if-eqz p2, :cond_a

    .line 9
    .line 10
    array-length v6, p2

    .line 11
    if-nez v6, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    :try_start_0
    aget-object v6, p2, v5

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    sparse-switch v7, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    :goto_0
    move v6, v2

    .line 32
    goto :goto_1

    .line 33
    :sswitch_0
    const-string/jumbo v7, "monthly"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v6, v0

    .line 44
    goto :goto_1

    .line 45
    :sswitch_1
    const-string v7, "daily"

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v6, v1

    .line 55
    goto :goto_1

    .line 56
    :sswitch_2
    const-string/jumbo v7, "yearly"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move v6, v3

    .line 67
    goto :goto_1

    .line 68
    :sswitch_3
    const-string/jumbo v7, "weekly"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    move v6, v5

    .line 79
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 80
    .line 81
    .line 82
    move v0, v2

    .line 83
    goto :goto_2

    .line 84
    :pswitch_0
    move v0, v1

    .line 85
    goto :goto_2

    .line 86
    :pswitch_1
    move v0, v5

    .line 87
    goto :goto_2

    .line 88
    :pswitch_2
    move v0, v3

    .line 89
    :goto_2
    :pswitch_3
    if-ne v0, v2, :cond_5

    .line 90
    .line 91
    :try_start_1
    aget-object v0, p2, v5

    .line 92
    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :cond_5
    if-ltz v0, :cond_9

    .line 102
    .line 103
    iget-object v1, v4, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 104
    .line 105
    array-length v1, v1

    .line 106
    if-lt v0, v1, :cond_6

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    array-length v1, p2

    .line 110
    if-ne v1, v3, :cond_7

    .line 111
    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 113
    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_7
    :try_start_2
    aget-object v1, p2, v3

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 123
    .line 124
    .line 125
    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-nez v0, :cond_8

    .line 131
    .line 132
    const-string/jumbo p0, "the specified filename does not exist."

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_8
    aget-object p2, p2, v3

    .line 140
    .line 141
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 146
    .line 147
    .line 148
    move-result-wide v1

    .line 149
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    .line 150
    .line 151
    .line 152
    goto :goto_6

    .line 153
    :catch_0
    const-string p0, "invalid filename specified."

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_9
    :goto_3
    const-string/jumbo p0, "the specified interval does not exist."

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :catch_1
    const-string p0, "invalid interval specified."

    .line 167
    .line 168
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_a
    :goto_4
    iget-object p2, v4, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 173
    .line 174
    array-length p2, p2

    .line 175
    :goto_5
    if-ge v5, p2, :cond_b

    .line 176
    .line 177
    invoke-static {v5}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "interval="

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p1, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 197
    .line 198
    .line 199
    add-int/2addr v5, v3

    .line 200
    goto :goto_5

    .line 201
    :cond_b
    :goto_6
    return-void

    .line 202
    nop

    .line 203
    :sswitch_data_0
    .sparse-switch
        -0x2f307f7f -> :sswitch_3
        -0x2bc88576 -> :sswitch_2
        0x5aede19 -> :sswitch_1
        0x49b5900d -> :sswitch_0
    .end sparse-switch

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "file="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 4
    .line 5
    aget-object v1, v1, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    invoke-virtual {v0, p2, v4, v5}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {p0, p1, v6, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final init(JLjava/util/HashMap;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p3}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 16
    .line 17
    iget-object v0, p4, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p4, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v2, :cond_2

    .line 26
    .line 27
    aget-object v5, v1, v4

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string p2, "Failed to create directory "

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto/16 :goto_8

    .line 70
    .line 71
    :cond_2
    invoke-virtual {p4}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    .line 72
    .line 73
    .line 74
    iget-boolean v1, p4, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p4, p1, p2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->prune(JZ)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {p4}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 83
    .line 84
    .line 85
    :goto_1
    iget-object p4, p4, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 86
    .line 87
    array-length v1, p4

    .line 88
    move v2, v3

    .line 89
    :goto_2
    if-ge v2, v1, :cond_7

    .line 90
    .line 91
    aget-object v4, p4, v2

    .line 92
    .line 93
    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-gez v5, :cond_4

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_4
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    move v7, v5

    .line 105
    :goto_3
    if-ge v7, v6, :cond_5

    .line 106
    .line 107
    invoke-virtual {v4, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    check-cast v8, Landroid/util/AtomicFile;

    .line 112
    .line 113
    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v7, v7, 0x1

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_5
    :goto_4
    if-ge v5, v6, :cond_6

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 132
    .line 133
    iget-boolean v0, p4, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 134
    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    invoke-virtual {p4, p3}, Lcom/android/server/usage/UsageStatsDatabase;->prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V

    .line 138
    .line 139
    .line 140
    :cond_8
    move p3, v3

    .line 141
    move p4, p3

    .line 142
    :goto_6
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 143
    .line 144
    array-length v1, v0

    .line 145
    if-ge p3, v1, :cond_a

    .line 146
    .line 147
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 148
    .line 149
    invoke-virtual {v1, p3}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    aput-object v1, v0, p3

    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 156
    .line 157
    aget-object v0, v0, p3

    .line 158
    .line 159
    if-nez v0, :cond_9

    .line 160
    .line 161
    add-int/lit8 p4, p4, 0x1

    .line 162
    .line 163
    :cond_9
    add-int/lit8 p3, p3, 0x1

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_a
    if-lez p4, :cond_c

    .line 167
    .line 168
    array-length p3, v0

    .line 169
    if-eq p4, p3, :cond_b

    .line 170
    .line 171
    const-string p3, "UsageStatsService"

    .line 172
    .line 173
    new-instance p4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 179
    .line 180
    const-string v1, "Some stats have no latest available"

    .line 181
    .line 182
    invoke-static {p4, v0, v1, p3}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 186
    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 190
    .line 191
    .line 192
    :goto_7
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 193
    .line 194
    aget-object p1, p1, v3

    .line 195
    .line 196
    if-eqz p1, :cond_d

    .line 197
    .line 198
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    .line 199
    .line 200
    iget-wide p3, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 201
    .line 202
    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 203
    .line 204
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 205
    .line 206
    .line 207
    move-result-wide p3

    .line 208
    const/16 v0, 0x1a

    .line 209
    .line 210
    invoke-direct {p2, v0, p3, p4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 211
    .line 212
    .line 213
    iget-wide p3, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 214
    .line 215
    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitLastTimeSaved:J

    .line 216
    .line 217
    iget-wide p3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 218
    .line 219
    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitEndTime:J

    .line 220
    .line 221
    const-string p3, "UsageStatsService"

    .line 222
    .line 223
    new-instance p4, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v0, ", "

    .line 245
    .line 246
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-wide v0, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 250
    .line 251
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v0, ", "

    .line 259
    .line 260
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 264
    .line 265
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p4

    .line 276
    invoke-static {p3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    const-string p3, "android"

    .line 280
    .line 281
    iput-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {p1, p2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 284
    .line 285
    .line 286
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    .line 287
    .line 288
    const/16 p3, 0x1b

    .line 289
    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 291
    .line 292
    .line 293
    move-result-wide v0

    .line 294
    invoke-direct {p2, p3, v0, v1}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 295
    .line 296
    .line 297
    const-string p3, "android"

    .line 298
    .line 299
    iput-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {p1, p2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 302
    .line 303
    .line 304
    :cond_d
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 305
    .line 306
    iget-boolean p1, p1, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    .line 307
    .line 308
    if-eqz p1, :cond_e

    .line 309
    .line 310
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 311
    .line 312
    check-cast p1, Lcom/android/server/usage/UsageStatsService;

    .line 313
    .line 314
    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 315
    .line 316
    iget p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 317
    .line 318
    invoke-interface {p1, p0}, Lcom/android/server/usage/AppStandbyInternal;->initializeDefaultsForSystemApps(I)V

    .line 319
    .line 320
    .line 321
    :cond_e
    return-void

    .line 322
    :goto_8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    throw p0
.end method

.method public final loadActiveStats(J)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 9
    .line 10
    invoke-virtual {v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-wide v4, v3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 17
    .line 18
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    .line 19
    .line 20
    aget-wide v6, v6, v1

    .line 21
    .line 22
    add-long/2addr v4, v6

    .line 23
    cmp-long v4, p1, v4

    .line 24
    .line 25
    if-gez v4, :cond_0

    .line 26
    .line 27
    aput-object v3, v2, v1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    .line 31
    .line 32
    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 33
    .line 34
    .line 35
    aput-object v3, v2, v1

    .line 36
    .line 37
    aget-object v2, v2, v1

    .line 38
    .line 39
    iput-wide p1, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 40
    .line 41
    const-wide/16 v3, 0x1

    .line 42
    .line 43
    add-long/2addr v3, p1

    .line 44
    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 45
    .line 46
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 55
    .line 56
    check-cast p0, Lcom/android/server/usage/UsageStatsService;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 59
    .line 60
    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->postOneTimeCheckIdleStates()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final notifyStatsChanged()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/usage/UsageStatsService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Lcom/android/server/usage/UsageStatsService$H;

    .line 13
    .line 14
    const-wide/32 v1, 0x124f80

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onPackageRemoved(JLjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 18
    .line 19
    invoke-virtual {v2, v1, p3}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "UsageStatsService"

    .line 26
    .line 27
    const-string/jumbo v1, "onPackageRemoved "

    .line 28
    .line 29
    .line 30
    invoke-static {v1, p3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 39
    .line 40
    const-string v0, "Unable to update package mappings on disk after removing token "

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 46
    .line 47
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(JLjava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :catch_0
    :try_start_2
    const-string p0, "UsageStatsDatabase"

    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_1
    monitor-exit v1

    .line 75
    return p1

    .line 76
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p0
.end method

.method public final persistActiveStats()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "Flushing usage stats to disk"

    .line 15
    .line 16
    const-string v4, "UsageStatsService"

    .line 17
    .line 18
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget v1, v0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    const/4 v3, 0x5

    .line 24
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    if-ge v1, v3, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v1, v6

    .line 31
    :goto_0
    :try_start_1
    array-length v3, v5

    .line 32
    if-ge v1, v3, :cond_1

    .line 33
    .line 34
    aget-object v3, v5, v1

    .line 35
    .line 36
    iget-object v7, v0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 37
    .line 38
    invoke-virtual {v3, v7}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V

    .line 45
    .line 46
    .line 47
    move v1, v6

    .line 48
    :goto_2
    array-length v3, v5

    .line 49
    if-ge v1, v3, :cond_2

    .line 50
    .line 51
    aget-object v3, v5, v1

    .line 52
    .line 53
    invoke-virtual {v0, v1, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto :goto_3

    .line 61
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "Failed to persist active stats"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_4
    return-void
.end method

.method public final printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v4, "\""

    .line 12
    .line 13
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object/from16 v5, p0

    .line 17
    .line 18
    iget-object v5, v5, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-wide v6, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 21
    .line 22
    iget-wide v8, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 23
    .line 24
    const v10, 0x20015

    .line 25
    .line 26
    .line 27
    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string/jumbo v4, "timeRange"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-wide v3, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 49
    .line 50
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "beginTime"

    .line 55
    .line 56
    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 57
    .line 58
    .line 59
    iget-wide v3, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 60
    .line 61
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string v4, "endTime"

    .line 66
    .line 67
    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 74
    .line 75
    .line 76
    const-string/jumbo v3, "packages"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 83
    .line 84
    .line 85
    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    const/4 v6, 0x0

    .line 92
    :goto_1
    const-string/jumbo v7, "package"

    .line 93
    .line 94
    .line 95
    if-ge v6, v4, :cond_2

    .line 96
    .line 97
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Landroid/app/usage/UsageStats;

    .line 102
    .line 103
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-nez v9, :cond_1

    .line 108
    .line 109
    iget-object v9, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 110
    .line 111
    move-object/from16 v10, p5

    .line 112
    .line 113
    check-cast v10, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-nez v9, :cond_1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    iget-object v9, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, v7, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 125
    .line 126
    .line 127
    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 128
    .line 129
    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    const-string/jumbo v9, "totalTimeUsed"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 137
    .line 138
    .line 139
    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 140
    .line 141
    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    const-string v9, "lastTimeUsed"

    .line 146
    .line 147
    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 148
    .line 149
    .line 150
    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 151
    .line 152
    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    const-string/jumbo v9, "totalTimeVisible"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 160
    .line 161
    .line 162
    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 163
    .line 164
    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    const-string v9, "lastTimeVisible"

    .line 169
    .line 170
    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 171
    .line 172
    .line 173
    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 174
    .line 175
    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    const-string v9, "lastTimeComponentUsed"

    .line 180
    .line 181
    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 182
    .line 183
    .line 184
    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 185
    .line 186
    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    const-string/jumbo v9, "totalTimeFS"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 194
    .line 195
    .line 196
    iget-wide v9, v8, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 197
    .line 198
    invoke-static {v9, v10, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    const-string v9, "lastTimeFS"

    .line 203
    .line 204
    invoke-virtual {v0, v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 205
    .line 206
    .line 207
    iget v7, v8, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 208
    .line 209
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    const-string v8, "appLaunchCount"

    .line 214
    .line 215
    invoke-virtual {v0, v8, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 216
    .line 217
    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 219
    .line 220
    .line 221
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 226
    .line 227
    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 229
    .line 230
    .line 231
    const-string v4, "ChooserCounts"

    .line 232
    .line 233
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-eqz v6, :cond_7

    .line 252
    .line 253
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    check-cast v6, Landroid/app/usage/UsageStats;

    .line 258
    .line 259
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-nez v8, :cond_3

    .line 264
    .line 265
    iget-object v8, v6, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 266
    .line 267
    move-object/from16 v9, p5

    .line 268
    .line 269
    check-cast v9, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    if-nez v8, :cond_3

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_3
    iget-object v8, v6, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 281
    .line 282
    .line 283
    iget-object v8, v6, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 284
    .line 285
    if-eqz v8, :cond_6

    .line 286
    .line 287
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    const/4 v9, 0x0

    .line 292
    :goto_4
    if-ge v9, v8, :cond_6

    .line 293
    .line 294
    iget-object v10, v6, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 295
    .line 296
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    check-cast v10, Ljava/lang/String;

    .line 301
    .line 302
    iget-object v11, v6, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 303
    .line 304
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    check-cast v11, Landroid/util/ArrayMap;

    .line 309
    .line 310
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 311
    .line 312
    .line 313
    move-result v12

    .line 314
    const/4 v13, 0x0

    .line 315
    :goto_5
    if-ge v13, v12, :cond_5

    .line 316
    .line 317
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    check-cast v14, Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v15

    .line 327
    check-cast v15, Ljava/lang/Integer;

    .line 328
    .line 329
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result v15

    .line 333
    if-eqz v15, :cond_4

    .line 334
    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    move-object/from16 v16, v3

    .line 344
    .line 345
    const-string v3, ":"

    .line 346
    .line 347
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v3, " is "

    .line 354
    .line 355
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 373
    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_4
    move-object/from16 v16, v3

    .line 377
    .line 378
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 379
    .line 380
    move-object/from16 v3, v16

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_5
    move-object/from16 v16, v3

    .line 384
    .line 385
    add-int/lit8 v9, v9, 0x1

    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_6
    move-object/from16 v16, v3

    .line 389
    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 391
    .line 392
    .line 393
    move-object/from16 v3, v16

    .line 394
    .line 395
    goto/16 :goto_3

    .line 396
    .line 397
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 398
    .line 399
    .line 400
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-eqz v3, :cond_9

    .line 405
    .line 406
    const-string v3, "configurations"

    .line 407
    .line 408
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 412
    .line 413
    .line 414
    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 415
    .line 416
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    const/4 v5, 0x0

    .line 421
    :goto_7
    if-ge v5, v4, :cond_8

    .line 422
    .line 423
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    check-cast v6, Landroid/app/usage/ConfigurationStats;

    .line 428
    .line 429
    iget-object v7, v6, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 430
    .line 431
    invoke-static {v7}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    const-string v8, "config"

    .line 436
    .line 437
    invoke-virtual {v0, v8, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 438
    .line 439
    .line 440
    iget-wide v7, v6, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 441
    .line 442
    invoke-static {v7, v8, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    const-string/jumbo v8, "totalTime"

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v8, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 450
    .line 451
    .line 452
    iget-wide v7, v6, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 453
    .line 454
    invoke-static {v7, v8, v2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    const-string v8, "lastTime"

    .line 459
    .line 460
    invoke-virtual {v0, v8, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 461
    .line 462
    .line 463
    iget v6, v6, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 464
    .line 465
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    const-string v7, "count"

    .line 470
    .line 471
    invoke-virtual {v0, v7, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 472
    .line 473
    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 475
    .line 476
    .line 477
    add-int/lit8 v5, v5, 0x1

    .line 478
    .line 479
    goto :goto_7

    .line 480
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 481
    .line 482
    .line 483
    const-string v3, "event aggregations"

    .line 484
    .line 485
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 489
    .line 490
    .line 491
    const-string/jumbo v3, "screen-interactive"

    .line 492
    .line 493
    .line 494
    iget-object v4, v1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 495
    .line 496
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 497
    .line 498
    .line 499
    const-string/jumbo v3, "screen-non-interactive"

    .line 500
    .line 501
    .line 502
    iget-object v4, v1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 503
    .line 504
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 505
    .line 506
    .line 507
    const-string v3, "keyguard-shown"

    .line 508
    .line 509
    iget-object v4, v1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 510
    .line 511
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 512
    .line 513
    .line 514
    const-string v3, "keyguard-hidden"

    .line 515
    .line 516
    iget-object v4, v1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 517
    .line 518
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 519
    .line 520
    .line 521
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 522
    .line 523
    .line 524
    :cond_9
    if-nez p4, :cond_d

    .line 525
    .line 526
    const-string v3, "events"

    .line 527
    .line 528
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 532
    .line 533
    .line 534
    iget-object v1, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 535
    .line 536
    if-eqz v1, :cond_a

    .line 537
    .line 538
    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    goto :goto_8

    .line 543
    :cond_a
    const/4 v3, 0x0

    .line 544
    :goto_8
    const/4 v5, 0x0

    .line 545
    :goto_9
    if-ge v5, v3, :cond_c

    .line 546
    .line 547
    invoke-virtual {v1, v5}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 552
    .line 553
    .line 554
    move-result v6

    .line 555
    if-nez v6, :cond_b

    .line 556
    .line 557
    iget-object v6, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 558
    .line 559
    move-object/from16 v7, p5

    .line 560
    .line 561
    check-cast v7, Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v6

    .line 567
    if-nez v6, :cond_b

    .line 568
    .line 569
    goto :goto_a

    .line 570
    :cond_b
    invoke-static {v0, v4, v2}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 571
    .line 572
    .line 573
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 574
    .line 575
    goto :goto_9

    .line 576
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 577
    .line 578
    .line 579
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 580
    .line 581
    .line 582
    return-void
.end method

.method public final pruneUninstalledPackagesData()Z
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 9
    .line 10
    array-length v4, v3

    .line 11
    if-ge v2, v4, :cond_3

    .line 12
    .line 13
    aget-object v3, v3, v2

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    move v4, v1

    .line 23
    :goto_1
    array-length v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-ge v4, v5, :cond_2

    .line 25
    .line 26
    :try_start_1
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    .line 27
    .line 28
    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Landroid/util/AtomicFile;

    .line 32
    .line 33
    aget-object v7, v3, v4

    .line 34
    .line 35
    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 39
    .line 40
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 41
    .line 42
    invoke-static {v6, v5, v7, v8, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 50
    .line 51
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 52
    .line 53
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_5

    .line 61
    :catch_0
    :try_start_2
    const-string p0, "UsageStatsDatabase"

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v5, "Failed to prune data from: "

    .line 69
    .line 70
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    aget-object v3, v3, v4

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    goto :goto_4

    .line 91
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .line 96
    .line 97
    :try_start_4
    monitor-exit v0

    .line 98
    const/4 v1, 0x1

    .line 99
    goto :goto_4

    .line 100
    :catch_1
    const-string p0, "UsageStatsDatabase"

    .line 101
    .line 102
    const-string v2, "Failed to write package mappings after pruning data."

    .line 103
    .line 104
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    monitor-exit v0

    .line 108
    :goto_4
    return v1

    .line 109
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    throw p0
.end method

.method public final queryEarliestAppEvents(JJ)Landroid/app/usage/UsageEvents;
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    move-wide/from16 v2, p1

    .line 6
    .line 7
    move-wide/from16 v4, p3

    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v7, Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v14, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    move-object v2, v14

    .line 30
    move-wide/from16 v3, p1

    .line 31
    .line 32
    move-wide/from16 v5, p3

    .line 33
    .line 34
    move-object v8, v0

    .line 35
    invoke-direct/range {v2 .. v8}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;-><init>(JJLandroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 36
    .line 37
    .line 38
    const/4 v15, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    move-object/from16 v8, p0

    .line 41
    .line 42
    move-wide/from16 v10, p1

    .line 43
    .line 44
    move-wide/from16 v12, p3

    .line 45
    .line 46
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    new-array v1, v1, [Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, [Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Landroid/app/usage/UsageEvents;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v1, v2, v0, v3}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final queryEarliestEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v7, p1

    .line 4
    .line 5
    move-wide/from16 v9, p3

    .line 6
    .line 7
    move-object/from16 v11, p5

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 10
    .line 11
    .line 12
    move-result-wide v12

    .line 13
    move-wide v1, v12

    .line 14
    move-wide/from16 v3, p1

    .line 15
    .line 16
    move-wide/from16 v5, p3

    .line 17
    .line 18
    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v14, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    return-object v14

    .line 26
    :cond_0
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 27
    .line 28
    const/4 v15, 0x1

    .line 29
    invoke-virtual {v1, v15, v11}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    if-eqz v1, :cond_7

    .line 37
    .line 38
    iget-wide v2, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    .line 39
    .line 40
    cmp-long v2, v2, v7

    .line 41
    .line 42
    if-gtz v2, :cond_6

    .line 43
    .line 44
    iget-wide v2, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    .line 45
    .line 46
    cmp-long v2, v7, v2

    .line 47
    .line 48
    if-gtz v2, :cond_6

    .line 49
    .line 50
    iget-object v2, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    move v2, v6

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :goto_0
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget-object v3, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    .line 63
    .line 64
    sub-int/2addr v2, v15

    .line 65
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eq v2, v15, :cond_3

    .line 76
    .line 77
    :cond_2
    iget-wide v2, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    .line 78
    .line 79
    cmp-long v4, v2, v9

    .line 80
    .line 81
    if-gez v4, :cond_3

    .line 82
    .line 83
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    move-object v8, v1

    .line 88
    move-wide/from16 v16, v2

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    iget-wide v2, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    .line 92
    .line 93
    cmp-long v0, v2, v9

    .line 94
    .line 95
    if-gtz v0, :cond_5

    .line 96
    .line 97
    iget-object v0, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    .line 98
    .line 99
    if-nez v0, :cond_4

    .line 100
    .line 101
    return-object v14

    .line 102
    :cond_4
    new-instance v0, Landroid/app/usage/UsageEvents;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    .line 105
    .line 106
    filled-new-array/range {p5 .. p5}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-direct {v0, v1, v2, v6}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_5
    return-object v14

    .line 115
    :cond_6
    iput-wide v7, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    .line 116
    .line 117
    :goto_1
    move-wide/from16 v16, v7

    .line 118
    .line 119
    move-object v8, v1

    .line 120
    goto :goto_2

    .line 121
    :cond_7
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-wide v7, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    .line 127
    .line 128
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 129
    .line 130
    invoke-virtual {v2, v15, v11, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :goto_2
    new-instance v7, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;

    .line 135
    .line 136
    move-object v1, v7

    .line 137
    move-wide/from16 v2, v16

    .line 138
    .line 139
    move-wide/from16 v4, p3

    .line 140
    .line 141
    move v14, v6

    .line 142
    move-object/from16 v6, p5

    .line 143
    .line 144
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;-><init>(JJLjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/16 v18, 0x0

    .line 148
    .line 149
    const/4 v1, 0x0

    .line 150
    move-object/from16 v0, p0

    .line 151
    .line 152
    move-object v6, v7

    .line 153
    move/from16 v7, v18

    .line 154
    .line 155
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_8

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    sub-int/2addr v1, v15

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    iput-wide v1, v8, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    .line 184
    .line 185
    iput-object v0, v8, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    .line 186
    .line 187
    new-instance v1, Landroid/app/usage/UsageEvents;

    .line 188
    .line 189
    filled-new-array/range {p5 .. p5}, [Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-direct {v1, v0, v2, v14}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    .line 194
    .line 195
    .line 196
    return-object v1

    .line 197
    :cond_9
    :goto_3
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 198
    .line 199
    .line 200
    move-result-wide v0

    .line 201
    iput-wide v0, v8, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    .line 202
    .line 203
    const/4 v0, 0x0

    .line 204
    iput-object v0, v8, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    .line 205
    .line 206
    return-object v0
.end method

.method public final queryEvents(JJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;
    .locals 20

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    move-wide/from16 v3, p1

    .line 8
    .line 9
    move-wide/from16 v5, p3

    .line 10
    .line 11
    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz p7, :cond_2

    .line 26
    .line 27
    invoke-virtual/range {p7 .. p7}, Landroid/util/ArraySet;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v11, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    move v11, v1

    .line 37
    :goto_1
    const/16 v4, 0x20

    .line 38
    .line 39
    new-array v9, v4, [Z

    .line 40
    .line 41
    if-nez v8, :cond_4

    .line 42
    .line 43
    array-length v4, v0

    .line 44
    :goto_2
    if-ge v3, v4, :cond_4

    .line 45
    .line 46
    aget v5, v0, v3

    .line 47
    .line 48
    if-ltz v5, :cond_3

    .line 49
    .line 50
    const/16 v6, 0x1f

    .line 51
    .line 52
    if-gt v5, v6, :cond_3

    .line 53
    .line 54
    aput-boolean v1, v9, v5

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string v1, "invalid event type: "

    .line 62
    .line 63
    invoke-static {v5, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    .line 72
    .line 73
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v18, Lcom/android/server/usage/UserUsageStatsService$4;

    .line 77
    .line 78
    move-object/from16 v3, v18

    .line 79
    .line 80
    move-wide/from16 v4, p1

    .line 81
    .line 82
    move-wide/from16 v6, p3

    .line 83
    .line 84
    move/from16 v10, p5

    .line 85
    .line 86
    move-object/from16 v12, p7

    .line 87
    .line 88
    move-object v13, v0

    .line 89
    invoke-direct/range {v3 .. v13}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(JJZ[ZIZLandroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 90
    .line 91
    .line 92
    const/16 v19, 0x0

    .line 93
    .line 94
    const/4 v13, 0x0

    .line 95
    move-object/from16 v12, p0

    .line 96
    .line 97
    move-wide/from16 v14, p1

    .line 98
    .line 99
    move-wide/from16 v16, p3

    .line 100
    .line 101
    invoke-virtual/range {v12 .. v19}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_5

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    new-array v2, v2, [Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, [Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v2, Landroid/app/usage/UsageEvents;

    .line 130
    .line 131
    invoke-direct {v2, v3, v0, v1}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_3
    return-object v2
.end method

.method public final queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 18
    .line 19
    .line 20
    move-object/from16 v7, p5

    .line 21
    .line 22
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    new-instance v10, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    move-object v2, v10

    .line 28
    move-wide v3, p1

    .line 29
    move-wide v5, p3

    .line 30
    move-object v8, v0

    .line 31
    move/from16 v9, p6

    .line 32
    .line 33
    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;-><init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object v2, p0

    .line 39
    move-wide v4, p1

    .line 40
    move-wide v6, p3

    .line 41
    move-object v8, v10

    .line 42
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    new-array v1, v1, [Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, [Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Landroid/app/usage/UsageEvents;

    .line 71
    .line 72
    move/from16 v3, p6

    .line 73
    .line 74
    invoke-direct {v1, v2, v0, v3}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p2

    .line 4
    .line 5
    move-wide/from16 v4, p4

    .line 6
    .line 7
    move-object/from16 v6, p6

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    const/4 v8, 0x1

    .line 11
    move/from16 v9, p1

    .line 12
    .line 13
    if-ne v9, v0, :cond_3

    .line 14
    .line 15
    iget-object v0, v1, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 16
    .line 17
    iget-object v10, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v10

    .line 20
    :try_start_0
    iget-object v9, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 21
    .line 22
    array-length v9, v9

    .line 23
    sub-int/2addr v9, v8

    .line 24
    const/4 v11, -0x1

    .line 25
    const-wide v12, 0x7fffffffffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    :goto_0
    if-ltz v9, :cond_1

    .line 31
    .line 32
    iget-object v14, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 33
    .line 34
    aget-object v14, v14, v9

    .line 35
    .line 36
    invoke-virtual {v14, v2, v3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    .line 37
    .line 38
    .line 39
    move-result v14

    .line 40
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 41
    .line 42
    aget-object v15, v15, v9

    .line 43
    .line 44
    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    if-ltz v14, :cond_0

    .line 49
    .line 50
    if-ge v14, v15, :cond_0

    .line 51
    .line 52
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 53
    .line 54
    aget-object v15, v15, v9

    .line 55
    .line 56
    invoke-virtual {v15, v14}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v14

    .line 60
    sub-long/2addr v14, v2

    .line 61
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v14

    .line 65
    cmp-long v16, v14, v12

    .line 66
    .line 67
    if-gez v16, :cond_0

    .line 68
    .line 69
    move v11, v9

    .line 70
    move-wide v12, v14

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, -0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    monitor-exit v10

    .line 78
    if-gez v11, :cond_2

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    move v9, v11

    .line 83
    goto :goto_3

    .line 84
    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw v0

    .line 86
    :cond_3
    :goto_3
    const/4 v0, 0x0

    .line 87
    if-ltz v9, :cond_16

    .line 88
    .line 89
    iget-object v10, v1, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 90
    .line 91
    array-length v11, v10

    .line 92
    if-lt v9, v11, :cond_4

    .line 93
    .line 94
    goto/16 :goto_d

    .line 95
    .line 96
    :cond_4
    aget-object v10, v10, v9

    .line 97
    .line 98
    iget-wide v11, v10, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 99
    .line 100
    cmp-long v11, v2, v11

    .line 101
    .line 102
    if-ltz v11, :cond_5

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_5
    iget-wide v11, v10, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 106
    .line 107
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v11

    .line 111
    iget-object v13, v1, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 112
    .line 113
    if-ltz v9, :cond_14

    .line 114
    .line 115
    iget-object v14, v13, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 116
    .line 117
    array-length v14, v14

    .line 118
    if-ge v9, v14, :cond_15

    .line 119
    .line 120
    cmp-long v14, v11, v2

    .line 121
    .line 122
    if-gtz v14, :cond_6

    .line 123
    .line 124
    goto :goto_8

    .line 125
    :cond_6
    iget-object v14, v13, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter v14

    .line 128
    :try_start_1
    iget-object v15, v13, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 129
    .line 130
    aget-object v9, v15, v9

    .line 131
    .line 132
    invoke-virtual {v9, v11, v12}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    if-gez v15, :cond_7

    .line 137
    .line 138
    monitor-exit v14

    .line 139
    goto :goto_8

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    goto/16 :goto_c

    .line 142
    .line 143
    :cond_7
    invoke-virtual {v9, v15}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v16

    .line 147
    cmp-long v11, v16, v11

    .line 148
    .line 149
    if-nez v11, :cond_8

    .line 150
    .line 151
    add-int/lit8 v15, v15, -0x1

    .line 152
    .line 153
    if-gez v15, :cond_8

    .line 154
    .line 155
    monitor-exit v14

    .line 156
    goto :goto_8

    .line 157
    :cond_8
    invoke-virtual {v9, v2, v3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-gez v0, :cond_9

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    :cond_9
    new-instance v11, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    move v12, v0

    .line 170
    :goto_4
    if-gt v12, v15, :cond_c

    .line 171
    .line 172
    invoke-virtual {v9, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Landroid/util/AtomicFile;

    .line 177
    .line 178
    new-instance v8, Lcom/android/server/usage/IntervalStats;

    .line 179
    .line 180
    invoke-direct {v8}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    .line 182
    .line 183
    move/from16 v7, p7

    .line 184
    .line 185
    :try_start_2
    invoke-virtual {v13, v0, v8, v7}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    .line 186
    .line 187
    .line 188
    iget-wide v0, v8, Lcom/android/server/usage/IntervalStats;->endTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    .line 190
    cmp-long v0, v2, v0

    .line 191
    .line 192
    if-gez v0, :cond_a

    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    :try_start_3
    invoke-interface {v6, v8, v1, v11}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    .line 196
    .line 197
    .line 198
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    if-nez v0, :cond_b

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :catch_0
    move-exception v0

    .line 203
    goto :goto_5

    .line 204
    :cond_a
    const/4 v1, 0x0

    .line 205
    goto :goto_6

    .line 206
    :catch_1
    move-exception v0

    .line 207
    const/4 v1, 0x0

    .line 208
    :goto_5
    :try_start_4
    const-string v8, "UsageStatsDatabase"

    .line 209
    .line 210
    const-string v1, "Failed to read usage stats file"

    .line 211
    .line 212
    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .line 214
    .line 215
    :cond_b
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 216
    .line 217
    move-object/from16 v1, p0

    .line 218
    .line 219
    const/4 v8, 0x1

    .line 220
    goto :goto_4

    .line 221
    :cond_c
    :goto_7
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 222
    move-object v0, v11

    .line 223
    :goto_8
    iget-wide v7, v10, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 224
    .line 225
    cmp-long v1, v2, v7

    .line 226
    .line 227
    if-gez v1, :cond_13

    .line 228
    .line 229
    iget-wide v1, v10, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 230
    .line 231
    cmp-long v1, v4, v1

    .line 232
    .line 233
    if-lez v1, :cond_13

    .line 234
    .line 235
    if-nez v0, :cond_d

    .line 236
    .line 237
    new-instance v0, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .line 241
    .line 242
    :cond_d
    move-object/from16 v1, p0

    .line 243
    .line 244
    iget-object v1, v1, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 245
    .line 246
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 247
    .line 248
    iget-object v2, v1, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    .line 249
    .line 250
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_f

    .line 255
    .line 256
    :cond_e
    const/4 v1, 0x1

    .line 257
    goto :goto_b

    .line 258
    :cond_f
    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    .line 259
    .line 260
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    const/4 v7, 0x0

    .line 265
    :goto_9
    if-ge v7, v2, :cond_11

    .line 266
    .line 267
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Ljava/lang/String;

    .line 272
    .line 273
    iget-object v4, v10, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 274
    .line 275
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    check-cast v4, Landroid/app/usage/UsageStats;

    .line 280
    .line 281
    if-eqz v4, :cond_10

    .line 282
    .line 283
    iget-wide v4, v4, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 284
    .line 285
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    check-cast v8, Ljava/lang/Long;

    .line 290
    .line 291
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 292
    .line 293
    .line 294
    move-result-wide v8

    .line 295
    cmp-long v4, v4, v8

    .line 296
    .line 297
    if-gez v4, :cond_10

    .line 298
    .line 299
    iget-object v4, v10, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 300
    .line 301
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_11
    iget-object v2, v10, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 308
    .line 309
    invoke-virtual {v2}, Landroid/app/usage/EventList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    const/4 v3, 0x1

    .line 314
    sub-int/2addr v2, v3

    .line 315
    :goto_a
    if-ltz v2, :cond_e

    .line 316
    .line 317
    iget-object v3, v10, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 318
    .line 319
    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    check-cast v4, Ljava/lang/Long;

    .line 330
    .line 331
    if-eqz v4, :cond_12

    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 334
    .line 335
    .line 336
    move-result-wide v4

    .line 337
    iget-wide v7, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 338
    .line 339
    cmp-long v3, v4, v7

    .line 340
    .line 341
    if-lez v3, :cond_12

    .line 342
    .line 343
    iget-object v3, v10, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 344
    .line 345
    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 346
    .line 347
    .line 348
    :cond_12
    add-int/lit8 v2, v2, -0x1

    .line 349
    .line 350
    goto :goto_a

    .line 351
    :goto_b
    invoke-interface {v6, v10, v1, v0}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    .line 352
    .line 353
    .line 354
    :cond_13
    return-object v0

    .line 355
    :goto_c
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 356
    throw v0

    .line 357
    :cond_14
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 361
    .line 362
    const-string v1, "Bad interval type "

    .line 363
    .line 364
    invoke-static {v9, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :cond_16
    :goto_d
    return-object v0
.end method

.method public final reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 6
    .line 7
    .line 8
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 9
    .line 10
    const/4 v3, 0x7

    .line 11
    const/16 v4, 0x1f

    .line 12
    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    if-eq v2, v4, :cond_0

    .line 16
    .line 17
    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 18
    .line 19
    iget-wide v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 20
    .line 21
    sub-long/2addr v2, v5

    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    iget-wide v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    .line 29
    .line 30
    add-long/2addr v2, v5

    .line 31
    iput-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 32
    .line 33
    :cond_0
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 34
    .line 35
    const/16 v3, 0x13

    .line 36
    .line 37
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 38
    .line 39
    const-string v6, "UsageStatsService"

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x1

    .line 43
    if-ne v2, v3, :cond_7

    .line 44
    .line 45
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_7

    .line 52
    .line 53
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    .line 54
    .line 55
    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    new-instance v2, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    .line 71
    .line 72
    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-lez v9, :cond_2

    .line 82
    .line 83
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    check-cast v9, Ljava/lang/Long;

    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    iget-wide v11, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 94
    .line 95
    sget-object v13, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 96
    .line 97
    const-wide/16 v14, 0x3

    .line 98
    .line 99
    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 100
    .line 101
    .line 102
    move-result-wide v13

    .line 103
    sub-long/2addr v11, v13

    .line 104
    cmp-long v9, v9, v11

    .line 105
    .line 106
    if-gtz v9, :cond_2

    .line 107
    .line 108
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    check-cast v9, Ljava/lang/Long;

    .line 113
    .line 114
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 119
    .line 120
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    const/16 v10, 0x2710

    .line 132
    .line 133
    if-lt v9, v10, :cond_7

    .line 134
    .line 135
    iget-object v1, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Ljava/lang/Long;

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v9

    .line 147
    const-string/jumbo v4, "removeForegroundEvents "

    .line 148
    .line 149
    .line 150
    invoke-static {v4, v1, v6}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    aget-object v4, v5, v7

    .line 154
    .line 155
    iget-object v5, v4, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 156
    .line 157
    invoke-virtual {v5}, Landroid/app/usage/EventList;->size()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    sub-int/2addr v5, v8

    .line 162
    :goto_1
    if-ltz v5, :cond_6

    .line 163
    .line 164
    iget-object v11, v4, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 165
    .line 166
    invoke-virtual {v11, v5}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    iget-wide v12, v11, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 171
    .line 172
    cmp-long v12, v12, v9

    .line 173
    .line 174
    if-gez v12, :cond_3

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_3
    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    if-eqz v12, :cond_5

    .line 186
    .line 187
    iget v11, v11, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 188
    .line 189
    if-eq v11, v3, :cond_4

    .line 190
    .line 191
    const/16 v12, 0x14

    .line 192
    .line 193
    if-ne v11, v12, :cond_5

    .line 194
    .line 195
    :cond_4
    iget-object v11, v4, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 196
    .line 197
    invoke-virtual {v11, v5}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 198
    .line 199
    .line 200
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string/jumbo v3, "remove after "

    .line 206
    .line 207
    .line 208
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sget-object v3, Lcom/android/server/usage/UserUsageStatsService;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 212
    .line 213
    new-instance v4, Ljava/util/Date;

    .line 214
    .line 215
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    check-cast v5, Ljava/lang/Long;

    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 222
    .line 223
    .line 224
    move-result-wide v9

    .line 225
    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 243
    .line 244
    .line 245
    iput-boolean v8, v0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 246
    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :cond_7
    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 252
    .line 253
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 254
    .line 255
    iget-wide v10, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 256
    .line 257
    cmp-long v10, v2, v10

    .line 258
    .line 259
    if-ltz v10, :cond_13

    .line 260
    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 262
    .line 263
    .line 264
    move-result-wide v10

    .line 265
    new-instance v12, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 271
    .line 272
    const-string v14, "Rolling over usage stats"

    .line 273
    .line 274
    invoke-static {v12, v13, v14, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    aget-object v12, v5, v7

    .line 278
    .line 279
    iget-object v12, v12, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 280
    .line 281
    new-instance v14, Landroid/util/ArraySet;

    .line 282
    .line 283
    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 284
    .line 285
    .line 286
    new-instance v15, Landroid/util/ArrayMap;

    .line 287
    .line 288
    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    .line 289
    .line 290
    .line 291
    new-instance v8, Landroid/util/ArrayMap;

    .line 292
    .line 293
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 294
    .line 295
    .line 296
    array-length v4, v5

    .line 297
    :goto_3
    if-ge v7, v4, :cond_d

    .line 298
    .line 299
    move/from16 v24, v4

    .line 300
    .line 301
    aget-object v4, v5, v7

    .line 302
    .line 303
    iget-object v1, v4, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    move-object/from16 v25, v6

    .line 310
    .line 311
    const/4 v6, 0x0

    .line 312
    :goto_4
    const-wide/16 v26, 0x1

    .line 313
    .line 314
    if-ge v6, v1, :cond_c

    .line 315
    .line 316
    move/from16 v28, v1

    .line 317
    .line 318
    iget-object v1, v4, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 319
    .line 320
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    check-cast v1, Landroid/app/usage/UsageStats;

    .line 325
    .line 326
    move-object/from16 v29, v13

    .line 327
    .line 328
    iget-object v13, v1, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    .line 329
    .line 330
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    .line 331
    .line 332
    .line 333
    move-result v13

    .line 334
    if-gtz v13, :cond_9

    .line 335
    .line 336
    iget-object v13, v1, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 337
    .line 338
    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    if-nez v13, :cond_8

    .line 343
    .line 344
    goto :goto_5

    .line 345
    :cond_8
    move-wide/from16 v30, v10

    .line 346
    .line 347
    move-object v13, v12

    .line 348
    goto :goto_7

    .line 349
    :cond_9
    :goto_5
    iget-object v13, v1, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    .line 350
    .line 351
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    .line 352
    .line 353
    .line 354
    move-result v13

    .line 355
    if-lez v13, :cond_a

    .line 356
    .line 357
    iget-object v13, v1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 358
    .line 359
    move-wide/from16 v30, v10

    .line 360
    .line 361
    iget-object v10, v1, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    .line 362
    .line 363
    invoke-virtual {v15, v13, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    iget-object v10, v1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 367
    .line 368
    move-object v13, v12

    .line 369
    iget-wide v11, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 370
    .line 371
    sub-long v20, v11, v26

    .line 372
    .line 373
    const/16 v23, 0x0

    .line 374
    .line 375
    const/16 v19, 0x0

    .line 376
    .line 377
    const/16 v22, 0x3

    .line 378
    .line 379
    move-object/from16 v17, v4

    .line 380
    .line 381
    move-object/from16 v18, v10

    .line 382
    .line 383
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 384
    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_a
    move-wide/from16 v30, v10

    .line 388
    .line 389
    move-object v13, v12

    .line 390
    :goto_6
    iget-object v10, v1, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 391
    .line 392
    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    if-nez v10, :cond_b

    .line 397
    .line 398
    iget-object v10, v1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 399
    .line 400
    iget-object v11, v1, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 401
    .line 402
    invoke-virtual {v8, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    iget-object v10, v1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 406
    .line 407
    iget-wide v11, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 408
    .line 409
    sub-long v20, v11, v26

    .line 410
    .line 411
    const/16 v23, 0x0

    .line 412
    .line 413
    const/16 v19, 0x0

    .line 414
    .line 415
    const/16 v22, 0x16

    .line 416
    .line 417
    move-object/from16 v17, v4

    .line 418
    .line 419
    move-object/from16 v18, v10

    .line 420
    .line 421
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 422
    .line 423
    .line 424
    :cond_b
    iget-object v1, v1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 430
    .line 431
    .line 432
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 433
    .line 434
    move-object v12, v13

    .line 435
    move/from16 v1, v28

    .line 436
    .line 437
    move-object/from16 v13, v29

    .line 438
    .line 439
    move-wide/from16 v10, v30

    .line 440
    .line 441
    goto/16 :goto_4

    .line 442
    .line 443
    :cond_c
    move-wide/from16 v30, v10

    .line 444
    .line 445
    move-object/from16 v29, v13

    .line 446
    .line 447
    move-object v13, v12

    .line 448
    iget-wide v10, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 449
    .line 450
    sub-long v10, v10, v26

    .line 451
    .line 452
    const/4 v1, 0x0

    .line 453
    invoke-virtual {v4, v1, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 454
    .line 455
    .line 456
    iget-wide v10, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 457
    .line 458
    sub-long v10, v10, v26

    .line 459
    .line 460
    iget-object v1, v4, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 461
    .line 462
    invoke-virtual {v1, v10, v11}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 463
    .line 464
    .line 465
    iget-object v1, v4, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 466
    .line 467
    invoke-virtual {v1, v10, v11}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 468
    .line 469
    .line 470
    iget-object v1, v4, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 471
    .line 472
    invoke-virtual {v1, v10, v11}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 473
    .line 474
    .line 475
    iget-object v1, v4, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 476
    .line 477
    invoke-virtual {v1, v10, v11}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 478
    .line 479
    .line 480
    add-int/lit8 v7, v7, 0x1

    .line 481
    .line 482
    move-object/from16 v1, p1

    .line 483
    .line 484
    move-object v12, v13

    .line 485
    move/from16 v4, v24

    .line 486
    .line 487
    move-object/from16 v6, v25

    .line 488
    .line 489
    move-object/from16 v13, v29

    .line 490
    .line 491
    move-wide/from16 v10, v30

    .line 492
    .line 493
    goto/16 :goto_3

    .line 494
    .line 495
    :cond_d
    move-object/from16 v25, v6

    .line 496
    .line 497
    move-wide/from16 v30, v10

    .line 498
    .line 499
    move-object/from16 v29, v13

    .line 500
    .line 501
    move-object v13, v12

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 503
    .line 504
    .line 505
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 506
    .line 507
    const/4 v4, 0x0

    .line 508
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->prune(JZ)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    move v2, v4

    .line 519
    :goto_8
    if-ge v2, v1, :cond_12

    .line 520
    .line 521
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    check-cast v3, Ljava/lang/String;

    .line 526
    .line 527
    aget-object v6, v5, v4

    .line 528
    .line 529
    iget-wide v6, v6, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 530
    .line 531
    array-length v4, v5

    .line 532
    const/4 v10, 0x0

    .line 533
    :goto_9
    if-ge v10, v4, :cond_11

    .line 534
    .line 535
    aget-object v11, v5, v10

    .line 536
    .line 537
    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v12

    .line 541
    if-eqz v12, :cond_e

    .line 542
    .line 543
    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v12

    .line 547
    check-cast v12, Landroid/util/SparseIntArray;

    .line 548
    .line 549
    move/from16 v24, v1

    .line 550
    .line 551
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    move/from16 v26, v4

    .line 556
    .line 557
    const/4 v4, 0x0

    .line 558
    :goto_a
    if-ge v4, v1, :cond_f

    .line 559
    .line 560
    invoke-virtual {v12, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 561
    .line 562
    .line 563
    move-result v22

    .line 564
    invoke-virtual {v12, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 565
    .line 566
    .line 567
    move-result v23

    .line 568
    const/16 v19, 0x0

    .line 569
    .line 570
    move-object/from16 v17, v11

    .line 571
    .line 572
    move-object/from16 v18, v3

    .line 573
    .line 574
    move-wide/from16 v20, v6

    .line 575
    .line 576
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 577
    .line 578
    .line 579
    add-int/lit8 v4, v4, 0x1

    .line 580
    .line 581
    goto :goto_a

    .line 582
    :cond_e
    move/from16 v24, v1

    .line 583
    .line 584
    move/from16 v26, v4

    .line 585
    .line 586
    :cond_f
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-eqz v1, :cond_10

    .line 591
    .line 592
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    check-cast v1, Landroid/util/ArrayMap;

    .line 597
    .line 598
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    const/4 v12, 0x0

    .line 603
    :goto_b
    if-ge v12, v4, :cond_10

    .line 604
    .line 605
    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v17

    .line 609
    move-object/from16 v19, v17

    .line 610
    .line 611
    check-cast v19, Ljava/lang/String;

    .line 612
    .line 613
    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v17

    .line 617
    check-cast v17, Ljava/lang/Integer;

    .line 618
    .line 619
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    .line 620
    .line 621
    .line 622
    move-result v22

    .line 623
    const/16 v23, 0x0

    .line 624
    .line 625
    move-object/from16 v17, v11

    .line 626
    .line 627
    move-object/from16 v18, v3

    .line 628
    .line 629
    move-wide/from16 v20, v6

    .line 630
    .line 631
    invoke-virtual/range {v17 .. v23}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 632
    .line 633
    .line 634
    add-int/lit8 v12, v12, 0x1

    .line 635
    .line 636
    goto :goto_b

    .line 637
    :cond_10
    invoke-virtual {v11, v13, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 638
    .line 639
    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 641
    .line 642
    .line 643
    add-int/lit8 v10, v10, 0x1

    .line 644
    .line 645
    move/from16 v1, v24

    .line 646
    .line 647
    move/from16 v4, v26

    .line 648
    .line 649
    goto :goto_9

    .line 650
    :cond_11
    move/from16 v24, v1

    .line 651
    .line 652
    add-int/lit8 v2, v2, 0x1

    .line 653
    .line 654
    const/4 v4, 0x0

    .line 655
    goto/16 :goto_8

    .line 656
    .line 657
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 658
    .line 659
    .line 660
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 661
    .line 662
    .line 663
    move-result-wide v1

    .line 664
    sub-long v1, v1, v30

    .line 665
    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    .line 670
    .line 671
    move-object/from16 v4, v29

    .line 672
    .line 673
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    const-string v6, "Rolling over usage stats complete. Took "

    .line 677
    .line 678
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    const-string v1, " milliseconds"

    .line 685
    .line 686
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    move-object/from16 v2, v25

    .line 694
    .line 695
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    const-string/jumbo v3, "rolloverStats by event Type:"

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    move-object/from16 v3, p1

    .line 713
    .line 714
    iget v4, v3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 715
    .line 716
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    const-string v4, "/ init elapsed time:"

    .line 720
    .line 721
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    iget-wide v6, v3, Landroid/app/usage/UsageEvents$Event;->mInitTimeStamp:J

    .line 725
    .line 726
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    const-string v4, "/ timeStamp:"

    .line 730
    .line 731
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    iget-wide v6, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 735
    .line 736
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    const-string v4, "/ ExpiryDate:"

    .line 740
    .line 741
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    iget-wide v6, v9, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 745
    .line 746
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    const-string v4, "/ realTime:"

    .line 750
    .line 751
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 755
    .line 756
    .line 757
    move-result-wide v6

    .line 758
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    const-string v4, "/ systemTime:"

    .line 762
    .line 763
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 767
    .line 768
    .line 769
    move-result-wide v6

    .line 770
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->addBufferLog(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .line 782
    .line 783
    const/4 v4, 0x0

    .line 784
    goto :goto_c

    .line 785
    :cond_13
    move-object v3, v1

    .line 786
    move v4, v7

    .line 787
    :goto_c
    aget-object v1, v5, v4

    .line 788
    .line 789
    iget-object v2, v3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 790
    .line 791
    iget v6, v3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 792
    .line 793
    const/4 v7, 0x5

    .line 794
    if-ne v6, v7, :cond_14

    .line 795
    .line 796
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 797
    .line 798
    if-eqz v6, :cond_14

    .line 799
    .line 800
    invoke-static {v6, v2}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 801
    .line 802
    .line 803
    move-result-object v6

    .line 804
    iput-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 805
    .line 806
    :cond_14
    iget v6, v3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 807
    .line 808
    const/4 v8, 0x6

    .line 809
    if-eq v6, v8, :cond_15

    .line 810
    .line 811
    const/16 v8, 0x18

    .line 812
    .line 813
    if-eq v6, v8, :cond_15

    .line 814
    .line 815
    const/16 v8, 0x19

    .line 816
    .line 817
    if-eq v6, v8, :cond_15

    .line 818
    .line 819
    const/16 v8, 0x1a

    .line 820
    .line 821
    if-eq v6, v8, :cond_15

    .line 822
    .line 823
    const/16 v8, 0x1f

    .line 824
    .line 825
    if-eq v6, v8, :cond_15

    .line 826
    .line 827
    invoke-virtual {v1, v3}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 828
    .line 829
    .line 830
    :cond_15
    iget v1, v3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 831
    .line 832
    const/4 v6, 0x1

    .line 833
    if-ne v1, v6, :cond_16

    .line 834
    .line 835
    iget-object v1, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 836
    .line 837
    if-eqz v1, :cond_17

    .line 838
    .line 839
    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    .line 840
    .line 841
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result v1

    .line 845
    if-nez v1, :cond_17

    .line 846
    .line 847
    const/4 v1, 0x1

    .line 848
    goto :goto_d

    .line 849
    :cond_16
    const/4 v6, 0x2

    .line 850
    if-ne v1, v6, :cond_17

    .line 851
    .line 852
    iget-object v1, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 853
    .line 854
    if-eqz v1, :cond_17

    .line 855
    .line 856
    iput-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    .line 857
    .line 858
    :cond_17
    move v1, v4

    .line 859
    :goto_d
    array-length v6, v5

    .line 860
    move v8, v4

    .line 861
    :goto_e
    if-ge v8, v6, :cond_1c

    .line 862
    .line 863
    aget-object v15, v5, v8

    .line 864
    .line 865
    iget v9, v3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 866
    .line 867
    if-eq v9, v7, :cond_1a

    .line 868
    .line 869
    const/16 v10, 0x9

    .line 870
    .line 871
    if-eq v9, v10, :cond_19

    .line 872
    .line 873
    packed-switch v9, :pswitch_data_0

    .line 874
    .line 875
    .line 876
    iget-object v10, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 877
    .line 878
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v11

    .line 882
    iget-wide v12, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 883
    .line 884
    iget v14, v3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 885
    .line 886
    iget v9, v3, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 887
    .line 888
    move/from16 v16, v9

    .line 889
    .line 890
    move-object v9, v15

    .line 891
    move-object v4, v15

    .line 892
    move/from16 v15, v16

    .line 893
    .line 894
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 895
    .line 896
    .line 897
    if-eqz v1, :cond_18

    .line 898
    .line 899
    iget-object v9, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 900
    .line 901
    invoke-virtual {v4, v9}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    iget v9, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 906
    .line 907
    const/4 v10, 0x1

    .line 908
    add-int/2addr v9, v10

    .line 909
    iput v9, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 910
    .line 911
    goto/16 :goto_10

    .line 912
    .line 913
    :cond_18
    const/4 v10, 0x1

    .line 914
    goto :goto_10

    .line 915
    :pswitch_0
    move-object v4, v15

    .line 916
    const/4 v10, 0x1

    .line 917
    iget-wide v11, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 918
    .line 919
    iget-object v9, v4, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 920
    .line 921
    invoke-virtual {v9, v11, v12}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 922
    .line 923
    .line 924
    iget-object v4, v4, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 925
    .line 926
    invoke-virtual {v4, v11, v12}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 927
    .line 928
    .line 929
    goto :goto_10

    .line 930
    :pswitch_1
    move-object v4, v15

    .line 931
    const/4 v10, 0x1

    .line 932
    iget-wide v11, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 933
    .line 934
    iget-object v9, v4, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 935
    .line 936
    invoke-virtual {v9, v11, v12}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 937
    .line 938
    .line 939
    iget-object v4, v4, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 940
    .line 941
    invoke-virtual {v4, v11, v12}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 942
    .line 943
    .line 944
    goto :goto_10

    .line 945
    :pswitch_2
    move-object v4, v15

    .line 946
    const/4 v10, 0x1

    .line 947
    iget-wide v11, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 948
    .line 949
    iget-object v9, v4, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 950
    .line 951
    invoke-virtual {v9, v11, v12}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 952
    .line 953
    .line 954
    iget-object v4, v4, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 955
    .line 956
    invoke-virtual {v4, v11, v12}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 957
    .line 958
    .line 959
    goto :goto_10

    .line 960
    :pswitch_3
    move-object v4, v15

    .line 961
    const/4 v10, 0x1

    .line 962
    iget-wide v11, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 963
    .line 964
    iget-object v9, v4, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 965
    .line 966
    invoke-virtual {v9, v11, v12}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 967
    .line 968
    .line 969
    iget-object v4, v4, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 970
    .line 971
    invoke-virtual {v4, v11, v12}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 972
    .line 973
    .line 974
    goto :goto_10

    .line 975
    :cond_19
    move-object v4, v15

    .line 976
    const/4 v10, 0x1

    .line 977
    iget-object v9, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 978
    .line 979
    iget-object v11, v3, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 980
    .line 981
    iget-object v12, v3, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 982
    .line 983
    invoke-virtual {v4, v9, v11, v12}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    iget-object v9, v3, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 987
    .line 988
    if-eqz v9, :cond_1b

    .line 989
    .line 990
    array-length v11, v9

    .line 991
    const/4 v12, 0x0

    .line 992
    :goto_f
    if-ge v12, v11, :cond_1b

    .line 993
    .line 994
    aget-object v13, v9, v12

    .line 995
    .line 996
    iget-object v14, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 997
    .line 998
    iget-object v15, v3, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 999
    .line 1000
    invoke-virtual {v4, v14, v13, v15}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    add-int/lit8 v12, v12, 0x1

    .line 1004
    .line 1005
    goto :goto_f

    .line 1006
    :cond_1a
    move-object v4, v15

    .line 1007
    const/4 v10, 0x1

    .line 1008
    iget-wide v11, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1009
    .line 1010
    invoke-virtual {v4, v2, v11, v12}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 1011
    .line 1012
    .line 1013
    :cond_1b
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 1014
    .line 1015
    const/4 v4, 0x0

    .line 1016
    goto/16 :goto_e

    .line 1017
    .line 1018
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 1019
    .line 1020
    .line 1021
    return-void

    .line 1022
    nop

    .line 1023
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updatePackageMappingsLocked(Ljava/util/HashMap;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    sub-int/2addr v4, v1

    .line 29
    :goto_0
    if-ltz v4, :cond_2

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 32
    .line 33
    iget-object v5, v5, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    return v1

    .line 60
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    sub-int/2addr p1, v1

    .line 65
    :goto_1
    if-ltz p1, :cond_4

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/usage/PackagesTokenData;->removePackage(JLjava/lang/String;)I

    .line 76
    .line 77
    .line 78
    add-int/lit8 p1, p1, -0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    return v1

    .line 85
    :catch_0
    const-string p0, "UsageStatsService"

    .line 86
    .line 87
    const-string p1, "Unable to write updated package mappings file on service initialization."

    .line 88
    .line 89
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    return p0
.end method

.method public final updateRolloverDeadline()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-wide v0, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    int-to-long v3, v3

    .line 12
    const-wide/32 v5, 0x5265c00

    .line 13
    .line 14
    .line 15
    mul-long/2addr v3, v5

    .line 16
    add-long/2addr v3, v0

    .line 17
    iput-wide v3, v2, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "Rollover scheduled @ "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
    iget-wide v3, v2, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 37
    .line 38
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, "("

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-wide v1, v2, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 55
    .line 56
    const-string v3, ")"

    .line 57
    .line 58
    invoke-static {v0, v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, " "

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x6

    .line 69
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UserUsageStatsService;->addBufferLog(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string p0, "UsageStatsService"

    .line 84
    .line 85
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-void
.end method
