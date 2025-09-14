.class public final Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;
.super Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

.field public mIsStart:Z

.field public mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;


# direct methods
.method public constructor <init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 9
    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    iput-object p0, p5, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 7
    .line 8
    iput-wide v1, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 11
    .line 12
    iput-boolean v1, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 15
    .line 16
    iput-object p0, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 17
    .line 18
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-class v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    check-cast p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 15
    .line 16
    iget-boolean v1, p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 19
    .line 20
    if-ne v1, v2, :cond_2

    .line 21
    .line 22
    iget-wide v1, p1, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 23
    .line 24
    iget-wide v3, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 25
    .line 26
    cmp-long v1, v1, v3

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    :cond_2
    return v0
.end method

.method public final getBatteryUsage(JJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-gez v0, :cond_3

    .line 10
    .line 11
    cmp-long v0, p3, p1

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 17
    .line 18
    iget-wide v0, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 19
    .line 20
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 25
    .line 26
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide p3

    .line 30
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 33
    .line 34
    iget-wide v2, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 35
    .line 36
    sub-long/2addr v0, v2

    .line 37
    sub-long/2addr p3, p1

    .line 38
    const-wide/16 p1, 0x0

    .line 39
    .line 40
    cmp-long p1, v0, p1

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    cmp-long p1, v0, p3

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 59
    .line 60
    .line 61
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 62
    .line 63
    long-to-double p2, p3

    .line 64
    mul-double/2addr p2, v2

    .line 65
    long-to-double v0, v0

    .line 66
    div-double/2addr p2, v0

    .line 67
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scaleInternal(D)V

    .line 68
    .line 69
    .line 70
    new-instance p0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 77
    .line 78
    :goto_0
    return-object p0

    .line 79
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 80
    .line 81
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v1

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UidStateEventWithBattery("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v2, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, ")"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final trimTo(J)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 17
    .line 18
    iget-wide v2, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage(JJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 47
    .line 48
    invoke-direct {v0, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 52
    .line 53
    :cond_1
    iput-wide p1, p0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method
