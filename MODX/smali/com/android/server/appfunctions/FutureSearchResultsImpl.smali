.class public final Lcom/android/server/appfunctions/FutureSearchResultsImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mSearchResults:Landroid/app/appsearch/SearchResults;


# direct methods
.method public constructor <init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    .line 6
    iput-object p2, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8
    return-void
.end method

.method public static failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_2

    .line 8
    const/4 v1, 0x4

    .line 9
    if-eq v0, v1, :cond_1

    .line 11
    const/16 v1, 0x8

    .line 13
    if-eq v0, v1, :cond_0

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 27
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 37
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/SearchResults;->close()V

    .line 6
    return-void
.end method

.method public final getNextPage()Lcom/android/internal/infra/AndroidFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 3
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mSearchResults:Landroid/app/appsearch/SearchResults;

    .line 8
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 10
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    .line 12
    invoke-direct {v2, v0}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 15
    invoke-virtual {v1, p0, v2}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 18
    new-instance p0, Lcom/android/server/appfunctions/FutureSearchResultsImpl$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
