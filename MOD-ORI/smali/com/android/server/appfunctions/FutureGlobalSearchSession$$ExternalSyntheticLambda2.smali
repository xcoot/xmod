.class public final synthetic Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/app/appsearch/SearchSpec;


# direct methods
.method public synthetic constructor <init>(Landroid/app/appsearch/SearchSpec;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;->f$1:Landroid/app/appsearch/SearchSpec;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda2;->f$1:Landroid/app/appsearch/SearchSpec;

    .line 4
    .line 5
    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p0}, Landroid/app/appsearch/GlobalSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
