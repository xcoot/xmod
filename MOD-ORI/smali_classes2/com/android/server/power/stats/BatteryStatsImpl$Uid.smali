.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sTempBinderCallStats:Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;


# instance fields
.field public mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mBinderCallCount:J

.field public final mBinderCallStats:Landroid/util/ArraySet;

.field public mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

.field public mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

.field public mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public final mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mChildUids:Landroid/util/SparseArray;

.field public mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

.field public mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

.field public mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mFullWifiLockOut:Z

.field public mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mInForegroundService:Z

.field public final mJobCompletions:Landroid/util/ArrayMap;

.field public final mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

.field public final mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public final mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public final mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public final mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

.field public mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public final mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public final mPackageStats:Landroid/util/ArrayMap;

.field public mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public final mPids:Landroid/util/SparseArray;

.field public mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

.field public mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

.field public mProcessState:I

.field public final mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public final mProcessStats:Landroid/util/ArrayMap;

.field public mProportionalSystemServiceUsage:D

.field public mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

.field public final mSensorStats:Landroid/util/SparseArray;

.field public mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

.field public final mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mSystemServiceTimeUs:J

.field public final mUid:I

.field public mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

.field public mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

.field public final mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

.field public mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public final mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

.field public mWifiBatchedScanBinStarted:I

.field public final mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

.field public mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mWifiMulticastWakelockCount:I

.field public mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mWifiRunning:Z

.field public mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mWifiScanStarted:Z

.field public mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;


