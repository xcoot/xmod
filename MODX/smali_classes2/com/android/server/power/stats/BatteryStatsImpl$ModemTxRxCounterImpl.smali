.class public final Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;
.super Landroid/os/BatteryStats$ModemTxRxCounter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats$ModemTxRxCounter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v1, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 13
    .line 14
    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 15
    .line 16
    invoke-direct {v3, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 17
    .line 18
    .line 19
    aput-object v3, v2, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final getRxByteCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTxByteCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ne v0, v2, :cond_1

    .line 9
    .line 10
    array-length v0, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    .line 14
    aget-object v3, v1, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    iput-wide v4, v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    new-instance p0, Landroid/os/ParcelFormatException;

    .line 63
    .line 64
    const-string p1, "inconsistent tx state lengths"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset()V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 26
    .line 27
    invoke-interface {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    iget-wide v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 16
    .line 17
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 24
    .line 25
    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 31
    .line 32
    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 38
    .line 39
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    iget-wide v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 16
    .line 17
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 24
    .line 25
    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 31
    .line 32
    iget-wide v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 38
    .line 39
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
