.class public abstract Lorg/apache/commons/math/MathRuntimeException;
.super Ljava/lang/RuntimeException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final serialVersionUID:J = 0x7db74ddedac69d52L


# direct methods
.method public static varargs createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math/MathRuntimeException$4;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math/MathRuntimeException$4;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
