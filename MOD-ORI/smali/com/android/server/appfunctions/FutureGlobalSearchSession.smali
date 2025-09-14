.class public final Lcom/android/server/appfunctions/FutureGlobalSearchSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 12
    .line 13
    new-instance p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, p0}, Landroid/app/appsearch/AppSearchManager;->createGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 18
    .line 19
    .line 20
    return-void
.end method
