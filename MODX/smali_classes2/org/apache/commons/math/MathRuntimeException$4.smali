.class Lorg/apache/commons/math/MathRuntimeException$4;
.super Ljava/lang/IllegalArgumentException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final serialVersionUID:J = -0x3b762231632f99f1L


# instance fields
.field final synthetic val$arguments:[Ljava/lang/Object;

.field final synthetic val$pattern:Lorg/apache/commons/math/exception/util/Localizable;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$pattern:Lorg/apache/commons/math/exception/util/Localizable;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$arguments:[Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getLocalizedMessage()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$pattern:Lorg/apache/commons/math/exception/util/Localizable;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$arguments:[Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v2, Ljava/text/MessageFormat;

    .line 10
    .line 11
    check-cast v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lorg/apache/commons/math/exception/util/LocalizedFormats;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v2, v1, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$pattern:Lorg/apache/commons/math/exception/util/Localizable;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/apache/commons/math/MathRuntimeException$4;->val$arguments:[Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v2, Ljava/text/MessageFormat;

    .line 8
    .line 9
    check-cast v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lorg/apache/commons/math/exception/util/LocalizedFormats;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v2, v1, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
