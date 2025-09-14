.class public final Lcom/android/server/vibrator/VibrationScaler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SCALE_LEVEL_NONE:Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;


# instance fields
.field public final mAdaptiveHapticsScales:Landroid/util/SparseArray;

.field public final mDefaultVibrationAmplitude:I

.field public final mScaleLevels:Landroid/util/SparseArray;

.field public final mSettingsController:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/vibrator/VibrationScaler;->SCALE_LEVEL_NONE:Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const p2, 0x10e0082

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput p1, p0, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    .line 25
    .line 26
    new-instance p1, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationScaler;->mScaleLevels:Landroid/util/SparseArray;

    .line 32
    .line 33
    new-instance p0, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    .line 34
    .line 35
    const p2, 0x3f19999a    # 0.6f

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    .line 39
    .line 40
    .line 41
    const/4 p2, -0x2

    .line 42
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    .line 46
    .line 47
    const p2, 0x3f4ccccd    # 0.8f

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    .line 51
    .line 52
    .line 53
    const/4 p2, -0x1

    .line 54
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lcom/android/server/vibrator/VibrationScaler;->SCALE_LEVEL_NONE:Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    .line 64
    .line 65
    const p2, 0x3f99999a    # 1.2f

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    .line 69
    .line 70
    .line 71
    const/4 p2, 0x1

    .line 72
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance p0, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    .line 76
    .line 77
    const p2, 0x3fb33333    # 1.4f

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p2}, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;-><init>(F)V

    .line 81
    .line 82
    .line 83
    const/4 p2, 0x2

    .line 84
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static scaleLevelToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "VERY_HIGH"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string p0, "HIGH"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-string p0, "NONE"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const-string p0, "LOW"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    const-string p0, "VERY_LOW"

    .line 33
    .line 34
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    const-string v0, "VibrationScaler:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "defaultVibrationAmplitude = "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "ScaleLevels:"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    move v1, v0

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationScaler;->mScaleLevels:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v3, " = "

    .line 45
    .line 46
    if-ge v1, v2, :cond_0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationScaler;->mScaleLevels:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationScaler;->mScaleLevels:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 91
    .line 92
    .line 93
    const-string v1, "AdaptiveHapticsScales:"

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 99
    .line 100
    .line 101
    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-ge v0, v1, :cond_1

    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Ljava/lang/Float;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 142
    .line 143
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const-string v5, "%.2f"

    .line 148
    .line 149
    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public final getAdaptiveHapticsScale(I)F
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/vibrator/Flags;->adaptiveHapticsEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Float;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :cond_0
    return v1
.end method

.method public final getEffectStrength(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    if-eq v0, p0, :cond_2

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    if-eq v0, p1, :cond_3

    .line 20
    .line 21
    const/4 p0, 0x3

    .line 22
    if-eq v0, p0, :cond_1

    .line 23
    .line 24
    const-string p0, "Got unexpected vibration intensity: "

    .line 25
    .line 26
    const-string v1, "VibrationScaler"

    .line 27
    .line 28
    invoke-static {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    move p0, p1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    :cond_3
    :goto_0
    return p0
.end method

.method public final getScaleLevel(I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    sub-int/2addr p0, v0

    .line 18
    const/4 v0, -0x2

    .line 19
    if-lt p0, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    if-gt p0, v0, :cond_1

    .line 23
    .line 24
    return p0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Error in scaling calculations, ended up with invalid scale level "

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, " for vibration with usage "

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "VibrationScaler"

    .line 48
    .line 49
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VibrationScaler{mScaleLevels="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationScaler;->mScaleLevels:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mDefaultVibrationAmplitude="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mAdaptiveHapticsScales="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
