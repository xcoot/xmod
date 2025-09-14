.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public final mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

.field public mAutoBrightnessAdjustment:F

.field public mBrightnessSpline:Landroid/util/Spline;

.field public final mBrightnessSplineChangeTimes:Landroid/util/LongArray;

.field public final mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

.field public final mBrightnessToNitsSpline:Landroid/util/Spline;

.field public mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field public final mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field public final mMaxGamma:F

.field public final mMode:I

.field public final mNitsToBrightnessSpline:Landroid/util/Spline;

.field public final mPreviousBrightnessSplines:Ljava/util/List;


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
    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[FFI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroid/util/LongArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSplineChangeTimes:Landroid/util/LongArray;

    .line 17
    .line 18
    array-length v0, p2

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    array-length v0, p3

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v1

    .line 29
    :goto_0
    const-string v3, "Nits and brightness arrays must not be empty!"

    .line 30
    .line 31
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    array-length v0, p2

    .line 35
    array-length v3, p3

    .line 36
    if-ne v0, v3, :cond_1

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_1
    const-string v0, "Nits and brightness arrays must be the same length!"

    .line 40
    .line 41
    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 49
    .line 50
    .line 51
    const-string/jumbo v2, "nits"

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 55
    .line 56
    .line 57
    sget v1, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    .line 58
    .line 59
    int-to-float v1, v1

    .line 60
    const/high16 v2, 0x437f0000    # 255.0f

    .line 61
    .line 62
    div-float/2addr v1, v2

    .line 63
    const-string/jumbo v2, "brightness"

    .line 64
    .line 65
    .line 66
    invoke-static {p3, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 67
    .line 68
    .line 69
    iput p5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMode:I

    .line 70
    .line 71
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 72
    .line 73
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 74
    .line 75
    invoke-static {p2, p3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    iput-object p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    .line 80
    .line 81
    invoke-static {p3, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    iput-object p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    .line 86
    .line 87
    iget-object p5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    .line 88
    .line 89
    iput-object p5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    .line 90
    .line 91
    iput-object p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

    .line 92
    .line 93
    invoke-static {p2, p3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 94
    .line 95
    .line 96
    invoke-static {p3, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 100
    .line 101
    iget-boolean p2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 102
    .line 103
    if-eqz p2, :cond_2

    .line 104
    .line 105
    sget-object p2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 106
    .line 107
    const-string/jumbo p3, "physical mapping strategy"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p3}, Lcom/android/server/display/utils/Plog$SystemPlog;->start(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 116
    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public final addUserDataPoint(FF)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-gez v0, :cond_1

    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v1

    .line 25
    :goto_0
    const-string v2, "BrightnessMappingStrategy"

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p2, "addUserDataPoint: invalid user lux: "

    .line 32
    .line 33
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, [F

    .line 56
    .line 57
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, [F

    .line 60
    .line 61
    invoke-static {v3, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {v3, v0}, Landroid/util/Spline;->interpolate(F)F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 76
    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v4, "addUserDataPoint: ("

    .line 82
    .line 83
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, ","

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v4, ")"

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 110
    .line 111
    const-string v4, "add user data point"

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Lcom/android/server/display/utils/Plog$SystemPlog;->start(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string/jumbo v4, "user data point"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/display/utils/Plog$SystemPlog;->logPoint(Ljava/lang/String;FF)V

    .line 120
    .line 121
    .line 122
    const-string/jumbo v4, "current brightness"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v4, p1, v0}, Lcom/android/server/display/utils/Plog$SystemPlog;->logPoint(Ljava/lang/String;FF)V

    .line 126
    .line 127
    .line 128
    :cond_3
    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 129
    .line 130
    invoke-virtual {p0, v3, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    iget-boolean v4, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 135
    .line 136
    if-eqz v4, :cond_4

    .line 137
    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v5, "addUserDataPoint: "

    .line 141
    .line 142
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 146
    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v5, " => "

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    :cond_4
    iput v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 166
    .line 167
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 168
    .line 169
    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->addPoint(FFF)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    .line 176
    .line 177
    check-cast p1, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    const/4 p2, 0x5

    .line 184
    if-ne p1, p2, :cond_5

    .line 185
    .line 186
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    .line 187
    .line 188
    check-cast p1, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSplineChangeTimes:Landroid/util/LongArray;

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Landroid/util/LongArray;->remove(I)V

    .line 196
    .line 197
    .line 198
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    .line 199
    .line 200
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 201
    .line 202
    check-cast p1, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSplineChangeTimes:Landroid/util/LongArray;

    .line 208
    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide p1

    .line 213
    invoke-virtual {p0, p1, p2}, Landroid/util/LongArray;->add(J)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public final clearUserDataPoints()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v2, "clearUserDataPoints: "

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " => 0"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "BrightnessMappingStrategy"

    .line 36
    .line 37
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 41
    .line 42
    const-string/jumbo v2, "clear user data points"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/android/server/display/utils/Plog$SystemPlog;->start(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->clear()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public final computeSpline()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, [F

    .line 10
    .line 11
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, [F

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    new-array v3, v2, [F

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    :goto_0
    if-ge v5, v2, :cond_0

    .line 21
    .line 22
    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    .line 23
    .line 24
    aget v7, v0, v5

    .line 25
    .line 26
    invoke-virtual {v6, v7}, Landroid/util/Spline;->interpolate(F)F

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    aput v6, v3, v5

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 36
    .line 37
    if-eqz v2, :cond_6

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->isDefaultConfig()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_6

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, [F

    .line 54
    .line 55
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, [F

    .line 58
    .line 59
    array-length v5, v1

    .line 60
    move v6, v4

    .line 61
    move v7, v6

    .line 62
    :goto_1
    if-ge v6, v5, :cond_2

    .line 63
    .line 64
    aget v8, v1, v6

    .line 65
    .line 66
    sget v9, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 67
    .line 68
    int-to-float v9, v9

    .line 69
    cmpg-float v8, v8, v9

    .line 70
    .line 71
    if-gez v8, :cond_1

    .line 72
    .line 73
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    array-length v5, v3

    .line 79
    move v6, v4

    .line 80
    move v8, v6

    .line 81
    :goto_2
    if-ge v6, v5, :cond_4

    .line 82
    .line 83
    aget v9, v3, v6

    .line 84
    .line 85
    sget v10, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 86
    .line 87
    int-to-float v10, v10

    .line 88
    cmpl-float v9, v9, v10

    .line 89
    .line 90
    if-ltz v9, :cond_3

    .line 91
    .line 92
    add-int/lit8 v8, v8, 0x1

    .line 93
    .line 94
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    add-int v5, v7, v8

    .line 98
    .line 99
    new-array v6, v5, [F

    .line 100
    .line 101
    new-array v9, v5, [F

    .line 102
    .line 103
    invoke-static {v1, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v4, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .line 108
    .line 109
    array-length v0, v3

    .line 110
    sub-int/2addr v0, v8

    .line 111
    invoke-static {v3, v0, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    array-length v0, v2

    .line 115
    sub-int/2addr v0, v8

    .line 116
    invoke-static {v2, v0, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    new-array v0, v5, [F

    .line 120
    .line 121
    move v1, v4

    .line 122
    :goto_3
    if-ge v1, v5, :cond_5

    .line 123
    .line 124
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    .line 125
    .line 126
    aget v3, v9, v1

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    aput v2, v0, v1

    .line 133
    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {v6}, [F->clone()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, [F

    .line 142
    .line 143
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    move-object v3, v0

    .line 148
    check-cast v3, [F

    .line 149
    .line 150
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getOffsetAdjustedCurve([F[F)Landroid/util/Pair;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v1, [F

    .line 157
    .line 158
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v0, [F

    .line 161
    .line 162
    array-length v2, v0

    .line 163
    new-array v3, v2, [F

    .line 164
    .line 165
    :goto_4
    if-ge v4, v2, :cond_7

    .line 166
    .line 167
    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

    .line 168
    .line 169
    aget v6, v0, v4

    .line 170
    .line 171
    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    aput v5, v3, v4

    .line 176
    .line 177
    add-int/lit8 v4, v4, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_7
    invoke-static {v1, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string/jumbo v1, "computeSpline: mBrightnessSpline: "

    .line 189
    .line 190
    .line 191
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 195
    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    const-string v0, "BrightnessMappingStrategy"

    .line 204
    .line 205
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public final convertToAdjustedNits(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final convertToBrightness(F)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sget p1, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0, p1}, Landroid/util/MathUtils;->constrain(III)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final convertToNits(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    const-string v0, "PhysicalMappingStrategy"

    .line 2
    .line 3
    const-string v1, "  mConfig="

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "  mBrightnessSpline="

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "  mMaxGamma="

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 48
    .line 49
    const-string v2, "  mAutoBrightnessAdjustment="

    .line 50
    .line 51
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 56
    .line 57
    invoke-static {v0, v1, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->dump(Ljava/io/PrintWriter;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "  mDefaultConfig="

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "  mBrightnessRangeAdjustmentApplied=false"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "  shortTermModelTimeout="

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getShortTermModelTimeout()J

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v0, "  Previous short-term models (oldest to newest): "

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    .line 117
    .line 118
    check-cast v1, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ge v0, v1, :cond_0

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v2, "  Computed at "

    .line 129
    .line 130
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 134
    .line 135
    new-instance v3, Ljava/util/Date;

    .line 136
    .line 137
    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSplineChangeTimes:Landroid/util/LongArray;

    .line 138
    .line 139
    invoke-virtual {v4, v0}, Landroid/util/LongArray;->get(I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v4

    .line 143
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, ": "

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_0
    const-string p0, "  Difference between current config and default: "

    .line 169
    .line 170
    const-string v0, "  SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE="

    .line 171
    .line 172
    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_LEGACY_PERFORMANCE_MODE:Z

    .line 177
    .line 178
    invoke-static {p0, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, [F

    .line 10
    .line 11
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    check-cast v1, [F

    .line 15
    .line 16
    check-cast p0, [F

    .line 17
    .line 18
    array-length p0, p0

    .line 19
    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, [F

    .line 30
    .line 31
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, [F

    .line 34
    .line 35
    invoke-static {v2, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    aget v5, v0, v4

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_0

    .line 48
    .line 49
    aget v2, v2, v4

    .line 50
    .line 51
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    aget v2, p0, v4

    .line 58
    .line 59
    aget v1, v1, v4

    .line 60
    .line 61
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-lez v1, :cond_0

    .line 66
    .line 67
    const-string p0, "BrightnessMappingStrategy"

    .line 68
    .line 69
    const-string/jumbo p1, "default brightness is higher than backup brightness"

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    return-object p0

    .line 77
    :cond_0
    :goto_0
    aget v1, v0, v4

    .line 78
    .line 79
    const/high16 v2, 0x41f00000    # 30.0f

    .line 80
    .line 81
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-gez v1, :cond_1

    .line 86
    .line 87
    aget v1, v0, v4

    .line 88
    .line 89
    invoke-virtual {v3, v1}, Landroid/util/Spline;->interpolate(F)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    aput v1, p0, v4

    .line 94
    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 v1, 0x1

    .line 99
    :goto_1
    array-length v2, v0

    .line 100
    if-ge v1, v2, :cond_4

    .line 101
    .line 102
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 103
    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    aget v2, v0, v1

    .line 107
    .line 108
    sget v3, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 109
    .line 110
    int-to-float v3, v3

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-gez v2, :cond_3

    .line 116
    .line 117
    :cond_2
    add-int/lit8 v2, v1, -0x1

    .line 118
    .line 119
    aget v3, p0, v2

    .line 120
    .line 121
    aget v4, p0, v1

    .line 122
    .line 123
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-lez v3, :cond_3

    .line 128
    .line 129
    aget v2, p0, v2

    .line 130
    .line 131
    aput v2, p0, v1

    .line 132
    .line 133
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    new-instance v1, Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 137
    .line 138
    invoke-direct {v1, v0, p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getDescription()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {v1, p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0
.end method

.method public final getAutoBrightnessAdjustment()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 2
    .line 3
    return p0
.end method

.method public final getBrightness(FLjava/lang/String;ILandroid/util/Spline;)F
    .locals 1

    .line 2
    invoke-virtual {p4, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p4

    .line 3
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p4}, Landroid/util/Spline;->interpolate(F)F

    move-result p4

    .line 4
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p2}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2, p4}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    if-eq p3, p2, :cond_2

    .line 7
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p0, p3}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p0, p4}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result p4

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_2

    .line 10
    const-string p0, "BrightnessMappingStrategy"

    const-string/jumbo p2, "user point set, correction not applied"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    if-eqz p0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    .line 12
    invoke-static {p4, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-lez p2, :cond_3

    sget p2, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    int-to-float p2, p2

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_3

    move p4, p0

    :cond_3
    return p4
.end method

.method public final getBrightness(Ljava/lang/String;FI)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getBrightness(FLjava/lang/String;ILandroid/util/Spline;)F

    move-result p0

    return p0
.end method

.method public final getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBrightnessForSpline(FLandroid/util/Spline;)F
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const-string p2, "BrightnessMappingStrategy"

    .line 6
    .line 7
    const-string/jumbo v2, "getBrightnessForSpline: null"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 14
    .line 15
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getBrightness(FLjava/lang/String;ILandroid/util/Spline;)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getBrightness(FLjava/lang/String;ILandroid/util/Spline;)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final getBrightnessFromNits(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getBrightnessSpline()Landroid/util/Spline;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final getShortTermModelTimeout()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method public final hasUserDataPoints()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDefaultConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setAutoBrightnessAdjustment(F)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "BrightnessMappingStrategy"

    .line 17
    .line 18
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    .line 23
    const/high16 v3, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-static {p1, v0, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 30
    .line 31
    cmpl-float v0, p1, v0

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, " => "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 67
    .line 68
    const-string v1, "auto-brightness adjustment"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog$SystemPlog;->start(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x1

    .line 79
    return p0
.end method

.method public final setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 20
    .line 21
    const-string/jumbo v1, "brightness configuration"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog$SystemPlog;->start(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0
.end method
