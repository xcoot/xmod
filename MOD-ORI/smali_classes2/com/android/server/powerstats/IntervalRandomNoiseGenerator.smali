.class public final Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDistribution:Lorg/apache/commons/math/distribution/BetaDistributionImpl;

.field public final mSamples:[D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x11

    .line 5
    .line 6
    new-array v0, v0, [D

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mSamples:[D

    .line 9
    .line 10
    new-instance v1, Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    .line 11
    .line 12
    invoke-direct {v1}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mDistribution:Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    .line 16
    .line 17
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public reseed(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->mDistribution:Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;->reseedRandomGenerator(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
