.class public final Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mLastAverageCn0:D

.field public mLastSignalLevel:I

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 7
    .line 8
    const-wide/high16 p1, -0x3fa7000000000000L    # -100.0

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final reportSignalQuality([F)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    array-length v3, p1

    .line 7
    if-lez v3, :cond_1

    .line 8
    .line 9
    array-length v3, p1

    .line 10
    const/4 v4, 0x4

    .line 11
    sub-int/2addr v3, v4

    .line 12
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    array-length v5, p1

    .line 17
    if-ge v3, v5, :cond_0

    .line 18
    .line 19
    aget v5, p1, v3

    .line 20
    .line 21
    float-to-double v5, v5

    .line 22
    add-double/2addr v1, v5

    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    array-length p1, p1

    .line 27
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-double v3, p1

    .line 32
    div-double/2addr v1, v3

    .line 33
    :cond_1
    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    .line 34
    .line 35
    sub-double v3, v1, v3

    .line 36
    .line 37
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 42
    .line 43
    cmpg-double p1, v3, v5

    .line 44
    .line 45
    if-gez p1, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    .line 49
    .line 50
    cmpl-double p1, v1, v3

    .line 51
    .line 52
    if-lez p1, :cond_3

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    :cond_3
    iget p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    .line 56
    .line 57
    if-eq v0, p1, :cond_4

    .line 58
    .line 59
    const/16 p1, 0x45

    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 62
    .line 63
    .line 64
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastSignalLevel:I

    .line 65
    .line 66
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 67
    .line 68
    invoke-interface {p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteGpsSignalQuality(I)V

    .line 69
    .line 70
    .line 71
    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p0

    .line 75
    const-string p1, "GnssMetrics"

    .line 76
    .line 77
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :goto_1
    return-void
.end method
