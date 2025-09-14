.class public final Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAnchor:F

.field public mBrightness:F

.field public mIsValid:Z

.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public static -$$Nest$mmaybeReset(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;F)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 6
    .line 7
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    .line 9
    cmpl-float v1, v0, v1

    .line 10
    .line 11
    if-eqz v1, :cond_6

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    .line 47
    .line 48
    .line 49
    :cond_1
    const v3, 0x3f19999a    # 0.6f

    .line 50
    .line 51
    .line 52
    mul-float/2addr v3, v0

    .line 53
    const/high16 v4, 0x41f00000    # 30.0f

    .line 54
    .line 55
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sub-float v4, v0, v3

    .line 60
    .line 61
    add-float/2addr v0, v3

    .line 62
    cmpg-float v3, v4, p1

    .line 63
    .line 64
    const-string v5, "BrightnessMappingStrategy"

    .line 65
    .line 66
    if-gez v3, :cond_3

    .line 67
    .line 68
    cmpg-float v3, p1, v0

    .line 69
    .line 70
    if-gtz v3, :cond_3

    .line 71
    .line 72
    iget-boolean v1, v2, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "ShortTermModel: re-validate user data, ambient lux is "

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, " < "

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v3, "ShortTermModel: reset data, ambient lux is "

    .line 107
    .line 108
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p1, "("

    .line 115
    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p1, ", "

    .line 123
    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v0, ")"

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 143
    .line 144
    iget-object v4, v1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    .line 145
    .line 146
    invoke-virtual {v4, v2}, Lcom/android/server/display/config/HysteresisLevels;->getDarkeningThreshold(F)F

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Lcom/android/server/display/config/HysteresisLevels;->getBrighteningThreshold(F)F

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    iget v5, v1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 157
    .line 158
    cmpg-float v6, v5, v2

    .line 159
    .line 160
    if-lez v6, :cond_4

    .line 161
    .line 162
    cmpl-float v5, v5, v4

    .line 163
    .line 164
    if-ltz v5, :cond_5

    .line 165
    .line 166
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget v3, v1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 172
    .line 173
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v3, " ,hysteresis("

    .line 177
    .line 178
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    const-string v0, "AutomaticBrightnessController"

    .line 198
    .line 199
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    iget-object v0, v1, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance v2, Lcom/android/server/power/PowerHistorian$MessageRecord;

    .line 208
    .line 209
    invoke-direct {v2, p1}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const/4 p1, 0x3

    .line 213
    invoke-virtual {v0, p1, v2}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 217
    .line 218
    .line 219
    :cond_5
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_6
    const/4 p0, 0x0

    .line 223
    :goto_1
    return p0
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 5
    .line 6
    const/high16 p1, -0x40800000    # -1.0f

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 9
    .line 10
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "mAnchor: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "\n mBrightness: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "\n mIsValid: "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