# direct methods
.method public static bridge synthetic -$$Nest$fputmUidEnergyConsumerStats(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/internal/power/EnergyConsumerStats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    .line 2
    .line 3
    return-void
.end method

.method public static -$$Nest$mmarkGnssTimeUs(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;J)J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/16 v0, -0x2710

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-wide/16 v0, 0x3e8

    .line 22
    .line 23
    mul-long/2addr v0, p1

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTimeSinceMarkLocked(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-wide v0
.end method

.method public static -$$Nest$mmarkProcessForegroundTimeUs(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;JZ)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    const-wide/16 v1, 0x3e8

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    mul-long v5, p1, v1

    .line 12
    .line 13
    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTimeSinceMarkLocked(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-wide v5, v3

    .line 19
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-wide v5, v3

    .line 24
    :goto_1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    aget-object p0, p0, v0

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    mul-long/2addr v1, p1

    .line 34
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTimeSinceMarkLocked(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 39
    .line 40
    .line 41
    :cond_3
    cmp-long p0, v3, v5

    .line 42
    .line 43
    if-gez p0, :cond_4

    .line 44
    .line 45
    move-wide v5, v3

    .line 46
    :cond_4
    return-wide v5
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;IJJ)V
    .locals 11

    .line 1
    move-object v7, p0

    .line 2
    move-object v8, p1

    .line 3
    move v0, p2

    .line 4
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 9
    .line 10
    const/4 v9, 0x7

    .line 11
    iput v9, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mInForegroundService:Z

    .line 15
    .line 16
    new-instance v2, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v2, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    .line 22
    .line 23
    new-instance v2, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v2, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 29
    .line 30
    new-instance v2, Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v2, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 36
    .line 37
    new-instance v2, Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v2, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 43
    .line 44
    new-instance v2, Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 50
    .line 51
    new-instance v2, Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    .line 57
    .line 58
    iput-object v8, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 59
    .line 60
    iput v0, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    .line 61
    .line 62
    new-instance v6, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 63
    .line 64
    invoke-direct {v6, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>(Z)V

    .line 65
    .line 66
    .line 67
    iput-object v6, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 68
    .line 69
    const-wide/16 v2, 0x3e8

    .line 70
    .line 71
    mul-long v4, p5, v2

    .line 72
    .line 73
    mul-long/2addr v2, p3

    .line 74
    invoke-virtual {v6, v4, v5, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 75
    .line 76
    .line 77
    new-instance v10, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 78
    .line 79
    invoke-direct {v10, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>(Z)V

    .line 80
    .line 81
    .line 82
    iput-object v10, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 83
    .line 84
    invoke-virtual {v10, v4, v5, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 88
    .line 89
    iget-object v2, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 95
    .line 96
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 97
    .line 98
    iget-object v2, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 99
    .line 100
    invoke-direct {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 101
    .line 102
    .line 103
    iput-object v1, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 104
    .line 105
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 106
    .line 107
    iget-object v2, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 108
    .line 109
    invoke-direct {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 113
    .line 114
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    .line 118
    .line 119
    .line 120
    iput-object v1, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 121
    .line 122
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    .line 126
    .line 127
    .line 128
    iput-object v1, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 129
    .line 130
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 131
    .line 132
    const/4 v2, 0x2

    .line 133
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    .line 134
    .line 135
    .line 136
    iput-object v1, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 137
    .line 138
    new-instance v10, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 139
    .line 140
    iget-object v1, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 141
    .line 142
    iget-object v4, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 143
    .line 144
    iget-object v5, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 145
    .line 146
    const/4 v3, 0x4

    .line 147
    move-object v0, v10

    .line 148
    move-object v2, p0

    .line 149
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 150
    .line 151
    .line 152
    iput-object v10, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 153
    .line 154
    new-instance v10, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 155
    .line 156
    iget-object v1, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 157
    .line 158
    iget-object v4, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 159
    .line 160
    iget-object v5, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 161
    .line 162
    const/4 v3, 0x5

    .line 163
    move-object v0, v10

    .line 164
    move-object v2, p0

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 166
    .line 167
    .line 168
    iput-object v10, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 169
    .line 170
    new-instance v10, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 171
    .line 172
    iget-object v1, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 173
    .line 174
    iget-object v4, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 175
    .line 176
    iget-object v5, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 177
    .line 178
    const/4 v3, 0x6

    .line 179
    move-object v0, v10

    .line 180
    move-object v2, p0

    .line 181
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 182
    .line 183
    .line 184
    iput-object v10, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 185
    .line 186
    const/4 v0, 0x5

    .line 187
    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 188
    .line 189
    iput-object v0, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 190
    .line 191
    new-instance v6, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 192
    .line 193
    iget-object v1, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 194
    .line 195
    iget-object v4, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 196
    .line 197
    iget-object v5, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 198
    .line 199
    const/4 v3, 0x7

    .line 200
    move-object v0, v6

    .line 201
    move-object v2, p0

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 203
    .line 204
    .line 205
    iput-object v6, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 206
    .line 207
    new-array v0, v9, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 208
    .line 209
    iput-object v0, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 210
    .line 211
    iget-object v0, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    .line 212
    .line 213
    array-length v0, v0

    .line 214
    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 215
    .line 216
    iput-object v0, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 217
    .line 218
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 219
    .line 220
    iget-object v1, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 221
    .line 222
    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 223
    .line 224
    .line 225
    iput-object v0, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 226
    .line 227
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 228
    .line 229
    iget-object v1, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 230
    .line 231
    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 232
    .line 233
    .line 234
    iput-object v0, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 235
    .line 236
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 237
    .line 238
    iget-object v1, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 239
    .line 240
    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 241
    .line 242
    .line 243
    iput-object v0, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 244
    .line 245
    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    .line 246
    .line 247
    array-length v0, v0

    .line 248
    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 249
    .line 250
    iput-object v0, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 251
    .line 252
    return-void
.end method

.method public static nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->getCountsLocked(I)[J

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    array-length p1, p0

    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz p1, :cond_3

    .line 16
    .line 17
    aget-wide v1, p0, p1

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long v1, v1, v3

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final createBluetoothDutyScanTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v1, -0x1

    .line 17
    .line 18
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    .line 19
    .line 20
    const/16 v1, 0x64

    .line 21
    .line 22
    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 27
    .line 28
    return-object p0
.end method

.method public final detachFromTimeBase()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([[Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 177
    .line 178
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 182
    .line 183
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 187
    .line 188
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 197
    .line 198
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 202
    .line 203
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 207
    .line 208
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    add-int/lit8 v1, v1, -0x1

    .line 215
    .line 216
    :goto_0
    if-ltz v1, :cond_0

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    .line 223
    .line 224
    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 225
    .line 226
    invoke-static {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 227
    .line 228
    .line 229
    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 230
    .line 231
    invoke-static {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 232
    .line 233
    .line 234
    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 235
    .line 236
    invoke-static {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 237
    .line 238
    .line 239
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 240
    .line 241
    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 242
    .line 243
    .line 244
    add-int/lit8 v1, v1, -0x1

    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    add-int/lit8 v1, v1, -0x1

    .line 256
    .line 257
    :goto_1
    if-ltz v1, :cond_1

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 264
    .line 265
    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 266
    .line 267
    .line 268
    add-int/lit8 v1, v1, -0x1

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 272
    .line 273
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    add-int/lit8 v1, v1, -0x1

    .line 280
    .line 281
    :goto_2
    if-ltz v1, :cond_2

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 288
    .line 289
    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 290
    .line 291
    .line 292
    add-int/lit8 v1, v1, -0x1

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 296
    .line 297
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 301
    .line 302
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 306
    .line 307
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 311
    .line 312
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 316
    .line 317
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    add-int/lit8 v0, v0, -0x1

    .line 322
    .line 323
    :goto_3
    if-ltz v0, :cond_3

    .line 324
    .line 325
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 326
    .line 327
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    .line 332
    .line 333
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 334
    .line 335
    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 336
    .line 337
    .line 338
    add-int/lit8 v0, v0, -0x1

    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 342
    .line 343
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    add-int/lit8 v0, v0, -0x1

    .line 348
    .line 349
    :goto_4
    if-ltz v0, :cond_4

    .line 350
    .line 351
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 352
    .line 353
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 358
    .line 359
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 360
    .line 361
    .line 362
    add-int/lit8 v0, v0, -0x1

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 366
    .line 367
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 368
    .line 369
    .line 370
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 371
    .line 372
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    add-int/lit8 v0, v0, -0x1

    .line 377
    .line 378
    :goto_5
    if-ltz v0, :cond_5

    .line 379
    .line 380
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 381
    .line 382
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    .line 387
    .line 388
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 389
    .line 390
    .line 391
    add-int/lit8 v0, v0, -0x1

    .line 392
    .line 393
    goto :goto_5

    .line 394
    :cond_5
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 395
    .line 396
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 397
    .line 398
    .line 399
    return-void
.end method

.method public final ensureMultiStateCounters(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-direct {v0, v2, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-direct {v0, v2, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p1, "Multi-state counters used in streamlined mode"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final ensureNetworkActivityLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v0, 0xa

    .line 7
    .line 8
    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 11
    .line 12
    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 20
    .line 21
    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 24
    .line 25
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 26
    .line 27
    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 28
    .line 29
    .line 30
    aput-object v3, v2, v1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 33
    .line 34
    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 37
    .line 38
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 39
    .line 40
    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 41
    .line 42
    .line 43
    aput-object v3, v2, v1

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 58
    .line 59
    return-void
.end method

.method public final getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBinderCallStats()Landroid/util/ArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBluetoothDutyScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBluetoothEnergyConsumptionUC()J
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getBluetoothEnergyConsumptionUC(I)J
    .locals 1

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public final getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public final getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCameraEnergyConsumptionUC()J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCpuActiveTime()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 2
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 3
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 4
    invoke-virtual {v3, v0}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public final getCpuActiveTime(I)J
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 18
    .line 19
    const/4 v4, 0x5

    .line 20
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 24
    .line 25
    iget v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    .line 26
    .line 27
    invoke-static {v3}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 32
    .line 33
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 37
    .line 38
    return-object p0
.end method

.method public final getCpuClusterTimes()[J
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getCpuEnergyConsumptionUC()J
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCpuEnergyConsumptionUC(I)J
    .locals 1

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getCpuFreqTimes([JI)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p2, :cond_3

    const/4 v1, 0x7

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v2, :cond_2

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return v0

    .line 5
    :cond_2
    invoke-virtual {v1, p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCountsLocked(I[J)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public final getCpuFreqTimes(I)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object p0

    return-object p0
.end method

.method public final getCustomEnergyConsumerBatteryConsumptionUC()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mGlobalEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/internal/power/EnergyConsumerStats;->getNumberCustomPowerBuckets()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    new-array p0, p0, [J

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/power/EnergyConsumerStats;->getAccumulatedCustomBucketCharges()[J

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 4

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 25
    .line 26
    iget-wide v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x2c

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    .line 46
    .line 47
    array-length v0, v0

    .line 48
    if-ge p2, v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 51
    .line 52
    aget-object v0, v0, p2

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    const-string v0, ",0"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string v0, ","

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 68
    .line 69
    aget-object v0, v0, p2

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method

.method public final getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 5

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 25
    .line 26
    iget-wide v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 27
    .line 28
    const-string/jumbo v4, "times="

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", "

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, "count="

    .line 43
    .line 44
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string/jumbo v1, "totalLatencyMs="

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :goto_0
    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    .line 66
    .line 67
    array-length v1, v0

    .line 68
    if-ge p2, v1, :cond_2

    .line 69
    .line 70
    const-string v1, "<"

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    aget-wide v0, v0, p2

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string/jumbo v0, "ms="

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 87
    .line 88
    aget-object v0, v0, p2

    .line 89
    .line 90
    if-nez v0, :cond_1

    .line 91
    .line 92
    const-string v0, "0"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    :goto_1
    const-string v0, " "

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    add-int/lit8 p2, p2, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    return-void
.end method

.method public final getDisplayTopActivityTime(IJI)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-ltz p1, :cond_3

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    .line 8
    .line 9
    array-length v2, v2

    .line 10
    if-lt p1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_1
    aget-object p0, p0, p1

    .line 19
    .line 20
    if-nez p0, :cond_2

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    return-wide p0

    .line 28
    :cond_3
    :goto_0
    return-wide v0
.end method

.method public final getEnergyConsumptionUC(I)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mGlobalEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isStandardBucketSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-nez p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->getAccumulatedStandardBucketCharge(I)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getEnergyConsumptionUC(II)J
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mGlobalEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/internal/power/EnergyConsumerStats;->isStandardBucketSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    if-nez p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/power/EnergyConsumerStats;->getAccumulatedStandardBucketCharge(II)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFullWifiLockTime(JI)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p0, 0x0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    return-wide p0
.end method

.method public final getGnssEnergyConsumptionUC()J
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method

.method public final getJobCompletionStats()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getJobStats()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getMobileRadioActiveCount(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 6
    .line 7
    long-to-int p0, p0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final getMobileRadioActiveTime(I)J
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide p0

    .line 6
    return-wide p0
.end method

.method public final getMobileRadioActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 18
    .line 19
    const/4 v4, 0x5

    .line 20
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 24
    .line 25
    iget v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    .line 26
    .line 27
    invoke-static {v3}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 32
    .line 33
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 39
    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 46
    .line 47
    return-object p0
.end method

.method public final getMobileRadioActiveTimeInProcessState(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p0, 0x0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/internal/os/LongMultiStateCounter;->getTotalCount()J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    return-wide p0
.end method

.method public final getMobileRadioApWakeupCount(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    const-wide/16 p0, 0x0

    .line 9
    .line 10
    return-wide p0
.end method

.method public final getMobileRadioEnergyConsumptionUC()J
    .locals 2

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMobileRadioEnergyConsumptionUC(I)J
    .locals 1

    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNetworkActivityBytes(II)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    array-length p2, p0

    .line 8
    if-ge p1, p2, :cond_0

    .line 9
    .line 10
    aget-object p0, p0, p1

    .line 11
    .line 12
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 13
    .line 14
    return-wide p0

    .line 15
    :cond_0
    const-wide/16 p0, 0x0

    .line 16
    .line 17
    return-wide p0
.end method

.method public final getNetworkActivityPackets(II)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    array-length p2, p0

    .line 8
    if-ge p1, p2, :cond_0

    .line 9
    .line 10
    aget-object p0, p0, p1

    .line 11
    .line 12
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 13
    .line 14
    return-wide p0

    .line 15
    :cond_0
    const-wide/16 p0, 0x0

    .line 16
    .line 17
    return-wide p0
.end method

.method public final getOrCreateBluetoothControllerActivityLocked()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(ILcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getOrCreateWifiControllerActivityLocked()Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(ILcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getPackageStats()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0
.end method

.method public final getPidStats()Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProcessStateTime(IJI)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-ltz p1, :cond_2

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    if-lt p1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 10
    .line 11
    aget-object p0, p0, p1

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0

    .line 21
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public final getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 8
    .line 9
    aget-object p0, p0, p1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 13
    :goto_1
    return-object p0
.end method

.method public final getProcessStats()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 20
    .line 21
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v0
.end method

.method public final getProportionalSystemServiceUsage()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getScreenOffCpuFreqTimes([JI)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p2, :cond_3

    const/4 v1, 0x7

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v2, :cond_2

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return v0

    .line 5
    :cond_2
    invoke-virtual {v1, p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCountsLocked(I[J)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public final getScreenOffCpuFreqTimes(I)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object p0

    return-object p0
.end method

.method public final getScreenOnEnergyConsumptionUC()J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method

.method public final getSensorStats()Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object p2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    return-object p2

    .line 30
    :cond_2
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 31
    .line 32
    iget-object p2, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Ljava/util/ArrayList;

    .line 39
    .line 40
    if-nez p2, :cond_3

    .line 41
    .line 42
    new-instance p2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    move-object v6, p2

    .line 55
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 58
    .line 59
    iget-object v3, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 60
    .line 61
    iget-object v7, p2, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 62
    .line 63
    iget-object v8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 64
    .line 65
    const/4 v5, 0x3

    .line 66
    move-object v2, p1

    .line 67
    move-object v4, p0

    .line 68
    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 72
    .line 73
    return-object p1
.end method

.method public final getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object p1
.end method

.method public final getSpeakerMediaTime(II)J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    if-ltz p1, :cond_1

    .line 9
    .line 10
    array-length p2, p0

    .line 11
    if-ge p1, p2, :cond_1

    .line 12
    .line 13
    aget-object p0, p0, p1

    .line 14
    .line 15
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 16
    .line 17
    return-wide p0

    .line 18
    :cond_1
    return-wide v0
.end method

.method public final getSyncStats()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getSystemCpuTimeUs(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 4
    .line 5
    return-wide p0
.end method

.method public final getTimeAtCpuSpeed(III)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    array-length p3, p0

    .line 8
    if-ge p1, p3, :cond_0

    .line 9
    .line 10
    aget-object p0, p0, p1

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    if-ltz p2, :cond_0

    .line 15
    .line 16
    array-length p1, p0

    .line 17
    if-ge p2, p1, :cond_0

    .line 18
    .line 19
    aget-object p0, p0, p2

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 24
    .line 25
    return-wide p0

    .line 26
    :cond_0
    const-wide/16 p0, 0x0

    .line 27
    .line 28
    return-wide p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUserActivityCount(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    aget-object p0, p0, p1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getUserCpuTimeUs(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 4
    .line 5
    return-wide p0
.end method

.method public final getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWakelockStats()Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p2, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x12

    .line 10
    .line 11
    if-ne p2, v0, :cond_1

    .line 12
    .line 13
    iget-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 22
    .line 23
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 26
    .line 27
    const/16 v3, 0x12

    .line 28
    .line 29
    move-object v0, p2

    .line 30
    move-object v2, p0

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 35
    .line 36
    :cond_0
    return-object p2

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string/jumbo p1, "type="

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    iget-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 51
    .line 52
    if-nez p2, :cond_3

    .line 53
    .line 54
    new-instance p2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 59
    .line 60
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    .line 61
    .line 62
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    move-object v0, p2

    .line 66
    move-object v2, p0

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 71
    .line 72
    :cond_3
    return-object p2

    .line 73
    :cond_4
    iget-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 74
    .line 75
    if-nez p2, :cond_5

    .line 76
    .line 77
    new-instance p2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 80
    .line 81
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 82
    .line 83
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    .line 84
    .line 85
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    move-object v0, p2

    .line 89
    move-object v2, p0

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 94
    .line 95
    :cond_5
    return-object p2

    .line 96
    :cond_6
    iget-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 97
    .line 98
    if-nez p2, :cond_7

    .line 99
    .line 100
    new-instance p2, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 103
    .line 104
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 105
    .line 106
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    .line 107
    .line 108
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 109
    .line 110
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    move-object v0, p2

    .line 114
    move-object v2, p0

    .line 115
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 116
    .line 117
    .line 118
    iput-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 119
    .line 120
    :cond_7
    return-object p2
.end method

.method public final getWifiBatchedScanCount(II)I
    .locals 1

    .line 1
    const/4 p2, 0x0

    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 9
    .line 10
    aget-object p0, p0, p1

    .line 11
    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    return p2

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_2
    :goto_0
    return p2
.end method

.method public final getWifiBatchedScanTime(IJI)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-ltz p1, :cond_2

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    if-lt p1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 10
    .line 11
    aget-object p0, p0, p1

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0

    .line 21
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public final getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWifiEnergyConsumptionUC()J
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWifiEnergyConsumptionUC(I)J
    .locals 1

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getEnergyConsumptionUC(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getWifiMulticastTime(JI)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p0, 0x0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    return-wide p0
.end method

.method public final getWifiRadioApWakeupCount(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    const-wide/16 p0, 0x0

    .line 9
    .line 10
    return-wide p0
.end method

.method public final getWifiRunningTime(JI)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p0, 0x0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    return-wide p0
.end method

.method public final getWifiScanActualTime(J)J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p0, 0x0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    const-wide/16 v0, 0x1f4

    .line 9
    .line 10
    add-long/2addr p1, v0

    .line 11
    const-wide/16 v0, 0x3e8

    .line 12
    .line 13
    div-long/2addr p1, v0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    mul-long/2addr p0, v0

    .line 19
    return-wide p0
.end method

.method public final getWifiScanBackgroundCount(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final getWifiScanBackgroundTime(J)J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x1f4

    .line 11
    .line 12
    add-long/2addr p1, v0

    .line 13
    const-wide/16 v0, 0x3e8

    .line 14
    .line 15
    div-long/2addr p1, v0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    mul-long/2addr p0, v0

    .line 21
    return-wide p0

    .line 22
    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    .line 23
    .line 24
    return-wide p0
.end method

.method public final getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public final getWifiScanCount(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->computeCurrentCountLocked()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getWifiScanTime(JI)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p0, 0x0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    return-wide p0
.end method

.method public final getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasNetworkActivity()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final hasSpeakerActivity()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final hasUserActivity()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final initSpeakerTimeCounterLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 20
    .line 21
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 22
    .line 23
    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 24
    .line 25
    .line 26
    aput-object v3, v2, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final initUserActivityLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    .line 7
    .line 8
    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    sget v1, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 18
    .line 19
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 26
    .line 27
    .line 28
    aput-object v2, v1, v0

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final makeDisplayTopActivityTimer(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 9
    .line 10
    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 15
    .line 16
    iget-object v6, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 17
    .line 18
    const/16 v4, 0xc

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v1, v7

    .line 22
    move-object v3, p0

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 24
    .line 25
    .line 26
    aput-object v7, v0, p1

    .line 27
    .line 28
    return-void
.end method

.method public final makeProcessState(I)V
    .locals 8

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 8
    .line 9
    aget-object v0, v0, p1

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 15
    .line 16
    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 21
    .line 22
    iget-object v6, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 23
    .line 24
    const/16 v4, 0xc

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v1, v7

    .line 28
    move-object v3, p0

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 30
    .line 31
    .line 32
    aput-object v7, v0, p1

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final makeWifiBatchedScanBin(I)V
    .locals 8

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    move-object v6, v0

    .line 32
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 33
    .line 34
    aget-object v0, v0, p1

    .line 35
    .line 36
    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 40
    .line 41
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 44
    .line 45
    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 46
    .line 47
    const/16 v5, 0xb

    .line 48
    .line 49
    iget-object v7, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 50
    .line 51
    move-object v2, v1

    .line 52
    move-object v4, p0

    .line 53
    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 54
    .line 55
    .line 56
    aput-object v1, v0, p1

    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method public final noteActivityPausedLocked(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final noteActivityResumedLocked(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 10
    .line 11
    iget-object v6, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 12
    .line 13
    const/16 v4, 0xa

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v1, v0

    .line 17
    move-object v3, p0

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final noteBinderCallStatsLocked(JLjava/util/Collection;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallCount:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallCount:J

    .line 5
    .line 6
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 21
    .line 22
    sget-object p3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    .line 23
    .line 24
    iget-object v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    .line 25
    .line 26
    iput-object v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 27
    .line 28
    iget v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    .line 29
    .line 30
    iput v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-ltz p3, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    check-cast p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    new-instance p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    .line 50
    .line 51
    invoke-direct {p3}, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    .line 55
    .line 56
    iput-object v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 57
    .line 58
    iget v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    .line 59
    .line 60
    iput v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :goto_1
    iget-wide v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->callCount:J

    .line 68
    .line 69
    iget-wide v2, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 70
    .line 71
    add-long/2addr v0, v2

    .line 72
    iput-wide v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->callCount:J

    .line 73
    .line 74
    iget-wide v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 75
    .line 76
    iput-wide v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->recordedCallCount:J

    .line 77
    .line 78
    iget-wide v0, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 79
    .line 80
    iput-wide v0, p3, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->recordedCpuTimeMicros:J

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method public final noteBluetoothScanStartedLocked(IJZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->isRunningLocked()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 12
    .line 13
    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->stopRunningLocked(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->createBluetoothDutyScanTimerLocked()Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput p1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 23
    .line 24
    iget v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 25
    .line 26
    add-int/lit8 v1, v0, 0x1

    .line 27
    .line 28
    iput v1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 33
    .line 34
    const-wide/16 v1, 0x3e8

    .line 35
    .line 36
    mul-long/2addr v1, p2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    .line 42
    .line 43
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 44
    .line 45
    iget-boolean v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    iput v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 54
    .line 55
    iget-wide v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 56
    .line 57
    iput-wide v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-wide/16 v0, -0x1

    .line 61
    .line 62
    iput-wide v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    .line 63
    .line 64
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 65
    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 73
    .line 74
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 77
    .line 78
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 79
    .line 80
    const/16 v3, 0x13

    .line 81
    .line 82
    move-object v0, p1

    .line 83
    move-object v2, p0

    .line 84
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 88
    .line 89
    :cond_3
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 90
    .line 91
    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 92
    .line 93
    .line 94
    if-eqz p4, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 97
    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 101
    .line 102
    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 103
    .line 104
    iget-object v1, p4, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 105
    .line 106
    iget-object v5, p4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 107
    .line 108
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 109
    .line 110
    const/16 v3, 0x15

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    move-object v0, p1

    .line 114
    move-object v2, p0

    .line 115
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 119
    .line 120
    :cond_4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 121
    .line 122
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 123
    .line 124
    .line 125
    :cond_5
    return-void
.end method

.method public final noteFullWifiLockAcquiredLocked(J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 17
    .line 18
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v6, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 21
    .line 22
    const/4 v4, 0x5

    .line 23
    move-object v1, v0

    .line 24
    move-object v3, p0

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final noteFullWifiLockReleasedLocked(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final noteNetworkActivityLocked(IJJ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->ensureNetworkActivityLocked()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 11
    .line 12
    aget-object v0, v0, p1

    .line 13
    .line 14
    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 18
    .line 19
    aget-object p0, p0, p1

    .line 20
    .line 21
    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "Unknown network activity type "

    .line 26
    .line 27
    const-string p2, " was specified."

    .line 28
    .line 29
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Ljava/lang/Throwable;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string p2, "BatteryStatsImpl"

    .line 39
    .line 40
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final noteUserActivityLocked(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-ltz p1, :cond_1

    .line 9
    .line 10
    sget v0, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    .line 11
    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 15
    .line 16
    aget-object p0, p0, p1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->stepAtomic()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string p0, "Unknown user activity type "

    .line 23
    .line 24
    const-string v0, " was specified."

    .line 25
    .line 26
    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Ljava/lang/Throwable;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "BatteryStatsImpl"

    .line 36
    .line 37
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final noteWifiBatchedScanStartedLocked(IJ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x8

    .line 3
    .line 4
    if-le p1, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    shr-int/lit8 p1, p1, 0x3

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const/4 v1, -0x1

    .line 20
    if-eq p1, v1, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 23
    .line 24
    aget-object p1, v1, p1

    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 32
    .line 33
    aget-object p1, p1, v0

    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(I)V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 41
    .line 42
    aget-object p0, p0, v0

    .line 43
    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final noteWifiBatchedScanStoppedLocked(J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 7
    .line 8
    aget-object v0, v2, v0

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 11
    .line 12
    .line 13
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final noteWifiMulticastDisabledLocked(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final noteWifiMulticastEnabledLocked(J)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 14
    .line 15
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v6, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 18
    .line 19
    const/4 v4, 0x7

    .line 20
    move-object v1, v0

    .line 21
    move-object v3, p0

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 37
    .line 38
    return-void
.end method

.method public final noteWifiRunningLocked(J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 17
    .line 18
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v6, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    move-object v1, v0

    .line 24
    move-object v3, p0

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final noteWifiScanStartedLocked(J)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 17
    .line 18
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v6, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 21
    .line 22
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 23
    .line 24
    const/4 v4, 0x6

    .line 25
    move-object v1, v0

    .line 26
    move-object v3, p0

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final noteWifiScanStoppedLocked(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final noteWifiStoppedLocked(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-lez v4, :cond_1

    .line 23
    .line 24
    new-instance v5, Landroid/util/SparseIntArray;

    .line 25
    .line 26
    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 27
    .line 28
    .line 29
    move v6, v1

    .line 30
    :goto_1
    if-ge v6, v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method public final readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Wakelock;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 7
    .line 8
    invoke-virtual {v1, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    const/4 p1, 0x2

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    const/16 p1, 0x12

    .line 60
    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method public reset(JJI)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(JZ)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    xor-int/2addr p1, p2

    .line 22
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 23
    .line 24
    or-int/2addr p1, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, v0

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(JZ)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    xor-int/2addr v1, p2

    .line 36
    or-int/2addr p1, v1

    .line 37
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 38
    .line 39
    or-int/2addr p1, v1

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(JZ)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    xor-int/2addr v1, p2

    .line 49
    or-int/2addr p1, v1

    .line 50
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 51
    .line 52
    or-int/2addr p1, v1

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    move v1, v0

    .line 58
    :goto_1
    const/4 v2, 0x5

    .line 59
    if-ge v1, v2, :cond_4

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 62
    .line 63
    aget-object v2, v2, v1

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(JZ)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    xor-int/2addr v2, p2

    .line 72
    or-int/2addr p1, v2

    .line 73
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 77
    .line 78
    const/4 v2, -0x1

    .line 79
    if-eq v1, v2, :cond_5

    .line 80
    .line 81
    move v1, p2

    .line 82
    goto :goto_2

    .line 83
    :cond_5
    move v1, v0

    .line 84
    :goto_2
    or-int/2addr p1, v1

    .line 85
    :cond_6
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 86
    .line 87
    if-eqz v1, :cond_8

    .line 88
    .line 89
    invoke-virtual {v1, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(JZ)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    xor-int/2addr v1, p2

    .line 94
    or-int/2addr p1, v1

    .line 95
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 96
    .line 97
    if-lez v1, :cond_7

    .line 98
    .line 99
    move v1, p2

    .line 100
    goto :goto_3

    .line 101
    :cond_7
    move v1, v0

    .line 102
    :goto_3
    or-int/2addr p1, v1

    .line 103
    :cond_8
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 104
    .line 105
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    xor-int/2addr v1, p2

    .line 110
    or-int/2addr p1, v1

    .line 111
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 112
    .line 113
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    xor-int/2addr v1, p2

    .line 118
    or-int/2addr p1, v1

    .line 119
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 120
    .line 121
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    xor-int/2addr v1, p2

    .line 126
    or-int/2addr p1, v1

    .line 127
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 128
    .line 129
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    xor-int/2addr v1, p2

    .line 134
    or-int/2addr p1, v1

    .line 135
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 136
    .line 137
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    xor-int/2addr v1, p2

    .line 142
    or-int/2addr p1, v1

    .line 143
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 144
    .line 145
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    xor-int/2addr v1, p2

    .line 150
    or-int/2addr p1, v1

    .line 151
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 152
    .line 153
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    xor-int/2addr v1, p2

    .line 158
    or-int/2addr p1, v1

    .line 159
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothDutyScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DutyTimer;

    .line 160
    .line 161
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    xor-int/2addr v1, p2

    .line 166
    or-int/2addr p1, v1

    .line 167
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSpeakerMediaTimeCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 168
    .line 169
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 173
    .line 174
    if-eqz v1, :cond_9

    .line 175
    .line 176
    move v1, v0

    .line 177
    :goto_4
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 178
    .line 179
    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    .line 180
    .line 181
    array-length v2, v2

    .line 182
    if-ge v1, v2, :cond_9

    .line 183
    .line 184
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPerDisplayTopActivityTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 185
    .line 186
    aget-object v2, v2, v1

    .line 187
    .line 188
    invoke-static {v2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    xor-int/2addr v2, p2

    .line 193
    or-int/2addr p1, v2

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_9
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 198
    .line 199
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    xor-int/2addr v1, p2

    .line 204
    or-int/2addr p1, v1

    .line 205
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 206
    .line 207
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    xor-int/2addr v1, p2

    .line 212
    or-int/2addr p1, v1

    .line 213
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 214
    .line 215
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 219
    .line 220
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 221
    .line 222
    .line 223
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 224
    .line 225
    if-eqz v1, :cond_c

    .line 226
    .line 227
    move v1, v0

    .line 228
    :goto_5
    const/4 v2, 0x7

    .line 229
    if-ge v1, v2, :cond_a

    .line 230
    .line 231
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 232
    .line 233
    aget-object v2, v2, v1

    .line 234
    .line 235
    invoke-static {v2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    xor-int/2addr v2, p2

    .line 240
    or-int/2addr p1, v2

    .line 241
    add-int/lit8 v1, v1, 0x1

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_a
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    .line 245
    .line 246
    if-eq v1, v2, :cond_b

    .line 247
    .line 248
    move v1, p2

    .line 249
    goto :goto_6

    .line 250
    :cond_b
    move v1, v0

    .line 251
    :goto_6
    or-int/2addr p1, v1

    .line 252
    :cond_c
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    .line 253
    .line 254
    const/4 v2, 0x0

    .line 255
    if-eqz v1, :cond_e

    .line 256
    .line 257
    invoke-virtual {v1, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->reset(JZ)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_d

    .line 262
    .line 263
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    .line 264
    .line 265
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->detach()V

    .line 266
    .line 267
    .line 268
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_d
    move p1, p2

    .line 272
    :cond_e
    :goto_7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 273
    .line 274
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 275
    .line 276
    .line 277
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 278
    .line 279
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 280
    .line 281
    .line 282
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 283
    .line 284
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 285
    .line 286
    .line 287
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 288
    .line 289
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 290
    .line 291
    .line 292
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 293
    .line 294
    invoke-static {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 295
    .line 296
    .line 297
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 298
    .line 299
    if-eqz v1, :cond_f

    .line 300
    .line 301
    invoke-virtual {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(J)V

    .line 302
    .line 303
    .line 304
    :cond_f
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 305
    .line 306
    if-eqz v1, :cond_10

    .line 307
    .line 308
    invoke-virtual {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(J)V

    .line 309
    .line 310
    .line 311
    :cond_10
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 312
    .line 313
    if-eqz v1, :cond_11

    .line 314
    .line 315
    invoke-virtual {v1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(J)V

    .line 316
    .line 317
    .line 318
    :cond_11
    const/4 v1, 0x4

    .line 319
    if-ne p5, v1, :cond_12

    .line 320
    .line 321
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_12
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    .line 325
    .line 326
    invoke-static {p5}, Lcom/android/internal/power/EnergyConsumerStats;->resetIfNotNull(Lcom/android/internal/power/EnergyConsumerStats;)V

    .line 327
    .line 328
    .line 329
    :goto_8
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 330
    .line 331
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 332
    .line 333
    .line 334
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 335
    .line 336
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 337
    .line 338
    .line 339
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 340
    .line 341
    if-eqz p5, :cond_13

    .line 342
    .line 343
    move v1, v0

    .line 344
    :goto_9
    array-length v3, p5

    .line 345
    if-ge v1, v3, :cond_13

    .line 346
    .line 347
    aget-object v3, p5, v1

    .line 348
    .line 349
    invoke-static {v3, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 350
    .line 351
    .line 352
    add-int/lit8 v1, v1, 0x1

    .line 353
    .line 354
    goto :goto_9

    .line 355
    :cond_13
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 356
    .line 357
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 358
    .line 359
    .line 360
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 361
    .line 362
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 363
    .line 364
    .line 365
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 366
    .line 367
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 368
    .line 369
    .line 370
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 371
    .line 372
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 373
    .line 374
    .line 375
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 376
    .line 377
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 378
    .line 379
    .line 380
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 381
    .line 382
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 383
    .line 384
    .line 385
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 386
    .line 387
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 388
    .line 389
    .line 390
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 391
    .line 392
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 393
    .line 394
    .line 395
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 396
    .line 397
    iget-object p5, p5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 398
    .line 399
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    sub-int/2addr v1, p2

    .line 404
    :goto_a
    if-ltz v1, :cond_16

    .line 405
    .line 406
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    .line 411
    .line 412
    iget-object v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 413
    .line 414
    invoke-static {v4, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    xor-int/2addr v4, p2

    .line 419
    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 420
    .line 421
    invoke-static {v5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    xor-int/2addr v5, p2

    .line 426
    or-int/2addr v4, v5

    .line 427
    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 428
    .line 429
    invoke-static {v5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    xor-int/2addr v5, p2

    .line 434
    or-int/2addr v4, v5

    .line 435
    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 436
    .line 437
    invoke-static {v5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    xor-int/2addr v5, p2

    .line 442
    or-int/2addr v4, v5

    .line 443
    if-nez v4, :cond_14

    .line 444
    .line 445
    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 446
    .line 447
    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 448
    .line 449
    .line 450
    iput-object v2, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 451
    .line 452
    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 453
    .line 454
    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 455
    .line 456
    .line 457
    iput-object v2, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 458
    .line 459
    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 460
    .line 461
    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 462
    .line 463
    .line 464
    iput-object v2, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 465
    .line 466
    iget-object v5, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 467
    .line 468
    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 469
    .line 470
    .line 471
    iput-object v2, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 472
    .line 473
    :cond_14
    xor-int/lit8 v3, v4, 0x1

    .line 474
    .line 475
    if-eqz v3, :cond_15

    .line 476
    .line 477
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    goto :goto_b

    .line 481
    :cond_15
    move p1, p2

    .line 482
    :goto_b
    add-int/lit8 v1, v1, -0x1

    .line 483
    .line 484
    goto :goto_a

    .line 485
    :cond_16
    const-wide/16 v3, 0x3e8

    .line 486
    .line 487
    div-long v3, p3, v3

    .line 488
    .line 489
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 490
    .line 491
    invoke-virtual {p5, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->cleanup(J)V

    .line 492
    .line 493
    .line 494
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 495
    .line 496
    iget-object p5, p5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 497
    .line 498
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    sub-int/2addr v1, p2

    .line 503
    :goto_c
    if-ltz v1, :cond_18

    .line 504
    .line 505
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    check-cast v5, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 510
    .line 511
    invoke-virtual {v5, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(JZ)Z

    .line 512
    .line 513
    .line 514
    move-result v6

    .line 515
    if-eqz v6, :cond_17

    .line 516
    .line 517
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->detach()V

    .line 521
    .line 522
    .line 523
    goto :goto_d

    .line 524
    :cond_17
    move p1, p2

    .line 525
    :goto_d
    add-int/lit8 v1, v1, -0x1

    .line 526
    .line 527
    goto :goto_c

    .line 528
    :cond_18
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 529
    .line 530
    invoke-virtual {p5, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->cleanup(J)V

    .line 531
    .line 532
    .line 533
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 534
    .line 535
    iget-object p5, p5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 536
    .line 537
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    .line 538
    .line 539
    .line 540
    move-result v1

    .line 541
    sub-int/2addr v1, p2

    .line 542
    :goto_e
    if-ltz v1, :cond_1a

    .line 543
    .line 544
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    check-cast v5, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 549
    .line 550
    invoke-virtual {v5, p3, p4, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(JZ)Z

    .line 551
    .line 552
    .line 553
    move-result v6

    .line 554
    if-eqz v6, :cond_19

    .line 555
    .line 556
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->detach()V

    .line 560
    .line 561
    .line 562
    goto :goto_f

    .line 563
    :cond_19
    move p1, p2

    .line 564
    :goto_f
    add-int/lit8 v1, v1, -0x1

    .line 565
    .line 566
    goto :goto_e

    .line 567
    :cond_1a
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    .line 568
    .line 569
    invoke-virtual {p5, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->cleanup(J)V

    .line 570
    .line 571
    .line 572
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    .line 573
    .line 574
    invoke-virtual {p5}, Landroid/util/ArrayMap;->clear()V

    .line 575
    .line 576
    .line 577
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 578
    .line 579
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 580
    .line 581
    .line 582
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 583
    .line 584
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 585
    .line 586
    .line 587
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 588
    .line 589
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 590
    .line 591
    .line 592
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    .line 593
    .line 594
    invoke-static {p5, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 595
    .line 596
    .line 597
    iget-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 598
    .line 599
    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    .line 600
    .line 601
    .line 602
    move-result p5

    .line 603
    sub-int/2addr p5, p2

    .line 604
    :goto_10
    if-ltz p5, :cond_1c

    .line 605
    .line 606
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 607
    .line 608
    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;

    .line 613
    .line 614
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 615
    .line 616
    invoke-virtual {v1, p3, p4, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->reset(JZ)Z

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    if-eqz v1, :cond_1b

    .line 621
    .line 622
    iput-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 623
    .line 624
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 625
    .line 626
    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 627
    .line 628
    .line 629
    goto :goto_11

    .line 630
    :cond_1b
    move p1, p2

    .line 631
    :goto_11
    add-int/lit8 p5, p5, -0x1

    .line 632
    .line 633
    goto :goto_10

    .line 634
    :cond_1c
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 635
    .line 636
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 637
    .line 638
    .line 639
    move-result p3

    .line 640
    sub-int/2addr p3, p2

    .line 641
    :goto_12
    if-ltz p3, :cond_1d

    .line 642
    .line 643
    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 644
    .line 645
    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object p4

    .line 649
    check-cast p4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    .line 650
    .line 651
    invoke-virtual {p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 652
    .line 653
    .line 654
    add-int/lit8 p3, p3, -0x1

    .line 655
    .line 656
    goto :goto_12

    .line 657
    :cond_1d
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 658
    .line 659
    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 660
    .line 661
    .line 662
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 663
    .line 664
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 665
    .line 666
    .line 667
    move-result p3

    .line 668
    sub-int/2addr p3, p2

    .line 669
    :goto_13
    if-ltz p3, :cond_1f

    .line 670
    .line 671
    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 672
    .line 673
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object p4

    .line 677
    check-cast p4, Landroid/os/BatteryStats$Uid$Pid;

    .line 678
    .line 679
    iget p4, p4, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    .line 680
    .line 681
    if-lez p4, :cond_1e

    .line 682
    .line 683
    move p1, p2

    .line 684
    goto :goto_14

    .line 685
    :cond_1e
    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 686
    .line 687
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 688
    .line 689
    .line 690
    :goto_14
    add-int/lit8 p3, p3, -0x1

    .line 691
    .line 692
    goto :goto_13

    .line 693
    :cond_1f
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 694
    .line 695
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 696
    .line 697
    .line 698
    move-result p3

    .line 699
    sub-int/2addr p3, p2

    .line 700
    :goto_15
    if-ltz p3, :cond_20

    .line 701
    .line 702
    iget-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 703
    .line 704
    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object p4

    .line 708
    check-cast p4, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;

    .line 709
    .line 710
    invoke-virtual {p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 711
    .line 712
    .line 713
    add-int/lit8 p3, p3, -0x1

    .line 714
    .line 715
    goto :goto_15

    .line 716
    :cond_20
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 717
    .line 718
    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 719
    .line 720
    .line 721
    const-wide/16 p3, 0x0

    .line 722
    .line 723
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallCount:J

    .line 724
    .line 725
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    .line 726
    .line 727
    invoke-virtual {p3}, Landroid/util/ArraySet;->clear()V

    .line 728
    .line 729
    .line 730
    const-wide/16 p3, 0x0

    .line 731
    .line 732
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    .line 733
    .line 734
    xor-int/lit8 p0, p1, 0x1

    .line 735
    .line 736
    return p0
.end method

.method public setProcessStateForTest(IJ)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcessState:I

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->ensureMultiStateCounters(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->ensureMultiStateCounters(J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mEnergyConsumerStatsConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    new-instance v0, Lcom/android/internal/power/EnergyConsumerStats;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mEnergyConsumerStatsConfig:Lcom/android/internal/power/EnergyConsumerStats$Config;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/android/internal/power/EnergyConsumerStats;-><init>(Lcom/android/internal/power/EnergyConsumerStats$Config;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    .line 75
    .line 76
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUidEnergyConsumerStats:Lcom/android/internal/power/EnergyConsumerStats;

    .line 77
    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/power/EnergyConsumerStats;->setState(IJ)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method
