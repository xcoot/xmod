.class public final Lcom/android/server/location/gnss/GnssMetrics;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConstellationTypes:[Z

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

.field public mL5SvStatusReports:J

.field public mL5SvStatusReportsUsedInFix:J

.field public final mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public mLogStartInElapsedRealtimeMs:J

.field public mNumL5SvStatus:I

.field public mNumL5SvStatusUsedInFix:I

.field public mNumSvStatus:I

.field public mNumSvStatusUsedInFix:I

.field public final mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public mSvStatusReports:J

.field public mSvStatusReportsUsedInFix:J

.field public final mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

.field public final mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    .line 6
    new-instance p3, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    .line 7
    .line 8
    invoke-direct {p3, p0, p2}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;-><init>(Lcom/android/server/location/gnss/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    .line 12
    .line 13
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 19
    .line 20
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 26
    .line 27
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 33
    .line 34
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 40
    .line 41
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->reset()V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 52
    .line 53
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 57
    .line 58
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 59
    .line 60
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 64
    .line 65
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 71
    .line 72
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 73
    .line 74
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 78
    .line 79
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 85
    .line 86
    const-string/jumbo p2, "stats"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/app/StatsManager;

    .line 94
    .line 95
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;

    .line 96
    .line 97
    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/location/gnss/GnssMetrics;)V

    .line 98
    .line 99
    .line 100
    sget-object p0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 101
    .line 102
    const/16 p3, 0x275a

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, p3, v0, p0, p2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 106
    .line 107
    .line 108
    const/16 p3, 0x2775

    .line 109
    .line 110
    invoke-virtual {p1, p3, v0, p0, p2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static isL5Sv(F)Z
    .locals 4

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide v2, 0x41d1584ec0000000L    # 1.164E9

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    cmpl-double p0, v0, v2

    .line 8
    .line 9
    if-ltz p0, :cond_0

    .line 10
    .line 11
    const-wide v2, 0x41d1b7acd0000000L    # 1.189E9

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmpg-double p0, v0, v2

    .line 17
    .line 18
    if-gtz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method


# virtual methods
.method public final reset()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLogStartInElapsedRealtimeMs:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    new-array v0, v0, [Z

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    .line 40
    .line 41
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    .line 42
    .line 43
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 44
    .line 45
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    .line 46
    .line 47
    return-void
.end method
