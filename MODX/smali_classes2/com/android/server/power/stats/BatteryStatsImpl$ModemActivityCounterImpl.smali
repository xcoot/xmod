.class public final Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;
.super Landroid/os/BatteryStats$ModemActivityCounter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

.field public final mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

.field public final mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/BatteryStats$ModemActivityCounter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
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
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 2
    .line 3
    iget-wide v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 9
    .line 10
    iget-wide v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
