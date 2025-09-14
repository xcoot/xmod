.class public Lorg/apache/commons/math/distribution/BetaDistributionImpl;
.super Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final serialVersionUID:J = -0x10f54b9581f4e2a4L


# instance fields
.field private alpha:D

.field private beta:D

.field private final solverAbsoluteAccuracy:D

.field private z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->alpha:D

    .line 7
    .line 8
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->beta:D

    .line 11
    .line 12
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 13
    .line 14
    iput-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->z:D

    .line 15
    .line 16
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->solverAbsoluteAccuracy:D

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final cumulativeProbability(D)D
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    cmpl-double v2, p1, v0

    .line 11
    .line 12
    if-ltz v2, :cond_1

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_1
    iget-wide v5, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->alpha:D

    .line 16
    .line 17
    iget-wide v7, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->beta:D

    .line 18
    .line 19
    move-wide v3, p1

    .line 20
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math/special/Beta;->regularizedBeta(DDD)D

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    return-wide p0
.end method

.method public final getSolverAbsoluteAccuracy()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->solverAbsoluteAccuracy:D

    .line 2
    .line 3
    return-wide v0
.end method
