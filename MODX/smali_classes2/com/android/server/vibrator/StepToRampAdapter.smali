.class public final Lcom/android/server/vibrator/StepToRampAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method public static convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    :goto_0
    move v5, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    cmpl-float v1, v0, v1

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    new-instance p0, Landroid/os/vibrator/RampSegment;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    long-to-int v6, v0

    .line 42
    move-object v1, p0

    .line 43
    move v4, v5

    .line 44
    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 5

    .line 1
    const-wide/16 v0, 0x400

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return p3

    .line 10
    :cond_0
    check-cast p2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :goto_0
    if-ge v1, p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 25
    .line 26
    instance-of v3, v2, Landroid/os/vibrator/StepSegment;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    check-cast v2, Landroid/os/vibrator/StepSegment;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    cmpl-float v3, v3, v4

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    :goto_1
    if-ge v0, p0, :cond_5

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    instance-of v1, v1, Landroid/os/vibrator/RampSegment;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    add-int/lit8 v1, v0, -0x1

    .line 62
    .line 63
    :goto_2
    if-ltz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 70
    .line 71
    instance-of v2, v2, Landroid/os/vibrator/StepSegment;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/os/vibrator/StepSegment;

    .line 80
    .line 81
    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v1, v1, -0x1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .line 92
    .line 93
    :goto_3
    if-ge v1, p0, :cond_4

    .line 94
    .line 95
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 100
    .line 101
    instance-of v2, v2, Landroid/os/vibrator/StepSegment;

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroid/os/vibrator/StepSegment;

    .line 110
    .line 111
    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    return p3
.end method
