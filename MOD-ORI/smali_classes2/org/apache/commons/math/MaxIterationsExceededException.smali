.class public Lorg/apache/commons/math/MaxIterationsExceededException;
.super Lorg/apache/commons/math/ConvergenceException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final serialVersionUID:J = -0x6c8a943861b452e6L


# instance fields
.field private final maxIterations:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->MAX_ITERATIONS_EXCEEDED:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 3
    iput v1, p0, Lorg/apache/commons/math/MaxIterationsExceededException;->maxIterations:I

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->NON_CONVERGENT_CONTINUED_FRACTION:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 4
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    const p1, 0x7fffffff

    .line 5
    iput p1, p0, Lorg/apache/commons/math/MaxIterationsExceededException;->maxIterations:I

    return-void
.end method
