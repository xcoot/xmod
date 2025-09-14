.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBrightness:F

.field public mWeight:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getBrightness()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    .line 2
    .line 3
    return p0
.end method

.method public getWeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    .line 2
    .line 3
    return p0
.end method

.method public set(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    .line 4
    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    .line 2
    .line 3
    const/high16 v1, 0x41200000    # 10.0f

    .line 4
    .line 5
    cmpg-float v1, v0, v1

    .line 6
    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "%.1f"

    .line 18
    .line 19
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    .line 25
    .line 26
    cmpg-float v1, v0, v1

    .line 27
    .line 28
    const-string v2, "%d"

    .line 29
    .line 30
    if-gez v1, :cond_1

    .line 31
    .line 32
    float-to-int v0, v0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 47
    .line 48
    cmpg-float v1, v0, v1

    .line 49
    .line 50
    if-gez v1, :cond_2

    .line 51
    .line 52
    float-to-int v0, v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/high16 v1, 0x45610000    # 3600.0f

    .line 67
    .line 68
    div-float/2addr v0, v1

    .line 69
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "%.1fh"

    .line 78
    .line 79
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    .line 89
    .line 90
    float-to-int p0, p0

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, ":"

    .line 99
    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const/4 v0, 0x0

    .line 111
    new-array v0, v0, [Ljava/lang/Object;

    .line 112
    .line 113
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0
.end method

.method public updateWeight(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    .line 2
    .line 3
    add-float/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    .line 5
    .line 6
    return-void
.end method

.method public valid()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method
