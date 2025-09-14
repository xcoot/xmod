.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBrightness:F

.field public mLastUserBrightnessTime:J

.field public mLux:F

.field public mWeight:F


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 6
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 8
    iput p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 10
    iput-wide p4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    .line 12
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 3
    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 5
    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 7
    iget v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 9
    iget-wide v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;-><init>(FFFJ)V

    .line 15
    return-object v6
.end method

.method public getBrightness()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 3
    return p0
.end method

.method public getLastUserBrightnessTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    .line 3
    return-wide v0
.end method

.method public getLux()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 3
    return p0
.end method

.method public getWeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 3
    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    .line 25
    return-void
.end method

.method public set(FFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 3
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 5
    iput p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 7
    return-void
.end method

.method public setBrightness(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 3
    return-void
.end method

.method public setLastUserBrightnessTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    .line 9
    move-result v1

    .line 10
    const/high16 v2, 0x41200000    # 10.0f

    .line 12
    cmpg-float v2, v1, v2

    .line 14
    if-gez v2, :cond_0

    .line 16
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 19
    move-result-object v1

    .line 20
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "%.1f"

    .line 26
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    .line 33
    cmpg-float v2, v1, v2

    .line 35
    const-string v3, "%d"

    .line 37
    if-gez v2, :cond_1

    .line 39
    float-to-int v1, v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v1

    .line 44
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 55
    cmpg-float v2, v1, v2

    .line 57
    if-gez v2, :cond_2

    .line 59
    float-to-int v1, v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v1

    .line 64
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/high16 v2, 0x45610000    # 3600.0f

    .line 75
    div-float/2addr v1, v2

    .line 76
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object v1

    .line 80
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    const-string v2, "%.1fh"

    .line 86
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    :goto_0
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 92
    float-to-int p0, p0

    .line 93
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object p0

    .line 97
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 100
    move-result-object p0

    .line 101
    const-string v1, "%d:%s"

    .line 103
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 11
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 16
    iget-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 21
    return-void
.end method
