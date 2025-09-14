.class public final Lcom/android/server/display/NormalBrightnessModeController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAmbientLux:F

.field public mAutoBrightnessEnabled:Z

.field public mMaxBrightness:F

.field public mMaxBrightnessLimits:Ljava/util/Map;


# virtual methods
.method public final recalculateMaxBrightness()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 6
    .line 7
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->ADAPTIVE:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Map;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 24
    .line 25
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->DEFAULT:Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/Map;

    .line 32
    .line 33
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/util/Map$Entry;

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/Float;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget v5, p0, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    .line 71
    .line 72
    cmpl-float v5, v4, v5

    .line 73
    .line 74
    if-lez v5, :cond_2

    .line 75
    .line 76
    cmpg-float v5, v4, v2

    .line 77
    .line 78
    if-gez v5, :cond_2

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/lang/Float;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    move v2, v4

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget v0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    .line 93
    .line 94
    cmpl-float v0, v0, v1

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iput v1, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    .line 99
    .line 100
    const/4 p0, 0x1

    .line 101
    return p0

    .line 102
    :cond_4
    const/4 p0, 0x0

    .line 103
    return p0
.end method
