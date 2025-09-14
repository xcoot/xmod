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

    .line 4
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 6
    new-instance p3, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    .line 8
    invoke-direct {p3, p0, p2}, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;-><init>(Lcom/android/server/location/gnss/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V

    .line 11
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssPowerMetrics:Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;

    .line 13
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 15
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 20
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 22
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 27
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 29
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 34
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 36
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 41
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 43
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 48
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMetrics;->reset()V

    .line 51
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 53
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 58
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 60
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 65
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 67
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 72
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 74
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 79
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 81
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 86
    const-string/jumbo p2, "stats"

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/app/StatsManager;

    .line 95
    new-instance p2, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;

    .line 97
    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/location/gnss/GnssMetrics;)V

    .line 100
    sget-object p0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 102
    const/16 p3, 0x275a

    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, p3, v0, p0, p2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 108
    const/16 p3, 0x2775

    .line 110
    invoke-virtual {p1, p3, v0, p0, p2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 113
    return-void
.end method

.method public static isL5Sv(F)Z
    .locals 4

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide v2, 0x41d1584ec0000000L    # 1.164E9

    .line 7
    cmpl-double p0, v0, v2

    .line 9
    if-ltz p0, :cond_0

    .line 11
    const-wide v2, 0x41d1b7acd0000000L    # 1.189E9

    .line 16
    cmpg-double p0, v0, v2

    .line 18
    if-gtz p0, :cond_0

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

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLogStartInElapsedRealtimeMs:J

    .line 7
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 9
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 12
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixSecStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 14
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 17
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMeterStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 19
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 22
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0Statistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 24
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 27
    const/16 v0, 0x8

    .line 29
    new-array v0, v0, [Z

    .line 31
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    .line 33
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0StatisticsL5:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 35
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->reset()V

    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatus:I

    .line 41
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatus:I

    .line 43
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumSvStatusUsedInFix:I

    .line 45
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mNumL5SvStatusUsedInFix:I

    .line 47
    return-void
.end method
