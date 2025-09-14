.class public final Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

.field public final synthetic val$p:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->this$0:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->val$p:D

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final value(D)D
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->this$0:Lorg/apache/commons/math/distribution/AbstractContinuousDistribution;

    .line 2
    .line 3
    check-cast v0, Lorg/apache/commons/math/distribution/BetaDistributionImpl;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math/distribution/BetaDistributionImpl;->cumulativeProbability(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/commons/math/MathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-wide v2, p0, Lorg/apache/commons/math/distribution/AbstractContinuousDistribution$1;->val$p:D

    .line 10
    .line 11
    sub-double/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    return-wide v0

    .line 19
    :cond_0
    new-instance p0, Lorg/apache/commons/math/FunctionEvaluationException;

    .line 20
    .line 21
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CUMULATIVE_PROBABILITY_RETURNED_NAN:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 22
    .line 23
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math/FunctionEvaluationException;-><init>(DLorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance v0, Lorg/apache/commons/math/FunctionEvaluationException;

    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/math/MathException;->getGeneralPattern()Lorg/apache/commons/math/exception/util/Localizable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math/MathException;->getArguments()[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-direct {v0, p1, p2, v1, p0}, Lorg/apache/commons/math/FunctionEvaluationException;-><init>(DLorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method
