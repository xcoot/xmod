.class public final Lcom/android/server/display/color/ReduceBrightColorsTintController;
.super Lcom/android/server/display/color/TintController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCoefficients:[F

.field public final mMatrix:[F

.field public mStrength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mMatrix:[F

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getLevel()I
    .locals 0

    .line 1
    const/16 p0, 0xfa

    .line 2
    .line 3
    return p0
.end method

.method public final getMatrix()[F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "ColorDisplayService"

    .line 6
    .line 7
    const-string v0, "ReduceBrightColorsTintController: activation lock"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mMatrix:[F

    .line 22
    .line 23
    array-length v0, p0

    .line 24
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 30
    .line 31
    :goto_0
    return-object p0
.end method

.method public final setActivated(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string p0, "Turning on reduce bright colors"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "Turning off reduce bright colors"

    .line 15
    .line 16
    :goto_0
    const-string p1, "ColorDisplayService"

    .line 17
    .line 18
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setMatrix(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v1, 0x64

    .line 7
    .line 8
    if-le p1, v1, :cond_1

    .line 9
    .line 10
    move p1, v1

    .line 11
    :cond_1
    :goto_0
    const-string v1, "Setting bright color reduction level: "

    .line 12
    .line 13
    const-string v2, "ColorDisplayService"

    .line 14
    .line 15
    invoke-static {p1, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mStrength:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mMatrix:[F

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 23
    .line 24
    .line 25
    int-to-float p1, p1

    .line 26
    const/high16 v2, 0x42c80000    # 100.0f

    .line 27
    .line 28
    div-float/2addr p1, v2

    .line 29
    mul-float v2, p1, p1

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    iget-object p0, p0, Lcom/android/server/display/color/ReduceBrightColorsTintController;->mCoefficients:[F

    .line 33
    .line 34
    aget v3, p0, v3

    .line 35
    .line 36
    mul-float/2addr v2, v3

    .line 37
    const/4 v3, 0x1

    .line 38
    aget v3, p0, v3

    .line 39
    .line 40
    mul-float/2addr p1, v3

    .line 41
    add-float/2addr p1, v2

    .line 42
    const/4 v2, 0x2

    .line 43
    aget p0, p0, v2

    .line 44
    .line 45
    add-float/2addr p1, p0

    .line 46
    const/high16 p0, 0x3f800000    # 1.0f

    .line 47
    .line 48
    cmpl-float v2, p1, p0

    .line 49
    .line 50
    if-lez v2, :cond_2

    .line 51
    .line 52
    :goto_1
    move p1, p0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 p0, 0x0

    .line 55
    cmpg-float v2, p1, p0

    .line 56
    .line 57
    if-gez v2, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :goto_2
    aput p1, v1, v0

    .line 61
    .line 62
    const/4 p0, 0x5

    .line 63
    aput p1, v1, p0

    .line 64
    .line 65
    const/16 p0, 0xa

    .line 66
    .line 67
    aput p1, v1, p0

    .line 68
    .line 69
    return-void
.end method
