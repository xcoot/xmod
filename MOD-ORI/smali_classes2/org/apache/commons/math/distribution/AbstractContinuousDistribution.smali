.class public abstract Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;
.super Lorg/apache/commons/math/distribution/AbstractDistribution;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x872367e4cbe0c2L


# instance fields
.field protected final randomData:Lorg/apache/commons/math/random/RandomDataImpl;

.field private solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math/distribution/AbstractDistribution;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/math/random/RandomDataImpl;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/apache/commons/math/random/RandomDataImpl;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->randomData:Lorg/apache/commons/math/random/RandomDataImpl;

    .line 10
    .line 11
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->solverAbsoluteAccuracy:D

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final reseedRandomGenerator(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->randomData:Lorg/apache/commons/math/random/RandomDataImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math/random/RandomDataImpl;->reSeed(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sample()D
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->randomData:Lorg/apache/commons/math/random/RandomDataImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/apache/commons/math/random/RandomDataImpl;->nextInversionDeviate(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
