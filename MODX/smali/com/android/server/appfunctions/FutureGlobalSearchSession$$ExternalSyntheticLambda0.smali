.class public final synthetic Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/app/appsearch/observer/ObserverSpec;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:Landroid/app/appsearch/observer/ObserverCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "android"

    .line 6
    iput-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/observer/ObserverSpec;

    .line 10
    iput-object p2, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p3, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$3:Landroid/app/appsearch/observer/ObserverCallback;

    .line 14
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/observer/ObserverSpec;

    .line 5
    iget-object v2, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    .line 7
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;->f$3:Landroid/app/appsearch/observer/ObserverCallback;

    .line 9
    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    .line 11
    :try_start_0
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/appsearch/GlobalSearchSession;->registerObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Landroid/app/appsearch/observer/ObserverCallback;)V

    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    .line 18
    move-result-object p0
    :try_end_0
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    throw p1
.end method
