.class public final Lcom/android/server/display/config/SecHysteresisLevels;
.super Lcom/android/server/display/config/HysteresisLevels;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

.field public static final DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F


# instance fields
.field public final mHysteresisBrightSpline:Landroid/util/Spline;

.field public final mHysteresisDarkSpline:Landroid/util/Spline;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    const/high16 v2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput v2, v1, v3

    .line 8
    .line 9
    sput-object v1, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    .line 10
    .line 11
    new-array v1, v0, [F

    .line 12
    .line 13
    const/high16 v2, 0x43480000    # 200.0f

    .line 14
    .line 15
    aput v2, v1, v3

    .line 16
    .line 17
    sput-object v1, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    .line 18
    .line 19
    new-array v0, v0, [F

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aput v1, v0, v3

    .line 23
    .line 24
    sput-object v0, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>([I[I[I[I)V
    .locals 7

    .line 1
    sget-object v1, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_BRIGHTENING_THRESHOLDS:[F

    .line 2
    .line 3
    sget-object v2, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_DARKENING_THRESHOLDS:[F

    .line 4
    .line 5
    sget-object v4, Lcom/android/server/display/config/SecHysteresisLevels;->DEFAULT_AMBIENT_THRESHOLD_LEVELS:[F

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v3, v4

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/config/HysteresisLevels;-><init>([F[F[F[FFF)V

    .line 12
    .line 13
    .line 14
    array-length v0, p1

    .line 15
    array-length v1, p2

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    array-length v0, p3

    .line 19
    array-length v1, p4

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/display/config/SecHysteresisLevels;->convertArrayFromIntToFloat([I)[F

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p2}, Lcom/android/server/display/config/SecHysteresisLevels;->convertArrayFromIntToFloat([I)[F

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p3}, Lcom/android/server/display/config/SecHysteresisLevels;->convertArrayFromIntToFloat([I)[F

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-static {p4}, Lcom/android/server/display/config/SecHysteresisLevels;->convertArrayFromIntToFloat([I)[F

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-static {p1, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    .line 43
    .line 44
    invoke-static {p3, p4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p1, "Mismatch between hysteresis array lengths."

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public static convertArrayFromIntToFloat([I)[F
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget v2, p0, v1

    .line 9
    .line 10
    int-to-float v2, v2

    .line 11
    aput v2, v0, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0
.end method

.method public static loadAmbientBrightnessConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SecHysteresisLevels;
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const v0, 0x1070071

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x1070072

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const v2, 0x1070073

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const v3, 0x1070074

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v3, Lcom/android/server/display/config/SecHysteresisLevels;

    .line 32
    .line 33
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/server/display/config/SecHysteresisLevels;-><init>([I[I[I[I)V

    .line 34
    .line 35
    .line 36
    return-object v3

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method


# virtual methods
.method public final getBrighteningThreshold(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    int-to-float p0, p0

    .line 12
    return p0
.end method

.method public final getDarkeningThreshold(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x0

    .line 8
    cmpl-float p1, p0, p1

    .line 9
    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    int-to-float p0, p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    .line 19
    .line 20
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SecHysteresisLevels {\n    mHysteresisBrightSpline="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",\n    mHysteresisDarkSpline="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/config/SecHysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "\n}"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
