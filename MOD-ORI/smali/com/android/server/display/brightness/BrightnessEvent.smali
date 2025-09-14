.class public final Lcom/android/server/display/brightness/BrightnessEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public mAdjustmentFlags:I

.field public mAutoBrightnessMode:I

.field public mAutomaticBrightnessEnabled:Z

.field public mBrightness:F

.field public mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public mDisplayId:I

.field public mDisplayPolicy:I

.field public mDisplayState:I

.field public mFlags:I

.field public mHbmMax:F

.field public mHbmMode:I

.field public mInitialBrightness:F

.field public mLux:F

.field public mPhysicalDisplayId:Ljava/lang/String;

.field public mPowerFactor:F

.field public mPreThresholdBrightness:F

.field public mPreThresholdLux:F

.field public mRbcStrength:I

.field public mReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public mRecommendedBrightness:F

.field public mThermalMax:F

.field public mTime:J

.field public mWasShortTermModelActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/display/brightness/BrightnessEvent;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 6
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    .line 7
    invoke-virtual {p0}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/BrightnessEvent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 6
    .line 7
    .line 8
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 15
    .line 16
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 19
    .line 20
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 21
    .line 22
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 23
    .line 24
    iget-wide v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    .line 27
    .line 28
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 31
    .line 32
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 35
    .line 36
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    .line 37
    .line 38
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    .line 39
    .line 40
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 41
    .line 42
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 43
    .line 44
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 45
    .line 46
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 47
    .line 48
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 49
    .line 50
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 51
    .line 52
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 53
    .line 54
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 55
    .line 56
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 57
    .line 58
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 59
    .line 60
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 61
    .line 62
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 63
    .line 64
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 65
    .line 66
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 67
    .line 68
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 69
    .line 70
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 71
    .line 72
    iget-boolean v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 75
    .line 76
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 77
    .line 78
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 79
    .line 80
    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 81
    .line 82
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 83
    .line 84
    iget-boolean v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 87
    .line 88
    iget-object v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 91
    .line 92
    iget p1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 93
    .line 94
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 95
    .line 96
    return-void
.end method

.method public final equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 28
    .line 29
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 34
    .line 35
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 36
    .line 37
    if-ne v0, v1, :cond_0

    .line 38
    .line 39
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ne v0, v1, :cond_0

    .line 52
    .line 53
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-ne v0, v1, :cond_0

    .line 66
    .line 67
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ne v0, v1, :cond_0

    .line 80
    .line 81
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-ne v0, v1, :cond_0

    .line 94
    .line 95
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 96
    .line 97
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-ne v0, v1, :cond_0

    .line 108
    .line 109
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 110
    .line 111
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 112
    .line 113
    if-ne v0, v1, :cond_0

    .line 114
    .line 115
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 116
    .line 117
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-ne v0, v1, :cond_0

    .line 128
    .line 129
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 130
    .line 131
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 132
    .line 133
    if-ne v0, v1, :cond_0

    .line 134
    .line 135
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 136
    .line 137
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 142
    .line 143
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-ne v0, v1, :cond_0

    .line 148
    .line 149
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 150
    .line 151
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ne v0, v1, :cond_0

    .line 162
    .line 163
    iget-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 164
    .line 165
    iget-boolean v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 166
    .line 167
    if-ne v0, v1, :cond_0

    .line 168
    .line 169
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 170
    .line 171
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 172
    .line 173
    if-ne v0, v1, :cond_0

    .line 174
    .line 175
    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 176
    .line 177
    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 178
    .line 179
    if-ne v0, v1, :cond_0

    .line 180
    .line 181
    iget-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 182
    .line 183
    iget-boolean v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 184
    .line 185
    if-ne v0, v1, :cond_0

    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    .line 197
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 198
    .line 199
    iget p1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 200
    .line 201
    if-ne p0, p1, :cond_0

    .line 202
    .line 203
    const/4 p0, 0x1

    .line 204
    goto :goto_0

    .line 205
    :cond_0
    const/4 p0, 0x0

    .line 206
    :goto_0
    return p0
.end method

.method public flagsToString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 7
    .line 8
    and-int/lit8 v1, v1, 0x8

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string/jumbo v1, "user_set "

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v2

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 23
    .line 24
    and-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string/jumbo v1, "rbc "

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object v1, v2

    .line 33
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 37
    .line 38
    and-int/lit8 v1, v1, 0x2

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const-string/jumbo v1, "invalid_lux "

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move-object v1, v2

    .line 47
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 51
    .line 52
    and-int/lit8 v1, v1, 0x4

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    const-string/jumbo v1, "doze_scale "

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    move-object v1, v2

    .line 61
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 65
    .line 66
    and-int/lit8 p0, p0, 0x20

    .line 67
    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    const-string/jumbo v2, "low_power_mode "

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public final reset()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 25
    .line 26
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    .line 27
    .line 28
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 29
    .line 30
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    .line 31
    .line 32
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 33
    .line 34
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    .line 35
    .line 36
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    .line 37
    .line 38
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 39
    .line 40
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    .line 42
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 43
    .line 44
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 45
    .line 46
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 47
    .line 48
    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 51
    .line 52
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 53
    .line 54
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    iput-boolean v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 60
    .line 61
    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 62
    .line 63
    return-void
.end method

.method public final setAdjustmentFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 2
    .line 3
    return-void
.end method

.method public final setAutomaticBrightnessEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setBrightness(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 2
    .line 3
    return-void
.end method

.method public final setDisplayBrightnessStrategyName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDisplayPolicy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDisplayState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 2
    .line 3
    return-void
.end method

.method public final setHbmMax(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 2
    .line 3
    return-void
.end method

.method public final setHbmMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 2
    .line 3
    return-void
.end method

.method public final setInitialBrightness(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    .line 2
    .line 3
    return-void
.end method

.method public final setPhysicalDisplayId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPowerFactor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 2
    .line 3
    return-void
.end method

.method public final setRbcStrength()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 3
    .line 4
    return-void
.end method

.method public final setReason(Lcom/android/server/display/brightness/BrightnessReason;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2
    .line 3
    return-void
.end method

.method public final setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setWasShortTermModelActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Z)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/display/brightness/BrightnessEvent;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "BrightnessEvent: disp="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", physDisp="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", displayState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    .line 2
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", displayPolicy="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    .line 3
    invoke-static {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", brt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4
    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    const-string v1, "(user_set)"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", initBrt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", rcmdBrt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", preBrt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", lux="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", preLux="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hbmMax="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hbmMode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 5
    invoke-static {p1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rbcStrength="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", thrmMax="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", powerFactor="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", wasShortTermModelActive="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", flags="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/android/server/display/brightness/BrightnessEvent;->flagsToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    .line 7
    invoke-virtual {p1, v1}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", autoBrightness="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", strategy="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", autoBrightnessMode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 8
    invoke-static {p0}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
