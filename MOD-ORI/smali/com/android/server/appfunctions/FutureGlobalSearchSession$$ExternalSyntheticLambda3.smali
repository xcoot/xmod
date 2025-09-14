.class public final synthetic Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    .line 2
    .line 3
    check-cast p1, Landroid/app/appsearch/SearchResults;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/appfunctions/FutureSearchResultsImpl;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    invoke-direct {v0, p1, p0}, Lcom/android/server/appfunctions/FutureSearchResultsImpl;-><init>(Landroid/app/appsearch/SearchResults;Ljava/util/concurrent/Executor;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
