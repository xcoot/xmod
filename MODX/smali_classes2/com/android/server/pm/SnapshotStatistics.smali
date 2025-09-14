.class public final Lcom/android/server/pm/SnapshotStatistics;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SNAPSHOT_LOG_INTERVAL_US:J


# instance fields
.field public mEventsReported:I

.field public final mHandler:Lcom/android/server/pm/SnapshotStatistics$1;

.field public mLastLogTimeUs:J

.field public final mLock:Ljava/lang/Object;

.field public final mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field public mPackageCount:I

.field public final mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field public final mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

.field public final mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/pm/SnapshotStatistics;->SNAPSHOT_LOG_INTERVAL_US:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 8

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
    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Lcom/android/server/pm/SnapshotStatistics$1;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x2

    .line 23
    const/16 v5, 0x64

    .line 24
    .line 25
    const/4 v6, 0x7

    .line 26
    new-array v6, v6, [I

    .line 27
    .line 28
    fill-array-data v6, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v6}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 35
    .line 36
    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 37
    .line 38
    const/16 v6, 0x3e8

    .line 39
    .line 40
    const/16 v7, 0x2710

    .line 41
    .line 42
    filled-new-array {v3, v2, v5, v6, v7}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-direct {v1, v3}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    new-array v1, v4, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 58
    .line 59
    new-instance v3, Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 60
    .line 61
    invoke-direct {v3, p0, v5, v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;J)V

    .line 62
    .line 63
    .line 64
    aput-object v3, v1, v0

    .line 65
    .line 66
    new-array v1, v2, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 69
    .line 70
    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 71
    .line 72
    invoke-direct {v2, p0, v5, v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;J)V

    .line 73
    .line 74
    .line 75
    aput-object v2, v1, v0

    .line 76
    .line 77
    iput-wide v5, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastLogTimeUs:J

    .line 78
    .line 79
    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$1;

    .line 80
    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/SnapshotStatistics$1;-><init>(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Looper;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Lcom/android/server/pm/SnapshotStatistics$1;

    .line 89
    .line 90
    const-wide/32 v2, 0xea60

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :array_0
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x14
        0x32
        0x64
    .end array-data
.end method

.method public static dump(Ljava/io/PrintWriter;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p3, v0

    .line 3
    .line 4
    const/4 v5, 0x1

    .line 5
    move-object v2, p0

    .line 6
    move-wide v3, p1

    .line 7
    move-object v6, p5

    .line 8
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;JZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move v1, v0

    .line 12
    :goto_0
    array-length v2, p4

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    aget-object v3, p4, v1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    move-object v4, p0

    .line 21
    move-wide v5, p1

    .line 22
    move-object v8, p5

    .line 23
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;JZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    array-length p4, p3

    .line 30
    if-ge v0, p4, :cond_3

    .line 31
    .line 32
    aget-object v1, p3, v0

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v2, p0

    .line 38
    move-wide v3, p1

    .line 39
    move-object v6, p5

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;JZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    return-void
.end method


# virtual methods
.method public final shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    iput-wide p2, v1, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-lez v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 v2, v1, -0x1

    .line 12
    .line 13
    aget-object v2, p1, v2

    .line 14
    .line 15
    aput-object v2, p1, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$Stats;

    .line 21
    .line 22
    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;J)V

    .line 23
    .line 24
    .line 25
    aput-object v1, p1, v0

    .line 26
    .line 27
    return-void
.end method
