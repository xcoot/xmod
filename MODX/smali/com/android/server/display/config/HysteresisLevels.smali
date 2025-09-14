.class public Lcom/android/server/display/config/HysteresisLevels;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

.field public static final DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

.field public static final DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

.field public static final DEFAULT_SCREEN_THRESHOLD_LEVELS:[F


# instance fields
.field public final mBrighteningThresholdLevels:[F

.field public final mBrighteningThresholdsPercentages:[F

.field public final mDarkeningThresholdLevels:[F

.field public final mDarkeningThresholdsPercentages:[F

.field public final mMinBrightening:F

.field public final mMinDarkening:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [F

    .line 6
    const/4 v3, 0x0

    .line 7
    aput v0, v2, v3

    .line 9
    sput-object v2, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    .line 11
    const/high16 v2, 0x43480000    # 200.0f

    .line 13
    new-array v4, v1, [F

    .line 15
    aput v2, v4, v3

    .line 17
    sput-object v4, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    .line 19
    const/4 v4, 0x0

    .line 20
    new-array v5, v1, [F

    .line 22
    aput v4, v5, v3

    .line 24
    sput-object v5, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    .line 26
    new-array v5, v1, [F

    .line 28
    aput v4, v5, v3

    .line 30
    sput-object v5, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_THRESHOLD_LEVELS:[F

    .line 32
    new-array v4, v1, [F

    .line 34
    aput v0, v4, v3

    .line 36
    sput-object v4, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_BRIGHTENING_THRESHOLDS:[F

    .line 38
    new-array v0, v1, [F

    .line 40
    aput v2, v0, v3

    .line 42
    sput-object v0, Lcom/android/server/display/config/HysteresisLevels;->DEFAULT_SCREEN_DARKENING_THRESHOLDS:[F

    .line 44
    const-string v0, "HysteresisLevels"

    .line 46
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 49
    return-void
.end method

.method public constructor <init>([F[F[F[FFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    array-length v0, p1

    .line 5
    array-length v1, p3

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    array-length v0, p2

    .line 9
    array-length v1, p4

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    const/high16 v0, 0x42c80000    # 100.0f

    .line 14
    invoke-static {v0, p1}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat(F[F)[F

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdsPercentages:[F

    .line 20
    invoke-static {v0, p2}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat(F[F)[F

    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdsPercentages:[F

    .line 26
    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    invoke-static {p1, p3}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat(F[F)[F

    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdLevels:[F

    .line 34
    invoke-static {p1, p4}, Lcom/android/server/display/config/HysteresisLevels;->setArrayFormat(F[F)[F

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdLevels:[F

    .line 40
    iput p5, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinDarkening:F

    .line 42
    iput p6, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinBrightening:F

    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    const-string p1, "Mismatch between hysteresis array lengths."

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
.end method

.method public static createHysteresisLevels(Lcom/android/server/display/config/Thresholds;III[F[F[FZ)Lcom/android/server/display/config/HysteresisLevels;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/config/Thresholds;->brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    .line 8
    :goto_0
    if-nez p0, :cond_1

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/config/Thresholds;->darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    .line 13
    :goto_1
    move-object v2, v1

    .line 14
    move v3, p1

    .line 15
    move v4, p2

    .line 16
    move-object v5, p4

    .line 17
    move-object v6, p5

    .line 18
    move v7, p7

    .line 19
    invoke-static/range {v2 .. v7}, Lcom/android/server/display/config/HysteresisLevels;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;

    .line 22
    move-result-object p0

    .line 23
    move-object v2, v0

    .line 24
    move v4, p3

    .line 25
    move-object v6, p6

    .line 26
    invoke-static/range {v2 .. v7}, Lcom/android/server/display/config/HysteresisLevels;->getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;

    .line 29
    move-result-object p1

    .line 30
    const/4 p2, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 33
    iget-object p3, v1, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    .line 35
    if-eqz p3, :cond_2

    .line 37
    invoke-virtual {p3}, Ljava/math/BigDecimal;->floatValue()F

    .line 40
    move-result p3

    .line 41
    move v7, p3

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v7, p2

    .line 44
    :goto_2
    if-eqz v0, :cond_3

    .line 46
    iget-object p3, v0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    .line 48
    if-eqz p3, :cond_3

    .line 50
    invoke-virtual {p3}, Ljava/math/BigDecimal;->floatValue()F

    .line 53
    move-result p2

    .line 54
    :cond_3
    move v6, p2

    .line 55
    new-instance p2, Lcom/android/server/display/config/HysteresisLevels;

    .line 57
    iget-object p3, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 59
    move-object v2, p3

    .line 60
    check-cast v2, [F

    .line 62
    iget-object p3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 64
    move-object v3, p3

    .line 65
    check-cast v3, [F

    .line 67
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 69
    move-object v4, p0

    .line 70
    check-cast v4, [F

    .line 72
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    move-object v5, p0

    .line 75
    check-cast v5, [F

    .line 77
    move-object v1, p2

    .line 78
    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/config/HysteresisLevels;-><init>([F[F[F[FFF)V

    .line 81
    return-object p2
.end method

.method public static getBrightnessLevelAndPercentage(Lcom/android/server/display/config/BrightnessThresholds;II[F[FZ)Landroid/util/Pair;
    .locals 0

    .line 1
    if-eqz p0, :cond_3

    .line 3
    iget-object p1, p0, Lcom/android/server/display/config/BrightnessThresholds;->brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

    .line 5
    if-eqz p1, :cond_3

    .line 7
    iget-object p2, p1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 9
    if-nez p2, :cond_0

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p2, p1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 18
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 20
    check-cast p1, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_3

    .line 28
    iget-object p0, p0, Lcom/android/server/display/config/BrightnessThresholds;->brightnessThresholdPoints:Lcom/android/server/display/config/ThresholdPoints;

    .line 30
    iget-object p1, p0, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 32
    if-nez p1, :cond_1

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 43
    check-cast p0, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result p1

    .line 49
    new-array p2, p1, [F

    .line 51
    new-array p1, p1, [F

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p0

    .line 57
    const/4 p3, 0x0

    .line 58
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result p4

    .line 62
    if-eqz p4, :cond_2

    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object p4

    .line 68
    check-cast p4, Lcom/android/server/display/config/ThresholdPoint;

    .line 70
    iget-object p5, p4, Lcom/android/server/display/config/ThresholdPoint;->threshold:Ljava/math/BigDecimal;

    .line 72
    invoke-virtual {p5}, Ljava/math/BigDecimal;->floatValue()F

    .line 75
    move-result p5

    .line 76
    aput p5, p2, p3

    .line 78
    iget-object p4, p4, Lcom/android/server/display/config/ThresholdPoint;->percentage:Ljava/math/BigDecimal;

    .line 80
    invoke-virtual {p4}, Ljava/math/BigDecimal;->floatValue()F

    .line 83
    move-result p4

    .line 84
    aput p4, p1, p3

    .line 86
    add-int/lit8 p3, p3, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    new-instance p0, Landroid/util/Pair;

    .line 91
    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    return-object p0

    .line 95
    :cond_3
    new-instance p0, Landroid/util/Pair;

    .line 97
    invoke-direct {p0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    return-object p0
.end method

.method public static setArrayFormat(F[F)[F
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [F

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-le v0, v2, :cond_0

    .line 7
    aget v3, p1, v2

    .line 9
    div-float/2addr v3, p0

    .line 10
    aput v3, v1, v2

    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBrighteningThreshold(F)F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public getBrighteningThresholdLevels()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdLevels:[F

    .line 3
    return-object p0
.end method

.method public getBrighteningThresholdsPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdsPercentages:[F

    .line 3
    return-object p0
.end method

.method public getDarkeningThreshold(F)F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public getDarkeningThresholdLevels()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdLevels:[F

    .line 3
    return-object p0
.end method

.method public getDarkeningThresholdsPercentages()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdsPercentages:[F

    .line 3
    return-object p0
.end method

.method public getMinBrightening()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinBrightening:F

    .line 3
    return p0
.end method

.method public getMinDarkening()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinDarkening:F

    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "HysteresisLevels {\n    mBrighteningThresholdLevels="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdLevels:[F

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ",\n    mBrighteningThresholdsPercentages="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mBrighteningThresholdsPercentages:[F

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ",\n    mMinBrightening="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinBrightening:F

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ",\n    mDarkeningThresholdLevels="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdLevels:[F

    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ",\n    mDarkeningThresholdsPercentages="

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/android/server/display/config/HysteresisLevels;->mDarkeningThresholdsPercentages:[F

    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ",\n    mMinDarkening="

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget p0, p0, Lcom/android/server/display/config/HysteresisLevels;->mMinDarkening:F

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 79
    const-string p0, "\n}"

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method
