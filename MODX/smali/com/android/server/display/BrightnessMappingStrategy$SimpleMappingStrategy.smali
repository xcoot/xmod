.class public final Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAutoBrightnessAdjustment:F

.field public final mBrightness:[F

.field public final mLux:[F

.field public final mMaxGamma:F

.field public final mMode:I

.field public final mShortTermModelTimeout:J

.field public mSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>([F[FFI)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    array-length v0, p2

    .line 10
    if-eqz v0, :cond_0

    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    const-string v3, "Lux and brightness arrays must not be empty!"

    .line 17
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 20
    array-length v0, p1

    .line 21
    array-length v3, p2

    .line 22
    if-ne v0, v3, :cond_1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v1, v2

    .line 26
    :goto_1
    const-string v0, "Lux and brightness arrays must be the same length!"

    .line 28
    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 31
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 34
    const-string/jumbo v1, "lux"

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {p1, v3, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 41
    const/high16 v0, 0x4f000000

    .line 43
    const-string/jumbo v1, "brightness"

    .line 46
    invoke-static {p2, v3, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 49
    array-length v0, p2

    .line 50
    new-array v1, v0, [F

    .line 52
    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 54
    new-array v1, v0, [F

    .line 56
    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 58
    :goto_2
    if-ge v2, v0, :cond_2

    .line 60
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 62
    aget v4, p1, v2

    .line 64
    aput v4, v1, v2

    .line 66
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 68
    aget v4, p2, v2

    .line 70
    aput v4, v1, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    .line 77
    iput v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 79
    iget-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 81
    if-eqz p1, :cond_3

    .line 83
    sget-object p1, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 85
    const-string/jumbo p2, "simple mapping strategy"

    .line 88
    invoke-virtual {p1, p2}, Lcom/android/server/display/utils/Plog$SystemPlog;->start(Ljava/lang/String;)V

    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline$1()V

    .line 94
    const-wide/32 p1, 0x927c0

    .line 97
    iput-wide p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    .line 99
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMode:I

    .line 101
    return-void
.end method


# virtual methods
.method public final addUserDataPoint(FF)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 5
    move-result v0

    .line 6
    if-ltz v0, :cond_1

    .line 8
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    sget v0, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 14
    int-to-float v0, v0

    .line 15
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 18
    move-result v0

    .line 19
    if-gez v0, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    const-string v1, "BrightnessMappingStrategy"

    .line 26
    if-nez v0, :cond_2

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    const-string p2, "addUserDataPoint: invalid user lux: "

    .line 32
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 48
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 50
    invoke-static {v0, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 57
    move-result v0

    .line 58
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 60
    if-eqz v2, :cond_3

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    const-string v3, "addUserDataPoint: ("

    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, ","

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    const-string v3, ")"

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 94
    const-string v3, "add user data point"

    .line 96
    invoke-virtual {v2, v3}, Lcom/android/server/display/utils/Plog$SystemPlog;->start(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v3, "user data point"

    .line 102
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog$SystemPlog;->logPoint(Ljava/lang/String;FF)V

    .line 105
    const-string/jumbo v3, "current brightness"

    .line 108
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/display/utils/Plog$SystemPlog;->logPoint(Ljava/lang/String;FF)V

    .line 111
    :cond_3
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    .line 113
    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    .line 116
    move-result v2

    .line 117
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 119
    if-eqz v3, :cond_4

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    const-string v4, "addUserDataPoint: "

    .line 125
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    const-string v4, " => "

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_4
    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 150
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 152
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->addPoint(FFF)V

    .line 155
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline$1()V

    .line 158
    return-void
.end method

.method public final clearUserDataPoints()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 9
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v2, "clearUserDataPoints: "

    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, " => 0"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    const-string v2, "BrightnessMappingStrategy"

    .line 37
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v1, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 42
    const-string/jumbo v2, "clear user data points"

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/server/display/utils/Plog$SystemPlog;->start(Ljava/lang/String;)V

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 51
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->clear()V

    .line 54
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline$1()V

    .line 57
    :cond_1
    return-void
.end method

.method public final computeSpline$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 3
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getOffsetAdjustedCurve([F[F)Landroid/util/Pair;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    check-cast v1, [F

    .line 13
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 15
    check-cast v0, [F

    .line 17
    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    .line 23
    return-void
.end method

.method public final convertToAdjustedNits(F)F
    .locals 0

    .line 1
    const/high16 p0, -0x40800000    # -1.0f

    .line 3
    return p0
.end method

.method public final convertToBrightness(F)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final convertToNits(F)F
    .locals 0

    .line 1
    const/high16 p0, -0x40800000    # -1.0f

    .line 3
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "SimpleMappingStrategy"

    .line 3
    const-string v1, "  mSpline="

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "  mMaxGamma="

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    .line 30
    const-string v2, "  mAutoBrightnessAdjustment="

    .line 32
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 38
    invoke-static {v0, v1, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 41
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->dump(Ljava/io/PrintWriter;)V

    .line 46
    return-void
.end method

.method public final getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getAutoBrightnessAdjustment()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 3
    return p0
.end method

.method public final getBrightness(Ljava/lang/String;FI)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    .line 3
    invoke-virtual {p0, p2}, Landroid/util/Spline;->interpolate(F)F

    .line 6
    move-result p0

    .line 7
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 16
    move-result p3

    .line 17
    if-lez p3, :cond_0

    .line 19
    sget p3, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 21
    int-to-float p3, p3

    .line 22
    invoke-static {p2, p3}, Ljava/lang/Float;->compare(FF)I

    .line 25
    move-result p2

    .line 26
    if-gez p2, :cond_0

    .line 28
    move p0, p1

    .line 29
    :cond_0
    return p0
.end method

.method public final getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getBrightnessForSpline(FLandroid/util/Spline;)F
    .locals 0

    .line 1
    const/high16 p0, -0x40800000    # -1.0f

    .line 3
    return p0
.end method

.method public final getBrightnessFromNits(F)F
    .locals 0

    .line 1
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 3
    return p0
.end method

.method public final getBrightnessSpline()Landroid/util/Spline;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMode:I

    .line 3
    return p0
.end method

.method public final getShortTermModelTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    .line 3
    return-wide v0
.end method

.method public final hasUserDataPoints()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDefaultConfig()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final setAutoBrightnessAdjustment(F)Z
    .locals 2

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 11
    cmpl-float v0, p1, v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 19
    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, " => "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    const-string v1, "BrightnessMappingStrategy"

    .line 48
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog$SystemPlog;

    .line 53
    const-string v1, "auto-brightness adjustment"

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog$SystemPlog;->start(Ljava/lang/String;)V

    .line 58
    :cond_1
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 60
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline$1()V

    .line 63
    const/4 p0, 0x1

    .line 64
    return p0
.end method

.method public final setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
