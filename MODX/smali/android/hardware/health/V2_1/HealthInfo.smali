.class public final Landroid/hardware/health/V2_1/HealthInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public batteryCapacityLevel:I

.field public batteryChargeTimeToFullNowSeconds:J

.field public batteryFullChargeDesignCapacityUah:I

.field public legacy:Landroid/hardware/health/V2_0/HealthInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/hardware/health/V2_0/HealthInfo;

    .line 6
    invoke-direct {v0}, Landroid/hardware/health/V2_0/HealthInfo;-><init>()V

    .line 9
    iput-object v0, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 14
    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 18
    iput v0, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 20
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/health/V2_1/HealthInfo;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/health/V2_1/HealthInfo;

    .line 20
    iget-object v2, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 22
    iget-object v3, p1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 30
    return v1

    .line 31
    :cond_3
    iget v2, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 33
    iget v3, p1, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 35
    if-eq v2, v3, :cond_4

    .line 37
    return v1

    .line 38
    :cond_4
    iget-wide v2, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 40
    iget-wide v4, p1, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 42
    cmp-long v2, v2, v4

    .line 44
    if-eqz v2, :cond_5

    .line 46
    return v1

    .line 47
    :cond_5
    iget p0, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 49
    iget p1, p1, Landroid/hardware/health/V2_1/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 51
    if-eq p0, p1, :cond_6

    .line 53
    return v1

    .line 54
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 13
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    iget-wide v2, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 26
    move-result v2

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 31
    iget p0, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 33
    invoke-static {p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/hardware/health/V2_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    .line 6
    const-wide/16 v0, 0x70

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 14
    const-wide/16 v0, 0x78

    .line 16
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 22
    const-wide/16 v0, 0x80

    .line 24
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 27
    move-result p1

    .line 28
    iput p1, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 30
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.legacy = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .batteryCapacityLevel = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 21
    const/4 v2, -0x1

    .line 22
    if-ne v1, v2, :cond_0

    .line 24
    const-string v1, "UNSUPPORTED"

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-nez v1, :cond_1

    .line 29
    const-string v1, "UNKNOWN"

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x1

    .line 33
    if-ne v1, v2, :cond_2

    .line 35
    const-string v1, "CRITICAL"

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v2, 0x2

    .line 39
    if-ne v1, v2, :cond_3

    .line 41
    const-string v1, "LOW"

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const/4 v2, 0x3

    .line 45
    if-ne v1, v2, :cond_4

    .line 47
    const-string v1, "NORMAL"

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/4 v2, 0x4

    .line 51
    if-ne v1, v2, :cond_5

    .line 53
    const-string v1, "HIGH"

    .line 55
    goto :goto_0

    .line 56
    :cond_5
    const/4 v2, 0x5

    .line 57
    if-ne v1, v2, :cond_6

    .line 59
    const-string v1, "FULL"

    .line 61
    goto :goto_0

    .line 62
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    const-string v3, "0x"

    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {v2, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .batteryChargeTimeToFullNowSeconds = "

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-wide v1, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .batteryFullChargeDesignCapacityUah = "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget p0, p0, Landroid/hardware/health/V2_1/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 93
    const-string/jumbo v1, "}"

    .line 96
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method
