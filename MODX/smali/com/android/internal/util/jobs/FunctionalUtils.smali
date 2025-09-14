.class public Lcom/android/internal/util/jobs/FunctionalUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static synthetic $r8$lambda$ei4-Zcd7p4KqBNqg3n_kB4-vB8A(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/FunctionalUtils;->lambda$handleExceptions$0(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V

    .line 4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getLambdaName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "-$$"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    return-object p0

    .line 15
    :cond_0
    add-int/lit8 v2, v0, 0x3

    .line 17
    const/16 v3, 0x24

    .line 19
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    .line 22
    move-result v2

    .line 23
    if-ne v2, v1, :cond_1

    .line 25
    return-object p0

    .line 26
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    .line 31
    move-result v3

    .line 32
    const-string v4, "$Lambda"

    .line 34
    const/4 v5, 0x0

    .line 35
    if-ne v3, v1, :cond_2

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 44
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static handleExceptions(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V

    .line 6
    return-object v0
.end method

.method public static ignoreRemoteException(Lcom/android/internal/util/jobs/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic lambda$handleExceptions$0(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    :goto_0
    return-void
.end method

.method public static uncheckExceptions(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static uncheckExceptions(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingBiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 2
    return-object p0
.end method

.method public static uncheckExceptions(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingConsumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 3
    return-object p0
.end method

.method public static uncheckExceptions(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingFunction;)Ljava/util/function/Function;
    .locals 0

    .line 4
    return-object p0
.end method

.method public static uncheckExceptions(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingSupplier;)Ljava/util/function/Supplier;
    .locals 0

    .line 5
    return-object p0
.end method
