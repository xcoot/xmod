.class public abstract Lorg/apache/commons/math/special/Gamma;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final HALF_LOG_2_PI:D

.field public static final LANCZOS:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [D

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/math/special/Gamma;->LANCZOS:[D

    .line 9
    .line 10
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 20
    .line 21
    mul-double/2addr v0, v2

    .line 22
    sput-wide v0, Lorg/apache/commons/math/special/Gamma;->HALF_LOG_2_PI:D

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        0x3fefffffffffffe6L    # 0.9999999999999971
        0x404c93ff87c1acceL    # 57.15623566586292
        -0x3fb2337608fa76d0L    # -59.59796035547549
        0x402c45aea23d22a1L    # 14.136097974741746
        -0x4020847be9da401cL    # -0.4919138160976202
        0x3f01d2af4786183aL    # 3.399464998481189E-5
        0x3f08644bb7c5e3bdL    # 4.652362892704858E-5
        -0x40e63633621a8b49L    # -9.837447530487956E-5
        0x3f24b8939ed4e66dL    # 1.580887032249125E-4
        -0x40d470b232d541caL    # -2.1026444172410488E-4
        0x3f2c801018e9e826L    # 2.1743961811521265E-4
        -0x40da7666366ad9c0L    # -1.643181065367639E-4
        0x3f1621360b773d55L    # 8.441822398385275E-5
        -0x410489734a2e1dfaL    # -2.6190838401581408E-5
        0x3ecef40a04fc9810L    # 3.6899182659531625E-6
    .end array-data
.end method

.method public static logGamma(D)D
    .locals 8

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmpg-double v2, p0, v0

    .line 10
    .line 11
    if-gtz v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/16 v2, 0xe

    .line 15
    .line 16
    :goto_0
    sget-object v3, Lorg/apache/commons/math/special/Gamma;->LANCZOS:[D

    .line 17
    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    aget-wide v3, v3, v2

    .line 21
    .line 22
    int-to-double v5, v2

    .line 23
    add-double/2addr v5, p0

    .line 24
    div-double/2addr v3, v5

    .line 25
    add-double/2addr v0, v3

    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    aget-wide v2, v3, v2

    .line 31
    .line 32
    add-double/2addr v0, v2

    .line 33
    const-wide v2, 0x4012f80000000000L    # 4.7421875

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    add-double/2addr v2, p0

    .line 39
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 40
    .line 41
    add-double/2addr v2, v4

    .line 42
    add-double/2addr v4, p0

    .line 43
    invoke-static {v2, v3}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    mul-double/2addr v6, v4

    .line 48
    sub-double/2addr v6, v2

    .line 49
    sget-wide v2, Lorg/apache/commons/math/special/Gamma;->HALF_LOG_2_PI:D

    .line 50
    .line 51
    add-double/2addr v6, v2

    .line 52
    div-double/2addr v0, p0

    .line 53
    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide p0

    .line 57
    add-double/2addr p0, v6

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :goto_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    .line 60
    .line 61
    :goto_2
    return-wide p0
.end method
