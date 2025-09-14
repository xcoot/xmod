.class public final Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mBrightness:F

.field public final mBrightnessOffset:F

.field public final mLowerBoundary:F

.field public final mLux:F

.field public final mUpperBoundary:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    .line 7
    .line 8
    sub-float/2addr p2, p3

    .line 9
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    .line 10
    .line 11
    const/high16 p2, 0x40200000    # 2.5f

    .line 12
    .line 13
    div-float p3, p1, p2

    .line 14
    .line 15
    const/high16 v0, 0x41200000    # 10.0f

    .line 16
    .line 17
    sub-float v1, p1, v0

    .line 18
    .line 19
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    .line 24
    .line 25
    mul-float/2addr p2, p1

    .line 26
    add-float/2addr p1, v0

    .line 27
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 4
    .line 5
    iget p1, p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isInSameBoundary(F)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    .line 8
    .line 9
    cmpg-float p0, p1, p0

    .line 10
    .line 11
    if-gtz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    const/high16 v1, 0x437f0000    # 255.0f

    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightness:F

    .line 14
    .line 15
    mul-float/2addr v0, v1

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mBrightnessOffset:F

    .line 21
    .line 22
    mul-float/2addr v0, v1

    .line 23
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLowerBoundary:F

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mLux:F

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager$UserPoint;->mUpperBoundary:F

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "%5.1f -> %5.1f (%+6.1f) @ %6.1f < %6.1f < %6.1f"

    .line 50
    .line 51
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
