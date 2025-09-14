.class public Lorg/apache/commons/math/FunctionEvaluationException;
.super Lorg/apache/commons/math/MathException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final serialVersionUID:J = 0x133679ea1abbe904L


# instance fields
.field private argument:[D


# direct methods
.method public varargs constructor <init>(DLorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math/MathException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    new-array p3, p3, [D

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    aput-wide p1, p3, p4

    .line 9
    .line 10
    iput-object p3, p0, Lorg/apache/commons/math/FunctionEvaluationException;->argument:[D

    .line 11
    .line 12
    return-void
.end method
