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

    .line 3
    if-nez v0, :cond_6

    .line 5
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 7
    const/high16 v1, -0x40800000    # -1.0f

    .line 9
    cmpl-float v1, v0, v1

    .line 11
    if-eqz v1, :cond_6

    .line 13
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 15
    iget-object v2, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 17
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    .line 26
    move-result v4

    .line 27
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 33
    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    .line 36
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    .line 39
    move-result v4

    .line 40
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 46
    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    .line 49
    :cond_1
    const v3, 0x3f19999a    # 0.6f

    .line 52
    mul-float/2addr v3, v0

    .line 53
    const/high16 v4, 0x41f00000    # 30.0f

    .line 55
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 58
    move-result v3

    .line 59
    sub-float v4, v0, v3

    .line 61
    add-float/2addr v0, v3

    .line 62
    cmpg-float v3, v4, p1

    .line 64
    const-string v5, "BrightnessMappingStrategy"

    .line 66
    if-gez v3, :cond_3

    .line 68
    cmpg-float v3, p1, v0

    .line 70
    if-gtz v3, :cond_3

    .line 72
    iget-boolean v1, v2, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 74
    if-eqz v1, :cond_2

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    const-string v2, "ShortTermModel: re-validate user data, ambient lux is "

    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, " < "

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v1, v0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 100
    :cond_2
    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "ShortTermModel: reset data, ambient lux is "

    .line 108
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 114
    const-string p1, "("

    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    const-string p1, ", "

    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    const-string v0, ")"

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v2

    .line 139
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 144
    iget-object v4, v1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    .line 146
    invoke-virtual {v4, v2}, Lcom/android/server/display/config/HysteresisLevels;->getDarkeningThreshold(F)F

    .line 149
    move-result v2

    .line 150
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 152
    invoke-virtual {v4, v5}, Lcom/android/server/display/config/HysteresisLevels;->getBrighteningThreshold(F)F

    .line 155
    move-result v4

    .line 156
    iget v5, v1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 158
    cmpg-float v6, v5, v2

    .line 160
    if-lez v6, :cond_4

    .line 162
    cmpl-float v5, v5, v4

    .line 164
    if-ltz v5, :cond_5

    .line 166
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    iget v3, v1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 173
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 176
    const-string v3, " ,hysteresis("

    .line 178
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    const-string v0, "AutomaticBrightnessController"

    .line 199
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, v1, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    new-instance v2, Lcom/android/server/power/PowerHistorian$MessageRecord;

    .line 209
    invoke-direct {v2, p1}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    .line 212
    const/4 p1, 0x3

    .line 213
    invoke-virtual {v0, p1, v2}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 216
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 219
    :cond_5
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

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

    .line 4
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 6
    const/high16 p1, -0x40800000    # -1.0f

    .line 8
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 10
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 12
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "mAnchor: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "\n mBrightness: "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "\n mIsValid: "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-boolean p0, p0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
