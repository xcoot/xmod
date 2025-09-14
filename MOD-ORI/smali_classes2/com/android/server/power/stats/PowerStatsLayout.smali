.class public Lcom/android/server/power/stats/PowerStatsLayout;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeviceDurationPosition:I

.field public mDeviceEnergyConsumerCount:I

.field public mDeviceEnergyConsumerPosition:I

.field public final mDeviceFormat:Ljava/lang/StringBuilder;

.field public mDevicePowerEstimatePosition:I

.field public mDeviceStatsArrayLength:I

.field public final mStateFormat:Ljava/lang/StringBuilder;

.field public mStateStatsArrayLength:I

.field public mUidDurationPosition:I

.field public mUidEnergyConsumerCount:I

.field public mUidEnergyConsumerPosition:I

.field public final mUidFormat:Ljava/lang/StringBuilder;

.field public mUidPowerEstimatePosition:I

.field public mUidStatsArrayLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 6
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 7
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidDurationPosition:I

    .line 8
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 9
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 15
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 16
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidDurationPosition:I

    .line 17
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 18
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 19
    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->fromExtras(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x20

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 p3, 0x3a

    .line 21
    .line 22
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    if-eq p2, p1, :cond_2

    .line 30
    .line 31
    const/16 p3, 0x5b

    .line 32
    .line 33
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 p2, 0x5d

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_2
    and-int/lit8 p2, p4, 0x4

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    const/16 p2, 0x70

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_3
    and-int/2addr p1, p4

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    const/16 p1, 0x3f

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method


# virtual methods
.method public final addDeviceSection(IILjava/lang/String;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 2
    .line 3
    add-int v1, v0, p1

    .line 4
    .line 5
    iput v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-static {p0, v0, p1, p3, p2}, Lcom/android/server/power/stats/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return v0
.end method

.method public final addDeviceSectionEnergyConsumers(I)V
    .locals 2

    .line 1
    const-string v0, "energy"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 11
    .line 12
    return-void
.end method

.method public addDeviceSectionPowerEstimate()V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string/jumbo v2, "power"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 11
    .line 12
    return-void
.end method

.method public final addUidSection(IILjava/lang/String;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 2
    .line 3
    add-int v1, v0, p1

    .line 4
    .line 5
    iput v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-static {p0, v0, p1, p3, p2}, Lcom/android/server/power/stats/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return v0
.end method

.method public fromExtras(Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    const-string v0, "dd"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 8
    .line 9
    const-string v0, "de"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    .line 16
    .line 17
    const-string v0, "dec"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 24
    .line 25
    const-string v0, "dp"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 32
    .line 33
    const-string/jumbo v0, "ud"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidDurationPosition:I

    .line 41
    .line 42
    const-string/jumbo v0, "ue"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 50
    .line 51
    const-string/jumbo v0, "uec"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerCount:I

    .line 59
    .line 60
    const-string/jumbo v0, "up"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput p1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 68
    .line 69
    return-void
.end method

.method public final getConsumedEnergy(I[J)J
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    .line 2
    .line 3
    add-int/2addr p0, p1

    .line 4
    aget-wide p0, p2, p0

    .line 5
    .line 6
    return-wide p0
.end method

.method public final setConsumedEnergy([JIJ)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    .line 2
    .line 3
    add-int/2addr p0, p2

    .line 4
    aput-wide p3, p1, p0

    .line 5
    .line 6
    return-void
.end method

.method public final setDevicePowerEstimate([JD)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 2
    .line 3
    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    mul-double/2addr p2, v0

    .line 9
    double-to-long p2, p2

    .line 10
    aput-wide p2, p1, p0

    .line 11
    .line 12
    return-void
.end method

.method public final setUidPowerEstimate([JD)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 2
    .line 3
    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    mul-double/2addr p2, v0

    .line 9
    double-to-long p2, p2

    .line 10
    aput-wide p2, p1, p0

    .line 11
    .line 12
    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 1
    const-string v0, "dd"

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "de"

    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "dec"

    .line 16
    .line 17
    iget v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v0, "dp"

    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "ud"

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidDurationPosition:I

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v0, "ue"

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v0, "uec"

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerCount:I

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v0, "up"

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "format-device"

    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "format-state"

    .line 79
    .line 80
    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string v0, "format-uid"

    .line 90
    .line 91
    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
