.class public final Lcom/android/server/display/color/DisplayWhiteBalanceTintController;
.super Lcom/android/server/display/color/TintController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppliedCct:I

.field public mCctEvaluator:Lcom/android/server/display/color/CctEvaluator;

.field public mChromaticAdaptationMatrix:[F

.field mCurrentColorTemperature:I

.field public mCurrentColorTemperatureXYZ:[F

.field mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayNominalWhiteCct:I

.field mDisplayNominalWhiteXYZ:[F

.field public mIsAllowed:Z

.field public mIsAvailable:Ljava/lang/Boolean;

.field public final mLock:Ljava/lang/Object;

.field public final mMatrixDisplayWhiteBalance:[F

.field mSetUp:Z

.field public mTargetCct:I

.field public mTemperatureDefault:I

.field mTemperatureMax:I

.field mTemperatureMin:I

.field public mTransitionDuration:J

.field public mTransitionDurationDecrease:J

.field public mTransitionDurationIncrease:J


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [F

    .line 14
    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 19
    const/16 v0, 0x10

    .line 21
    new-array v0, v0, [F

    .line 23
    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAllowed:Z

    .line 28
    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 30
    iput-object p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 32
    return-void
.end method

.method public static mul3x3([F[F)[F
    .locals 27

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 4
    aget v2, p1, v0

    .line 6
    mul-float v3, v1, v2

    .line 8
    const/4 v4, 0x3

    .line 9
    aget v5, p0, v4

    .line 11
    const/4 v6, 0x1

    .line 12
    aget v7, p1, v6

    .line 14
    mul-float v8, v5, v7

    .line 16
    add-float/2addr v8, v3

    .line 17
    const/4 v3, 0x6

    .line 18
    aget v9, p0, v3

    .line 20
    const/4 v10, 0x2

    .line 21
    aget v11, p1, v10

    .line 23
    mul-float v12, v9, v11

    .line 25
    add-float/2addr v12, v8

    .line 26
    aget v8, p0, v6

    .line 28
    mul-float v13, v8, v2

    .line 30
    const/4 v14, 0x4

    .line 31
    aget v15, p0, v14

    .line 33
    mul-float v16, v15, v7

    .line 35
    add-float v16, v16, v13

    .line 37
    const/4 v13, 0x7

    .line 38
    aget v17, p0, v13

    .line 40
    mul-float v18, v17, v11

    .line 42
    add-float v18, v18, v16

    .line 44
    aget v16, p0, v10

    .line 46
    mul-float v2, v2, v16

    .line 48
    const/16 v19, 0x5

    .line 50
    aget v20, p0, v19

    .line 52
    mul-float v7, v7, v20

    .line 54
    add-float/2addr v7, v2

    .line 55
    const/16 v2, 0x8

    .line 57
    aget v21, p0, v2

    .line 59
    mul-float v11, v11, v21

    .line 61
    add-float/2addr v11, v7

    .line 62
    aget v7, p1, v4

    .line 64
    mul-float v22, v1, v7

    .line 66
    aget v23, p1, v14

    .line 68
    mul-float v24, v5, v23

    .line 70
    add-float v24, v24, v22

    .line 72
    aget v22, p1, v19

    .line 74
    mul-float v25, v9, v22

    .line 76
    add-float v25, v25, v24

    .line 78
    mul-float v24, v8, v7

    .line 80
    mul-float v26, v15, v23

    .line 82
    add-float v26, v26, v24

    .line 84
    mul-float v24, v17, v22

    .line 86
    add-float v24, v24, v26

    .line 88
    mul-float v7, v7, v16

    .line 90
    mul-float v23, v23, v20

    .line 92
    add-float v23, v23, v7

    .line 94
    mul-float v22, v22, v21

    .line 96
    add-float v22, v22, v23

    .line 98
    aget v7, p1, v3

    .line 100
    mul-float/2addr v1, v7

    .line 101
    aget v23, p1, v13

    .line 103
    mul-float v5, v5, v23

    .line 105
    add-float/2addr v5, v1

    .line 106
    aget v1, p1, v2

    .line 108
    mul-float/2addr v9, v1

    .line 109
    add-float/2addr v9, v5

    .line 110
    mul-float/2addr v8, v7

    .line 111
    mul-float v15, v15, v23

    .line 113
    add-float/2addr v15, v8

    .line 114
    mul-float v17, v17, v1

    .line 116
    add-float v17, v17, v15

    .line 118
    mul-float v16, v16, v7

    .line 120
    mul-float v20, v20, v23

    .line 122
    add-float v20, v20, v16

    .line 124
    mul-float v21, v21, v1

    .line 126
    add-float v21, v21, v20

    .line 128
    const/16 v1, 0x9

    .line 130
    new-array v1, v1, [F

    .line 132
    aput v12, v1, v0

    .line 134
    aput v18, v1, v6

    .line 136
    aput v11, v1, v10

    .line 138
    aput v25, v1, v4

    .line 140
    aput v24, v1, v14

    .line 142
    aput v22, v1, v19

    .line 144
    aput v9, v1, v3

    .line 146
    aput v17, v1, v13

    .line 148
    aput v21, v1, v2

    .line 150
    return-object v1
.end method


# virtual methods
.method public final computeMatrixForCct(I)[F
    .locals 4

    .line 1
    const-string/jumbo v0, "computeDisplayWhiteBalanceMatrix: cct ="

    .line 4
    iget-boolean v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 6
    if-eqz v1, :cond_2

    .line 8
    if-nez p1, :cond_0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    .line 16
    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteCct:I

    .line 18
    if-ne p1, v2, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCctLocked(I)V

    .line 38
    :goto_0
    const-string v2, "ColorDisplayService"

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string p1, " matrix ="

    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    .line 55
    const/16 v0, 0x10

    .line 57
    invoke-static {v0, p1}, Lcom/android/server/display/color/TintController;->matrixToString(I[F)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    .line 73
    monitor-exit v1

    .line 74
    return-object p0

    .line 75
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0

    .line 77
    :cond_2
    :goto_2
    const-string p0, "ColorDisplayService"

    .line 79
    const-string v0, "Couldn\'t compute matrix for cct="

    .line 81
    invoke-static {p1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 86
    return-object p0
.end method

.method public final computeMatrixForCctLocked(I)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/graphics/ColorSpace;->cctToXyz(I)[F

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    .line 7
    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    .line 9
    iget-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 11
    invoke-static {v0, v1, p1}, Landroid/graphics/ColorSpace;->chromaticAdaptation(Landroid/graphics/ColorSpace$Adaptation;[F[F)[F

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    .line 17
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 19
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mul3x3([F[F)[F

    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 29
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mul3x3([F[F)[F

    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    aget v1, p1, v0

    .line 40
    const/4 v2, 0x3

    .line 41
    aget v3, p1, v2

    .line 43
    add-float/2addr v1, v3

    .line 44
    const/4 v3, 0x6

    .line 45
    aget v4, p1, v3

    .line 47
    add-float/2addr v1, v4

    .line 48
    const/4 v4, 0x1

    .line 49
    aget v4, p1, v4

    .line 51
    const/4 v5, 0x4

    .line 52
    aget v6, p1, v5

    .line 54
    add-float/2addr v4, v6

    .line 55
    const/4 v6, 0x7

    .line 56
    aget v6, p1, v6

    .line 58
    add-float/2addr v4, v6

    .line 59
    const/4 v6, 0x2

    .line 60
    aget v6, p1, v6

    .line 62
    const/4 v7, 0x5

    .line 63
    aget v7, p1, v7

    .line 65
    add-float/2addr v6, v7

    .line 66
    const/16 v7, 0x8

    .line 68
    aget v8, p1, v7

    .line 70
    add-float/2addr v6, v8

    .line 71
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    .line 74
    move-result v1

    .line 75
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    .line 78
    move-result v1

    .line 79
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    .line 81
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 84
    move v4, v0

    .line 85
    :goto_0
    const/16 v6, 0x9

    .line 87
    if-ge v4, v6, :cond_1

    .line 89
    aget v6, p1, v4

    .line 91
    div-float/2addr v6, v1

    .line 92
    aput v6, p1, v4

    .line 94
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 97
    move-result v8

    .line 98
    if-nez v8, :cond_0

    .line 100
    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    .line 103
    move-result v6

    .line 104
    if-nez v6, :cond_0

    .line 106
    add-int/lit8 v4, v4, 0x1

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    const-string p0, "ColorDisplayService"

    .line 111
    const-string p1, "Invalid DWB color matrix"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 117
    :cond_1
    invoke-static {p1, v0, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    invoke-static {p1, v2, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-static {p1, v3, p0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-void
.end method

.method public final getLevel()I
    .locals 0

    .line 1
    const/16 p0, 0x7d

    .line 3
    return p0
.end method

.method public final getMatrix()[F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCct(I)[F

    .line 17
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    .line 19
    return-object p0

    .line 20
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 22
    return-object p0
.end method

.method public final getTransitionDurationMilliseconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDuration:J

    .line 3
    return-wide v0
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z

    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result p0

    .line 21
    return p0
.end method
