.class public final Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method public static clampFrequency(Landroid/os/VibratorInfo;F)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpl-float v2, p1, v1

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Float;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_1
    return v1
.end method


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 10

    .line 1
    check-cast p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ge v0, p0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 15
    .line 16
    instance-of v2, v1, Landroid/os/vibrator/RampSegment;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    check-cast v1, Landroid/os/vibrator/RampSegment;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {p1, v2}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {v1}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {p1, v2}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    new-instance v2, Landroid/os/vibrator/RampSegment;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    :goto_1
    move v4, v3

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    invoke-virtual {v4, v6}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxAmplitude(F)F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v3, v4}, Landroid/util/MathUtils;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    goto :goto_1

    .line 65
    :goto_2
    invoke-virtual {v1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_1

    .line 78
    .line 79
    :goto_3
    move v5, v3

    .line 80
    goto :goto_4

    .line 81
    :cond_1
    invoke-virtual {v5, v7}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxAmplitude(F)F

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-static {v3, v5}, Landroid/util/MathUtils;->min(FF)F

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    goto :goto_3

    .line 90
    :goto_4
    invoke-virtual {v1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    .line 91
    .line 92
    .line 93
    move-result-wide v8

    .line 94
    long-to-int v8, v8

    .line 95
    move-object v3, v2

    .line 96
    invoke-direct/range {v3 .. v8}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    return p3
.end method
