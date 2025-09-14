.class public final Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Exception;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
