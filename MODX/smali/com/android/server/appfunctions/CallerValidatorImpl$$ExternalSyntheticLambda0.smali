.class public final synthetic Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 3
    check-cast p1, Landroid/app/appsearch/AppSearchBatchResult;

    .line 5
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/app/appsearch/GenericDocument;

    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 32
    new-instance v0, Lcom/android/server/appfunctions/AppSearchException;

    .line 34
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 37
    move-result v1

    .line 38
    const-string v2, "Unable to retrieve document with id: "

    .line 40
    const-string v3, " due to "

    .line 42
    invoke-static {v2, p0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v0, v1, p0}, Lcom/android/server/appfunctions/AppSearchException;-><init>(ILjava/lang/String;)V

    .line 60
    throw v0
.end method
