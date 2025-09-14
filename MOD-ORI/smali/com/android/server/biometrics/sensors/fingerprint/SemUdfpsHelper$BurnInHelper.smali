.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIconArray:[I

.field public mIconLocationIndex:I

.field public final mMaxMovingSize:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/high16 v0, 0x41200000    # 10.0f

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    float-to-int p1, p1

    .line 20
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v0, "setMaxMovingSize() returned: "

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    .line 31
    .line 32
    const-string v2, "FingerprintService"

    .line 33
    .line 34
    invoke-static {p1, v0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    .line 38
    .line 39
    mul-int/2addr p1, p1

    .line 40
    new-array p1, p1, [I

    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    :goto_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    .line 46
    .line 47
    mul-int v2, v0, v0

    .line 48
    .line 49
    if-ge p1, v2, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    .line 52
    .line 53
    aput p1, v0, p1

    .line 54
    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    mul-int/2addr v0, v0

    .line 59
    sub-int/2addr v0, v1

    .line 60
    :goto_1
    if-ltz v0, :cond_2

    .line 61
    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    add-int/lit8 p1, v0, 0x1

    .line 67
    .line 68
    int-to-double v3, p1

    .line 69
    mul-double/2addr v1, v3

    .line 70
    double-to-int p1, v1

    .line 71
    if-eq p1, v0, :cond_1

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconArray:[I

    .line 74
    .line 75
    aget v2, v1, p1

    .line 76
    .line 77
    aget v3, v1, v0

    .line 78
    .line 79
    aput v3, v1, p1

    .line 80
    .line 81
    aput v2, v1, v0

    .line 82
    .line 83
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mMaxMovingSize:I

    .line 91
    .line 92
    mul-int/2addr p1, p1

    .line 93
    int-to-double v2, p1

    .line 94
    mul-double/2addr v0, v2

    .line 95
    double-to-int p1, v0

    .line 96
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$BurnInHelper;->mIconLocationIndex:I

    .line 97
    .line 98
    return-void
.end method
