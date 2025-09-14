.class public final synthetic Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/internal/util/jobs/FunctionalUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/android/internal/util/jobs/FunctionalUtils;->$r8$lambda$ei4-Zcd7p4KqBNqg3n_kB4-vB8A(Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
