.class public final Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appfunctions/FutureAppSearchSession;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/appfunctions/FutureAppSearchSession;

    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 17
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 22
    new-instance p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    .line 24
    invoke-direct {p0, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 27
    invoke-virtual {p1, p3, p2, p0}, Landroid/app/appsearch/AppSearchManager;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda2;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 13
    return-void
.end method

.method public final getSessionAsync()Lcom/android/internal/infra/AndroidFuture;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 3
    new-instance v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;-><init>(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
