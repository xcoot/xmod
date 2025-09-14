.class public final Lcom/android/server/display/layout/Layout$Display;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAddress:Landroid/view/DisplayAddress;

.field public final mDisplayGroupName:Ljava/lang/String;

.field public final mIsEnabled:Z

.field public final mLeadDisplayAddress:Landroid/view/DisplayAddress;

.field public mLeadDisplayId:I

.field public final mLogicalDisplayId:I

.field public final mPosition:I

.field public final mPowerThrottlingMapId:Ljava/lang/String;

.field public final mRefreshRateZoneId:Ljava/lang/String;

.field public final mThermalBrightnessThrottlingMapId:Ljava/lang/String;

.field public final mThermalRefreshRateThrottlingMapId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/DisplayAddress;IZLjava/lang/String;Ljava/lang/String;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 6
    iput p2, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 8
    iput-boolean p3, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 10
    iput-object p4, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 12
    iput p6, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    .line 14
    iput-object p5, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    .line 16
    iput-object p7, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    .line 18
    iput-object p8, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    .line 20
    iput-object p9, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    .line 22
    iput-object p10, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    .line 27
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/display/layout/Layout$Display;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/display/layout/Layout$Display;

    .line 9
    iget-boolean v0, p1, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 11
    iget-boolean v2, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 13
    if-ne v0, v2, :cond_1

    .line 15
    iget v0, p1, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    .line 17
    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    .line 19
    if-ne v0, v2, :cond_1

    .line 21
    iget v0, p1, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 23
    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 25
    if-ne v0, v2, :cond_1

    .line 27
    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 29
    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 39
    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    .line 49
    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    .line 51
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p1, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    .line 61
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 67
    iget v0, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    .line 69
    iget v2, p1, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    .line 71
    if-ne v0, v2, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    .line 75
    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    .line 77
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    .line 85
    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    .line 87
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_1

    .line 93
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    .line 95
    iget-object p1, p1, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    .line 97
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_1

    .line 103
    const/4 v1, 0x1

    .line 104
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1f

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    .line 13
    add-int/2addr v0, v1

    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 18
    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 35
    move-result v0

    .line 36
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    .line 41
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 44
    move-result v1

    .line 45
    add-int/2addr v1, v0

    .line 46
    mul-int/lit8 v1, v1, 0x1f

    .line 48
    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    .line 50
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 53
    move-result v0

    .line 54
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    .line 59
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    .line 64
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    mul-int/lit8 v1, v1, 0x1f

    .line 71
    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 76
    move-result v0

    .line 77
    add-int/2addr v0, v1

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    .line 82
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 85
    move-result p0

    .line 86
    add-int/2addr p0, v0

    .line 87
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{dispId: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "("

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-boolean v1, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 21
    if-eqz v1, :cond_0

    .line 23
    const-string v1, "ON"

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v1, "OFF"

    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "), displayGroupName: "

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", addr: "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v1, -0x1

    .line 52
    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    .line 54
    if-ne v2, v1, :cond_1

    .line 56
    const-string v1, ""

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const-string v1, ", position: "

    .line 61
    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", mThermalBrightnessThrottlingMapId: "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", mRefreshRateZoneId: "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", mLeadDisplayId: "

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", mLeadDisplayAddress: "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", mThermalRefreshRateThrottlingMapId: "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", mPowerThrottlingMapId: "

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    .line 125
    const-string/jumbo v1, "}"

    .line 128
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    return-object p0
.end method
