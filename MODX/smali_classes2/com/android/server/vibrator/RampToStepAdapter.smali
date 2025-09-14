.class public final Lcom/android/server/vibrator/RampToStepAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# instance fields
.field public final mStepDuration:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    .line 5
    .line 6
    return-void
.end method

.method public static fillEmptyFrequency(Landroid/os/VibratorInfo;F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    cmpl-float v0, p1, v1

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :cond_1
    return p1
.end method


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-wide/16 v1, 0x400

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return p3

    .line 12
    :cond_0
    move-object/from16 v1, p2

    .line 13
    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v2

    .line 22
    move v5, v3

    .line 23
    move/from16 v2, p3

    .line 24
    .line 25
    :goto_0
    if-ge v5, v4, :cond_5

    .line 26
    .line 27
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    .line 32
    .line 33
    instance-of v7, v6, Landroid/os/vibrator/RampSegment;

    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    if-nez v7, :cond_1

    .line 37
    .line 38
    move-object/from16 v11, p0

    .line 39
    .line 40
    move v6, v8

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    check-cast v6, Landroid/os/vibrator/RampSegment;

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    invoke-static {v7, v9}, Ljava/lang/Float;->compare(FF)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-nez v7, :cond_2

    .line 58
    .line 59
    new-array v7, v8, [Landroid/os/vibrator/StepSegment;

    .line 60
    .line 61
    new-instance v9, Landroid/os/vibrator/StepSegment;

    .line 62
    .line 63
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    invoke-static {v0, v11}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    .line 76
    .line 77
    .line 78
    move-result-wide v12

    .line 79
    long-to-int v6, v12

    .line 80
    invoke-direct {v9, v10, v11, v6}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 81
    .line 82
    .line 83
    aput-object v9, v7, v3

    .line 84
    .line 85
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    move-object/from16 v11, p0

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    .line 98
    .line 99
    .line 100
    move-result-wide v9

    .line 101
    move-object/from16 v11, p0

    .line 102
    .line 103
    iget v12, v11, Lcom/android/server/vibrator/RampToStepAdapter;->mStepDuration:I

    .line 104
    .line 105
    int-to-long v13, v12

    .line 106
    add-long/2addr v9, v13

    .line 107
    const-wide/16 v13, 0x1

    .line 108
    .line 109
    sub-long/2addr v9, v13

    .line 110
    long-to-int v9, v9

    .line 111
    div-int/2addr v9, v12

    .line 112
    move v10, v3

    .line 113
    :goto_1
    add-int/lit8 v13, v9, -0x1

    .line 114
    .line 115
    if-ge v10, v13, :cond_3

    .line 116
    .line 117
    int-to-float v13, v10

    .line 118
    int-to-float v14, v9

    .line 119
    div-float/2addr v13, v14

    .line 120
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    invoke-static {v0, v14}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    invoke-static {v0, v15}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    new-instance v3, Landroid/os/vibrator/StepSegment;

    .line 137
    .line 138
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    move/from16 v16, v9

    .line 143
    .line 144
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    invoke-static {v8, v9, v13}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    invoke-static {v14, v15, v13}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    invoke-direct {v3, v8, v9, v12}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    add-int/lit8 v10, v10, 0x1

    .line 163
    .line 164
    move/from16 v9, v16

    .line 165
    .line 166
    const/4 v3, 0x0

    .line 167
    const/4 v8, 0x1

    .line 168
    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getDuration()J

    .line 170
    .line 171
    .line 172
    move-result-wide v8

    .line 173
    long-to-int v3, v8

    .line 174
    mul-int/2addr v12, v13

    .line 175
    sub-int/2addr v3, v12

    .line 176
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    invoke-static {v0, v8}, Lcom/android/server/vibrator/RampToStepAdapter;->fillEmptyFrequency(Landroid/os/VibratorInfo;F)F

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    new-instance v9, Landroid/os/vibrator/StepSegment;

    .line 185
    .line 186
    invoke-virtual {v6}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    invoke-direct {v9, v6, v8, v3}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-object v6, v7

    .line 197
    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 201
    .line 202
    .line 203
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    const/4 v6, 0x1

    .line 208
    sub-int/2addr v3, v6

    .line 209
    if-le v2, v5, :cond_4

    .line 210
    .line 211
    add-int/2addr v2, v3

    .line 212
    :cond_4
    add-int/2addr v5, v3

    .line 213
    add-int/2addr v4, v3

    .line 214
    :goto_3
    add-int/2addr v5, v6

    .line 215
    const/4 v3, 0x0

    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_5
    return v2
.end method
