.class public final Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
.super Landroid/os/BatteryStats$ControllerActivityCounter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mNumTxStates:I

.field public final mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mProcessState:I

.field public mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;


# direct methods
.method public static -$$Nest$mgetOrCreateRxTimeCounter(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 12
    .line 13
    return-object p0
.end method

.method public static -$$Nest$mgetOrCreateTxTimeCounters(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    .line 6
    .line 7
    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    .line 13
    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    aput-object v2, v1, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 28
    .line 29
    return-object p0
.end method

.method public static -$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 23
    .line 24
    array-length v2, v1

    .line 25
    if-ge v0, v2, :cond_2

    .line 26
    .line 27
    aget-object v1, v1, v0

    .line 28
    .line 29
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method public constructor <init>(ILcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 11
    .line 12
    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 16
    .line 17
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 18
    .line 19
    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 23
    .line 24
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 25
    .line 26
    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 30
    .line 31
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 32
    .line 33
    invoke-direct {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 37
    .line 38
    return-void
.end method

.method public static writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 9
    .line 10
    invoke-virtual {p1, p0, v0}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method


# virtual methods
.method public final createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)V

    .line 13
    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    .line 16
    .line 17
    invoke-static {p0}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iget-object v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 22
    .line 23
    invoke-virtual {v3, p0, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 31
    .line 32
    .line 33
    return-object v2
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/power/stats/BatteryStatsImpl;->ZERO_LONG_COUNTER:Lcom/android/server/power/stats/BatteryStatsImpl$1;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPowerCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/power/stats/BatteryStatsImpl;->ZERO_LONG_COUNTER:Lcom/android/server/power/stats/BatteryStatsImpl$1;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/power/stats/BatteryStatsImpl;->ZERO_LONG_COUNTER_ARRAY:[Landroid/os/BatteryStats$LongCounter;

    .line 6
    .line 7
    :cond_0
    return-object p0
.end method

.method public final readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v2

    .line 22
    :goto_0
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iput-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    iput-wide v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {p1, v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move-object v0, v2

    .line 66
    :goto_1
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 69
    .line 70
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    const/4 v4, 0x0

    .line 83
    if-ne v3, v1, :cond_2

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    move v1, v4

    .line 88
    :goto_2
    new-array v5, v3, [Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 89
    .line 90
    move v6, v4

    .line 91
    :goto_3
    if-ge v6, v3, :cond_4

    .line 92
    .line 93
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 94
    .line 95
    invoke-virtual {v7}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    invoke-static {p1, v0, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;J)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    if-eqz v7, :cond_3

    .line 104
    .line 105
    aput-object v7, v5, v6

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_3
    move v1, v4

    .line 109
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    if-eqz v1, :cond_5

    .line 113
    .line 114
    move-object v2, v5

    .line 115
    :cond_5
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 127
    .line 128
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 138
    .line 139
    return-void
.end method

.method public final reset(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(JZ)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(JZ)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 18
    .line 19
    invoke-static {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 23
    .line 24
    invoke-static {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;J)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(JZ)Z

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(JZ)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 7
    .line 8
    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 14
    .line 15
    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 32
    .line 33
    .line 34
    array-length v2, v0

    .line 35
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    array-length v2, v0

    .line 39
    move v3, v1

    .line 40
    :goto_0
    if-ge v3, v2, :cond_1

    .line 41
    .line 42
    aget-object v4, v0, v3

    .line 43
    .line 44
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 45
    .line 46
    invoke-virtual {v4, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 56
    .line 57
    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 63
    .line 64
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 7
    .line 8
    iget-wide v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 14
    .line 15
    iget-wide v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 32
    .line 33
    .line 34
    array-length v1, p2

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    array-length v1, p2

    .line 39
    move v2, v0

    .line 40
    :goto_0
    if-ge v2, v1, :cond_1

    .line 41
    .line 42
    aget-object v3, p2, v2

    .line 43
    .line 44
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 45
    .line 46
    invoke-virtual {v3, p1, v0}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 56
    .line 57
    iget-wide v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 63
    .line 64
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
