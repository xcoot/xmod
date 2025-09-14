.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mActive:Z

.field public mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mExcessivePower:Ljava/util/ArrayList;

.field public mForegroundTimeMs:J

.field public mNumAnrs:I

.field public mNumCrashes:I

.field public mStarts:I

.field public mSystemTimeMs:J

.field public mUserTimeMs:J


# virtual methods
.method public final countExcessivePowers()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final detach()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getForegroundTime(I)J
    .locals 0

    .line 1
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    .line 2
    .line 3
    return-wide p0
.end method

.method public final getNumAnrs(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 2
    .line 3
    return p0
.end method

.method public final getNumCrashes(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getStarts(I)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSystemTime(I)J
    .locals 0

    .line 1
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 2
    .line 3
    return-wide p0
.end method

.method public final getUserTime(I)J
    .locals 0

    .line 1
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 2
    .line 3
    return-wide p0
.end method

.method public final isActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 v1, 0x2710

    .line 12
    .line 13
    if-gt v0, v1, :cond_2

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    new-instance v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iput v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void

    .line 57
    :cond_2
    new-instance p0, Landroid/os/ParcelFormatException;

    .line 58
    .line 59
    const-string p1, "File corrupt: too many excessive power entries "

    .line 60
    .line 61
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final reset(JZ)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
