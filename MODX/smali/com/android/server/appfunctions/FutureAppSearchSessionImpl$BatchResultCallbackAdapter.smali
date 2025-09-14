.class public final Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final mFuture:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 6
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final onSystemError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;->mFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6
    return-void
.end method
