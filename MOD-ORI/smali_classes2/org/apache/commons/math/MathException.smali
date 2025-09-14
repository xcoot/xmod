.class public Lorg/apache/commons/math/MathException;
.super Ljava/lang/Exception;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final serialVersionUID:J = 0x6715a06381085ecfL


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final pattern:Lorg/apache/commons/math/exception/util/Localizable;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math/ConvergenceException;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 5
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->SIMPLE_MESSAGE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    iput-object v0, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math/MathException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    .line 3
    invoke-virtual {p2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getArguments()[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [Ljava/lang/Object;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getGeneralPattern()Lorg/apache/commons/math/exception/util/Localizable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocalizedMessage()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/text/MessageFormat;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    .line 12
    .line 13
    check-cast v2, Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lorg/apache/commons/math/exception/util/LocalizedFormats;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p0, ""

    .line 30
    .line 31
    :goto_0
    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/text/MessageFormat;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/apache/commons/math/MathException;->pattern:Lorg/apache/commons/math/exception/util/Localizable;

    .line 10
    .line 11
    check-cast v2, Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lorg/apache/commons/math/exception/util/LocalizedFormats;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lorg/apache/commons/math/MathException;->arguments:[Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p0, ""

    .line 28
    .line 29
    :goto_0
    return-object p0
.end method

.method public final printStackTrace()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math/MathException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public final printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
